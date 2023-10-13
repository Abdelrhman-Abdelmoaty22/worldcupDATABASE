--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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
    round character varying(255) NOT NULL,
    winner_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    opponent_id integer NOT NULL,
    year integer NOT NULL
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
    name character varying(255) NOT NULL
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

INSERT INTO public.games VALUES (1, 'Final', 811, 4, 2, 812, 2018);
INSERT INTO public.games VALUES (2, 'Third Place', 813, 2, 0, 814, 2018);
INSERT INTO public.games VALUES (3, 'Semi-Final', 812, 2, 1, 814, 2018);
INSERT INTO public.games VALUES (4, 'Semi-Final', 811, 1, 0, 813, 2018);
INSERT INTO public.games VALUES (5, 'Quarter-Final', 812, 3, 2, 815, 2018);
INSERT INTO public.games VALUES (6, 'Quarter-Final', 814, 2, 0, 816, 2018);
INSERT INTO public.games VALUES (7, 'Quarter-Final', 813, 2, 1, 817, 2018);
INSERT INTO public.games VALUES (8, 'Quarter-Final', 811, 2, 0, 818, 2018);
INSERT INTO public.games VALUES (9, 'Eighth-Final', 814, 2, 1, 819, 2018);
INSERT INTO public.games VALUES (10, 'Eighth-Final', 816, 1, 0, 820, 2018);
INSERT INTO public.games VALUES (11, 'Eighth-Final', 813, 3, 2, 821, 2018);
INSERT INTO public.games VALUES (12, 'Eighth-Final', 817, 2, 0, 822, 2018);
INSERT INTO public.games VALUES (13, 'Eighth-Final', 812, 2, 1, 823, 2018);
INSERT INTO public.games VALUES (14, 'Eighth-Final', 815, 2, 1, 824, 2018);
INSERT INTO public.games VALUES (15, 'Eighth-Final', 818, 2, 1, 825, 2018);
INSERT INTO public.games VALUES (16, 'Eighth-Final', 811, 4, 3, 826, 2018);
INSERT INTO public.games VALUES (17, 'Final', 827, 1, 0, 826, 2014);
INSERT INTO public.games VALUES (18, 'Third Place', 828, 3, 0, 817, 2014);
INSERT INTO public.games VALUES (19, 'Semi-Final', 826, 1, 0, 828, 2014);
INSERT INTO public.games VALUES (20, 'Semi-Final', 827, 7, 1, 817, 2014);
INSERT INTO public.games VALUES (21, 'Quarter-Final', 828, 1, 0, 829, 2014);
INSERT INTO public.games VALUES (22, 'Quarter-Final', 826, 1, 0, 813, 2014);
INSERT INTO public.games VALUES (23, 'Quarter-Final', 817, 2, 1, 819, 2014);
INSERT INTO public.games VALUES (24, 'Quarter-Final', 827, 1, 0, 811, 2014);
INSERT INTO public.games VALUES (25, 'Eighth-Final', 817, 2, 1, 830, 2014);
INSERT INTO public.games VALUES (26, 'Eighth-Final', 819, 2, 0, 818, 2014);
INSERT INTO public.games VALUES (27, 'Eighth-Final', 811, 2, 0, 831, 2014);
INSERT INTO public.games VALUES (28, 'Eighth-Final', 827, 2, 1, 832, 2014);
INSERT INTO public.games VALUES (29, 'Eighth-Final', 828, 2, 1, 822, 2014);
INSERT INTO public.games VALUES (30, 'Eighth-Final', 829, 2, 1, 833, 2014);
INSERT INTO public.games VALUES (31, 'Eighth-Final', 826, 1, 0, 820, 2014);
INSERT INTO public.games VALUES (32, 'Eighth-Final', 813, 2, 1, 834, 2014);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (811, 'France');
INSERT INTO public.teams VALUES (812, 'Croatia');
INSERT INTO public.teams VALUES (813, 'Belgium');
INSERT INTO public.teams VALUES (814, 'England');
INSERT INTO public.teams VALUES (815, 'Russia');
INSERT INTO public.teams VALUES (816, 'Sweden');
INSERT INTO public.teams VALUES (817, 'Brazil');
INSERT INTO public.teams VALUES (818, 'Uruguay');
INSERT INTO public.teams VALUES (819, 'Colombia');
INSERT INTO public.teams VALUES (820, 'Switzerland');
INSERT INTO public.teams VALUES (821, 'Japan');
INSERT INTO public.teams VALUES (822, 'Mexico');
INSERT INTO public.teams VALUES (823, 'Denmark');
INSERT INTO public.teams VALUES (824, 'Spain');
INSERT INTO public.teams VALUES (825, 'Portugal');
INSERT INTO public.teams VALUES (826, 'Argentina');
INSERT INTO public.teams VALUES (827, 'Germany');
INSERT INTO public.teams VALUES (828, 'Netherlands');
INSERT INTO public.teams VALUES (829, 'Costa Rica');
INSERT INTO public.teams VALUES (830, 'Chile');
INSERT INTO public.teams VALUES (831, 'Nigeria');
INSERT INTO public.teams VALUES (832, 'Algeria');
INSERT INTO public.teams VALUES (833, 'Greece');
INSERT INTO public.teams VALUES (834, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 834, true);


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

