--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    round character varying(50) NOT NULL,
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
    name character varying(50) NOT NULL
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

INSERT INTO public.games VALUES (1, 2018, 'Final', 131, 132, 4, 2);
INSERT INTO public.games VALUES (2, 2018, 'Third Place', 133, 134, 2, 0);
INSERT INTO public.games VALUES (3, 2018, 'Semi-Final', 132, 134, 2, 1);
INSERT INTO public.games VALUES (4, 2018, 'Semi-Final', 131, 133, 1, 0);
INSERT INTO public.games VALUES (5, 2018, 'Quarter-Final', 132, 140, 3, 2);
INSERT INTO public.games VALUES (6, 2018, 'Quarter-Final', 134, 142, 2, 0);
INSERT INTO public.games VALUES (7, 2018, 'Quarter-Final', 133, 144, 2, 1);
INSERT INTO public.games VALUES (8, 2018, 'Quarter-Final', 131, 146, 2, 0);
INSERT INTO public.games VALUES (9, 2018, 'Eighth-Final', 134, 148, 2, 1);
INSERT INTO public.games VALUES (10, 2018, 'Eighth-Final', 142, 150, 1, 0);
INSERT INTO public.games VALUES (11, 2018, 'Eighth-Final', 133, 152, 3, 2);
INSERT INTO public.games VALUES (12, 2018, 'Eighth-Final', 144, 154, 2, 0);
INSERT INTO public.games VALUES (13, 2018, 'Eighth-Final', 132, 156, 2, 1);
INSERT INTO public.games VALUES (14, 2018, 'Eighth-Final', 140, 158, 2, 1);
INSERT INTO public.games VALUES (15, 2018, 'Eighth-Final', 146, 160, 2, 1);
INSERT INTO public.games VALUES (16, 2018, 'Eighth-Final', 131, 162, 4, 3);
INSERT INTO public.games VALUES (17, 2014, 'Final', 163, 162, 1, 0);
INSERT INTO public.games VALUES (18, 2014, 'Third Place', 165, 144, 3, 0);
INSERT INTO public.games VALUES (19, 2014, 'Semi-Final', 162, 165, 1, 0);
INSERT INTO public.games VALUES (20, 2014, 'Semi-Final', 163, 144, 7, 1);
INSERT INTO public.games VALUES (21, 2014, 'Quarter-Final', 165, 172, 1, 0);
INSERT INTO public.games VALUES (22, 2014, 'Quarter-Final', 162, 133, 1, 0);
INSERT INTO public.games VALUES (23, 2014, 'Quarter-Final', 144, 148, 2, 1);
INSERT INTO public.games VALUES (24, 2014, 'Quarter-Final', 163, 131, 1, 0);
INSERT INTO public.games VALUES (25, 2014, 'Eighth-Final', 144, 180, 2, 1);
INSERT INTO public.games VALUES (26, 2014, 'Eighth-Final', 148, 146, 2, 0);
INSERT INTO public.games VALUES (27, 2014, 'Eighth-Final', 131, 184, 2, 0);
INSERT INTO public.games VALUES (28, 2014, 'Eighth-Final', 163, 186, 2, 1);
INSERT INTO public.games VALUES (29, 2014, 'Eighth-Final', 165, 154, 2, 1);
INSERT INTO public.games VALUES (30, 2014, 'Eighth-Final', 172, 190, 2, 1);
INSERT INTO public.games VALUES (31, 2014, 'Eighth-Final', 162, 150, 1, 0);
INSERT INTO public.games VALUES (32, 2014, 'Eighth-Final', 133, 194, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (131, 'France');
INSERT INTO public.teams VALUES (132, 'Croatia');
INSERT INTO public.teams VALUES (133, 'Belgium');
INSERT INTO public.teams VALUES (134, 'England');
INSERT INTO public.teams VALUES (140, 'Russia');
INSERT INTO public.teams VALUES (142, 'Sweden');
INSERT INTO public.teams VALUES (144, 'Brazil');
INSERT INTO public.teams VALUES (146, 'Uruguay');
INSERT INTO public.teams VALUES (148, 'Colombia');
INSERT INTO public.teams VALUES (150, 'Switzerland');
INSERT INTO public.teams VALUES (152, 'Japan');
INSERT INTO public.teams VALUES (154, 'Mexico');
INSERT INTO public.teams VALUES (156, 'Denmark');
INSERT INTO public.teams VALUES (158, 'Spain');
INSERT INTO public.teams VALUES (160, 'Portugal');
INSERT INTO public.teams VALUES (162, 'Argentina');
INSERT INTO public.teams VALUES (163, 'Germany');
INSERT INTO public.teams VALUES (165, 'Netherlands');
INSERT INTO public.teams VALUES (172, 'Costa Rica');
INSERT INTO public.teams VALUES (180, 'Chile');
INSERT INTO public.teams VALUES (184, 'Nigeria');
INSERT INTO public.teams VALUES (186, 'Algeria');
INSERT INTO public.teams VALUES (190, 'Greece');
INSERT INTO public.teams VALUES (194, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 194, true);


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
-- Name: games fk_opponent_team; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent_team FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner_team; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner_team FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

