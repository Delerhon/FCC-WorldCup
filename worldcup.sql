--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(20) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (377, 2018, 'Final', 1131, 1132, 4, 2);
INSERT INTO public.games VALUES (378, 2018, 'Third Place', 1133, 1134, 2, 0);
INSERT INTO public.games VALUES (379, 2018, 'Semi-Final', 1132, 1134, 2, 1);
INSERT INTO public.games VALUES (380, 2018, 'Semi-Final', 1131, 1133, 1, 0);
INSERT INTO public.games VALUES (381, 2018, 'Quarter-Final', 1132, 1135, 3, 2);
INSERT INTO public.games VALUES (382, 2018, 'Quarter-Final', 1134, 1136, 2, 0);
INSERT INTO public.games VALUES (383, 2018, 'Quarter-Final', 1133, 1137, 2, 1);
INSERT INTO public.games VALUES (384, 2018, 'Quarter-Final', 1131, 1138, 2, 0);
INSERT INTO public.games VALUES (385, 2018, 'Eighth-Final', 1134, 1139, 2, 1);
INSERT INTO public.games VALUES (386, 2018, 'Eighth-Final', 1136, 1140, 1, 0);
INSERT INTO public.games VALUES (387, 2018, 'Eighth-Final', 1133, 1141, 3, 2);
INSERT INTO public.games VALUES (388, 2018, 'Eighth-Final', 1137, 1142, 2, 0);
INSERT INTO public.games VALUES (389, 2018, 'Eighth-Final', 1132, 1143, 2, 1);
INSERT INTO public.games VALUES (390, 2018, 'Eighth-Final', 1135, 1144, 2, 1);
INSERT INTO public.games VALUES (391, 2018, 'Eighth-Final', 1138, 1145, 2, 1);
INSERT INTO public.games VALUES (392, 2018, 'Eighth-Final', 1131, 1146, 4, 3);
INSERT INTO public.games VALUES (393, 2014, 'Final', 1147, 1146, 1, 0);
INSERT INTO public.games VALUES (394, 2014, 'Third Place', 1148, 1137, 3, 0);
INSERT INTO public.games VALUES (395, 2014, 'Semi-Final', 1146, 1148, 1, 0);
INSERT INTO public.games VALUES (396, 2014, 'Semi-Final', 1147, 1137, 7, 1);
INSERT INTO public.games VALUES (397, 2014, 'Quarter-Final', 1148, 1149, 1, 0);
INSERT INTO public.games VALUES (398, 2014, 'Quarter-Final', 1146, 1133, 1, 0);
INSERT INTO public.games VALUES (399, 2014, 'Quarter-Final', 1137, 1139, 2, 1);
INSERT INTO public.games VALUES (400, 2014, 'Quarter-Final', 1147, 1131, 1, 0);
INSERT INTO public.games VALUES (401, 2014, 'Eighth-Final', 1137, 1150, 2, 1);
INSERT INTO public.games VALUES (402, 2014, 'Eighth-Final', 1139, 1138, 2, 0);
INSERT INTO public.games VALUES (403, 2014, 'Eighth-Final', 1131, 1151, 2, 0);
INSERT INTO public.games VALUES (404, 2014, 'Eighth-Final', 1147, 1152, 2, 1);
INSERT INTO public.games VALUES (405, 2014, 'Eighth-Final', 1148, 1142, 2, 1);
INSERT INTO public.games VALUES (406, 2014, 'Eighth-Final', 1149, 1153, 2, 1);
INSERT INTO public.games VALUES (407, 2014, 'Eighth-Final', 1146, 1140, 1, 0);
INSERT INTO public.games VALUES (408, 2014, 'Eighth-Final', 1133, 1154, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1131, 'France');
INSERT INTO public.teams VALUES (1132, 'Croatia');
INSERT INTO public.teams VALUES (1133, 'Belgium');
INSERT INTO public.teams VALUES (1134, 'England');
INSERT INTO public.teams VALUES (1135, 'Russia');
INSERT INTO public.teams VALUES (1136, 'Sweden');
INSERT INTO public.teams VALUES (1137, 'Brazil');
INSERT INTO public.teams VALUES (1138, 'Uruguay');
INSERT INTO public.teams VALUES (1139, 'Colombia');
INSERT INTO public.teams VALUES (1140, 'Switzerland');
INSERT INTO public.teams VALUES (1141, 'Japan');
INSERT INTO public.teams VALUES (1142, 'Mexico');
INSERT INTO public.teams VALUES (1143, 'Denmark');
INSERT INTO public.teams VALUES (1144, 'Spain');
INSERT INTO public.teams VALUES (1145, 'Portugal');
INSERT INTO public.teams VALUES (1146, 'Argentina');
INSERT INTO public.teams VALUES (1147, 'Germany');
INSERT INTO public.teams VALUES (1148, 'Netherlands');
INSERT INTO public.teams VALUES (1149, 'Costa Rica');
INSERT INTO public.teams VALUES (1150, 'Chile');
INSERT INTO public.teams VALUES (1151, 'Nigeria');
INSERT INTO public.teams VALUES (1152, 'Algeria');
INSERT INTO public.teams VALUES (1153, 'Greece');
INSERT INTO public.teams VALUES (1154, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 408, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1154, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

