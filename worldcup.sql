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
    round character varying(30) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
    name character varying(30) NOT NULL
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

INSERT INTO public.games VALUES (194, 2018, 'Final', 4, 2, 383, 384);
INSERT INTO public.games VALUES (195, 2018, 'Third Place', 2, 0, 385, 386);
INSERT INTO public.games VALUES (196, 2018, 'Semi-Final', 2, 1, 384, 386);
INSERT INTO public.games VALUES (197, 2018, 'Semi-Final', 1, 0, 383, 385);
INSERT INTO public.games VALUES (198, 2018, 'Quarter-Final', 3, 2, 384, 387);
INSERT INTO public.games VALUES (199, 2018, 'Quarter-Final', 2, 0, 386, 388);
INSERT INTO public.games VALUES (200, 2018, 'Quarter-Final', 2, 1, 385, 389);
INSERT INTO public.games VALUES (201, 2018, 'Quarter-Final', 2, 0, 383, 390);
INSERT INTO public.games VALUES (202, 2018, 'Eighth-Final', 2, 1, 386, 391);
INSERT INTO public.games VALUES (203, 2018, 'Eighth-Final', 1, 0, 388, 392);
INSERT INTO public.games VALUES (204, 2018, 'Eighth-Final', 3, 2, 385, 393);
INSERT INTO public.games VALUES (205, 2018, 'Eighth-Final', 2, 0, 389, 394);
INSERT INTO public.games VALUES (206, 2018, 'Eighth-Final', 2, 1, 384, 395);
INSERT INTO public.games VALUES (207, 2018, 'Eighth-Final', 2, 1, 387, 396);
INSERT INTO public.games VALUES (208, 2018, 'Eighth-Final', 2, 1, 390, 397);
INSERT INTO public.games VALUES (209, 2018, 'Eighth-Final', 4, 3, 383, 398);
INSERT INTO public.games VALUES (210, 2014, 'Final', 1, 0, 399, 398);
INSERT INTO public.games VALUES (211, 2014, 'Third Place', 3, 0, 400, 389);
INSERT INTO public.games VALUES (212, 2014, 'Semi-Final', 1, 0, 398, 400);
INSERT INTO public.games VALUES (213, 2014, 'Semi-Final', 7, 1, 399, 389);
INSERT INTO public.games VALUES (214, 2014, 'Quarter-Final', 1, 0, 400, 401);
INSERT INTO public.games VALUES (215, 2014, 'Quarter-Final', 1, 0, 398, 385);
INSERT INTO public.games VALUES (216, 2014, 'Quarter-Final', 2, 1, 389, 391);
INSERT INTO public.games VALUES (217, 2014, 'Quarter-Final', 1, 0, 399, 383);
INSERT INTO public.games VALUES (218, 2014, 'Eighth-Final', 2, 1, 389, 402);
INSERT INTO public.games VALUES (219, 2014, 'Eighth-Final', 2, 0, 391, 390);
INSERT INTO public.games VALUES (220, 2014, 'Eighth-Final', 2, 0, 383, 403);
INSERT INTO public.games VALUES (221, 2014, 'Eighth-Final', 2, 1, 399, 404);
INSERT INTO public.games VALUES (222, 2014, 'Eighth-Final', 2, 1, 400, 394);
INSERT INTO public.games VALUES (223, 2014, 'Eighth-Final', 2, 1, 401, 405);
INSERT INTO public.games VALUES (224, 2014, 'Eighth-Final', 1, 0, 398, 392);
INSERT INTO public.games VALUES (225, 2014, 'Eighth-Final', 2, 1, 385, 406);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (383, 'France');
INSERT INTO public.teams VALUES (384, 'Croatia');
INSERT INTO public.teams VALUES (385, 'Belgium');
INSERT INTO public.teams VALUES (386, 'England');
INSERT INTO public.teams VALUES (387, 'Russia');
INSERT INTO public.teams VALUES (388, 'Sweden');
INSERT INTO public.teams VALUES (389, 'Brazil');
INSERT INTO public.teams VALUES (390, 'Uruguay');
INSERT INTO public.teams VALUES (391, 'Colombia');
INSERT INTO public.teams VALUES (392, 'Switzerland');
INSERT INTO public.teams VALUES (393, 'Japan');
INSERT INTO public.teams VALUES (394, 'Mexico');
INSERT INTO public.teams VALUES (395, 'Denmark');
INSERT INTO public.teams VALUES (396, 'Spain');
INSERT INTO public.teams VALUES (397, 'Portugal');
INSERT INTO public.teams VALUES (398, 'Argentina');
INSERT INTO public.teams VALUES (399, 'Germany');
INSERT INTO public.teams VALUES (400, 'Netherlands');
INSERT INTO public.teams VALUES (401, 'Costa Rica');
INSERT INTO public.teams VALUES (402, 'Chile');
INSERT INTO public.teams VALUES (403, 'Nigeria');
INSERT INTO public.teams VALUES (404, 'Algeria');
INSERT INTO public.teams VALUES (405, 'Greece');
INSERT INTO public.teams VALUES (406, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 225, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 406, true);


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

