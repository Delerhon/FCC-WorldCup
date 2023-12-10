#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
file=games.csv
#file=games_test.csv
echo $($PSQL "TRUNCATE TABLE games, teams")


insert_team () {
  echo $($PSQL "INSERT INTO teams(name) VALUES('$*')")
}

get_team_id () {
  ID=$($PSQL "SELECT team_id FROM teams WHERE name='$*'")

  if [[ -z $ID  ]]
  then #if id was not found
    insertResponse=$(insert_team $*)
    if [[ $insertResponse == "INSERT 0 1" ]]
    then
      echo $(get_team_id $*)
    fi
  else # if was found
    #echo "Found team id: " $ID; # for debugging ### delete later
    echo $ID
  fi
}

cat $file | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS

do
  if [[ $YEAR != "year" ]] # Do nothing with header_row
  then
    ## WINNER -> WINNER_ID
    #echo $WINNER
    WINNER_ID=$(get_team_id $WINNER)
    #echo winner_id: $WINNER_ID
  
    ## OPPONENT_ID
    OPPONENT_ID=$(get_team_id $OPPONENT)
    #echo opponent_id: $OPPONENT_ID

    $PSQL "INSERT INTO 
            games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) 
            VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)"
          
  fi
done
