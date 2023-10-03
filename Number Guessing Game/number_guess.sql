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

DROP DATABASE number_guess_db;
--
-- Name: number_guess_db; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess_db OWNER TO freecodecamp;

\connect number_guess_db

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
-- Name: info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.info (
    name character varying(40),
    id integer NOT NULL,
    best_game integer,
    games_played integer
);


ALTER TABLE public.info OWNER TO freecodecamp;

--
-- Name: info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.info_id_seq OWNER TO freecodecamp;

--
-- Name: info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.info_id_seq OWNED BY public.info.id;


--
-- Name: info id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info ALTER COLUMN id SET DEFAULT nextval('public.info_id_seq'::regclass);


--
-- Data for Name: info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.info VALUES ('user_1696302120747', 81, 297, 5);
INSERT INTO public.info VALUES ('user_1696301996370', 79, 297, 5);
INSERT INTO public.info VALUES ('user_1696301875048', 71, 297, 5);
INSERT INTO public.info VALUES ('user_1696301852606', 69, 297, 5);
INSERT INTO public.info VALUES ('user_1696301705431', 63, 297, 5);
INSERT INTO public.info VALUES ('user_1696301671673', 57, 297, 5);
INSERT INTO public.info VALUES ('user_1696301646687', 53, 297, 5);
INSERT INTO public.info VALUES ('user_1696301511834', 51, 297, 5);
INSERT INTO public.info VALUES ('user_1696301448016', 49, 297, 5);
INSERT INTO public.info VALUES ('a', 44, 297, 5);
INSERT INTO public.info VALUES ('user_1696301313286', 45, 297, 5);
INSERT INTO public.info VALUES ('user_1696301313285', 46, 297, 5);
INSERT INTO public.info VALUES ('user_1696301368075', 47, 297, 5);
INSERT INTO public.info VALUES ('user_1696301368074', 48, 297, 5);
INSERT INTO public.info VALUES ('user_1696301448015', 50, 297, 5);
INSERT INTO public.info VALUES ('user_1696301511833', 52, 297, 5);
INSERT INTO public.info VALUES ('user_1696301646686', 54, 297, 5);
INSERT INTO public.info VALUES ('user_1696301654244', 55, 297, 5);
INSERT INTO public.info VALUES ('user_1696301917885', 73, 297, 5);
INSERT INTO public.info VALUES ('user_1696301952598', 75, 297, 5);
INSERT INTO public.info VALUES ('user_1696301974695', 77, 297, 5);
INSERT INTO public.info VALUES ('user_1696301654243', 56, 297, 5);
INSERT INTO public.info VALUES ('user_1696301671672', 58, 297, 5);
INSERT INTO public.info VALUES ('user_1696301678575', 59, 297, 5);
INSERT INTO public.info VALUES ('user_1696301678574', 60, 297, 5);
INSERT INTO public.info VALUES ('user_1696301693693', 61, 297, 5);
INSERT INTO public.info VALUES ('user_1696301693692', 62, 297, 5);
INSERT INTO public.info VALUES ('user_1696301705430', 64, 297, 5);
INSERT INTO public.info VALUES ('user_1696301729924', 65, 297, 5);
INSERT INTO public.info VALUES ('user_1696301729923', 66, 297, 5);
INSERT INTO public.info VALUES ('user_1696301749864', 67, 297, 5);
INSERT INTO public.info VALUES ('user_1696302120746', 82, 297, 5);
INSERT INTO public.info VALUES ('user_1696302144365', 86, 297, 5);
INSERT INTO public.info VALUES ('user_1696302150529', 87, 297, 5);
INSERT INTO public.info VALUES ('user_1696302150528', 88, 297, 5);
INSERT INTO public.info VALUES ('user_1696301749863', 68, 297, 5);
INSERT INTO public.info VALUES ('user_1696301852605', 70, 297, 5);
INSERT INTO public.info VALUES ('user_1696302133246', 84, 297, 5);
INSERT INTO public.info VALUES ('user_1696301875047', 72, 297, 5);
INSERT INTO public.info VALUES ('user_1696301917884', 74, 297, 5);
INSERT INTO public.info VALUES ('user_1696301952597', 76, 297, 5);
INSERT INTO public.info VALUES ('user_1696301974694', 78, 297, 5);
INSERT INTO public.info VALUES ('user_1696301996369', 80, 297, 5);
INSERT INTO public.info VALUES ('user_1696302133247', 83, 297, 5);
INSERT INTO public.info VALUES ('user_1696302144366', 85, 297, 5);


--
-- Name: info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.info_id_seq', 88, true);


--
-- Name: info info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info
    ADD CONSTRAINT info_name_key UNIQUE (name);


--
-- Name: info info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info
    ADD CONSTRAINT info_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

