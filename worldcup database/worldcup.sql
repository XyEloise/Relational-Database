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
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(40) NOT NULL,
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
    name character varying(40) NOT NULL
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

INSERT INTO public.games VALUES (316, 317, 193, 2018, 'Final', 4, 2);
INSERT INTO public.games VALUES (318, 319, 194, 2018, 'Third Place', 2, 0);
INSERT INTO public.games VALUES (317, 319, 195, 2018, 'Semi-Final', 2, 1);
INSERT INTO public.games VALUES (316, 318, 196, 2018, 'Semi-Final', 1, 0);
INSERT INTO public.games VALUES (317, 320, 197, 2018, 'Quarter-Final', 3, 2);
INSERT INTO public.games VALUES (319, 321, 198, 2018, 'Quarter-Final', 2, 0);
INSERT INTO public.games VALUES (318, 322, 199, 2018, 'Quarter-Final', 2, 1);
INSERT INTO public.games VALUES (316, 323, 200, 2018, 'Quarter-Final', 2, 0);
INSERT INTO public.games VALUES (319, 324, 201, 2018, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (321, 325, 202, 2018, 'Eighth-Final', 1, 0);
INSERT INTO public.games VALUES (318, 326, 203, 2018, 'Eighth-Final', 3, 2);
INSERT INTO public.games VALUES (322, 327, 204, 2018, 'Eighth-Final', 2, 0);
INSERT INTO public.games VALUES (317, 328, 205, 2018, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (320, 329, 206, 2018, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (323, 330, 207, 2018, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (316, 331, 208, 2018, 'Eighth-Final', 4, 3);
INSERT INTO public.games VALUES (332, 331, 209, 2014, 'Final', 1, 0);
INSERT INTO public.games VALUES (333, 322, 210, 2014, 'Third Place', 3, 0);
INSERT INTO public.games VALUES (331, 333, 211, 2014, 'Semi-Final', 1, 0);
INSERT INTO public.games VALUES (332, 322, 212, 2014, 'Semi-Final', 7, 1);
INSERT INTO public.games VALUES (333, 334, 213, 2014, 'Quarter-Final', 1, 0);
INSERT INTO public.games VALUES (331, 318, 214, 2014, 'Quarter-Final', 1, 0);
INSERT INTO public.games VALUES (322, 324, 215, 2014, 'Quarter-Final', 2, 1);
INSERT INTO public.games VALUES (332, 316, 216, 2014, 'Quarter-Final', 1, 0);
INSERT INTO public.games VALUES (322, 335, 217, 2014, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (324, 323, 218, 2014, 'Eighth-Final', 2, 0);
INSERT INTO public.games VALUES (316, 336, 219, 2014, 'Eighth-Final', 2, 0);
INSERT INTO public.games VALUES (332, 337, 220, 2014, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (333, 327, 221, 2014, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (334, 338, 222, 2014, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (331, 325, 223, 2014, 'Eighth-Final', 1, 0);
INSERT INTO public.games VALUES (318, 339, 224, 2014, 'Eighth-Final', 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (316, 'France');
INSERT INTO public.teams VALUES (317, 'Croatia');
INSERT INTO public.teams VALUES (318, 'Belgium');
INSERT INTO public.teams VALUES (319, 'England');
INSERT INTO public.teams VALUES (320, 'Russia');
INSERT INTO public.teams VALUES (321, 'Sweden');
INSERT INTO public.teams VALUES (322, 'Brazil');
INSERT INTO public.teams VALUES (323, 'Uruguay');
INSERT INTO public.teams VALUES (324, 'Colombia');
INSERT INTO public.teams VALUES (325, 'Switzerland');
INSERT INTO public.teams VALUES (326, 'Japan');
INSERT INTO public.teams VALUES (327, 'Mexico');
INSERT INTO public.teams VALUES (328, 'Denmark');
INSERT INTO public.teams VALUES (329, 'Spain');
INSERT INTO public.teams VALUES (330, 'Portugal');
INSERT INTO public.teams VALUES (331, 'Argentina');
INSERT INTO public.teams VALUES (332, 'Germany');
INSERT INTO public.teams VALUES (333, 'Netherlands');
INSERT INTO public.teams VALUES (334, 'Costa Rica');
INSERT INTO public.teams VALUES (335, 'Chile');
INSERT INTO public.teams VALUES (336, 'Nigeria');
INSERT INTO public.teams VALUES (337, 'Algeria');
INSERT INTO public.teams VALUES (338, 'Greece');
INSERT INTO public.teams VALUES (339, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 224, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 339, true);


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

