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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50),
    description text NOT NULL,
    distance text,
    constellation text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50),
    distance_from_earth numeric(10,2) NOT NULL,
    description text NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50),
    description text NOT NULL,
    is_spherical boolean,
    age_in_millions_of_years integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: rocket; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.rocket (
    name character varying(50) NOT NULL,
    rocket_id integer NOT NULL,
    details text
);


ALTER TABLE public.rocket OWNER TO freecodecamp;

--
-- Name: rocket_rocket_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.rocket_rocket_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rocket_rocket_id_seq OWNER TO freecodecamp;

--
-- Name: rocket_rocket_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.rocket_rocket_id_seq OWNED BY public.rocket.rocket_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50),
    description text NOT NULL,
    is_spherical boolean,
    galaxy_id integer NOT NULL,
    age_in_millions_of_years integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: rocket rocket_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocket ALTER COLUMN rocket_id SET DEFAULT nextval('public.rocket_rocket_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'description_Andromeda', '765kpc', NULL);
INSERT INTO public.galaxy VALUES (2, 'Antennae', 'description_Antennae', '45Mly/65Mly', NULL);
INSERT INTO public.galaxy VALUES (3, 'Backward', 'description_Backward', '200Mly', NULL);
INSERT INTO public.galaxy VALUES (4, 'Butterfly', 'description_Butterfly', '62Mly', NULL);
INSERT INTO public.galaxy VALUES (6, 'Cigar', 'description_Cigar', '11.4-12.4Mly', NULL);
INSERT INTO public.galaxy VALUES (5, 'Black Eye', 'description_Black', '17.3Mly', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 1.00, 'description_moon1', 11);
INSERT INTO public.moon VALUES (2, 'moon2', 11.00, 'description_moon2', 11);
INSERT INTO public.moon VALUES (4, 'moon3', 111.00, 'description_moon3', 13);
INSERT INTO public.moon VALUES (5, 'moon4', 12.00, 'description_moon4', 12);
INSERT INTO public.moon VALUES (6, 'moo年', 13.00, 'description_moon5', 1);
INSERT INTO public.moon VALUES (7, 'moon6', 14.00, 'description_moon6', 1);
INSERT INTO public.moon VALUES (8, 'moon7', 15.00, 'description_moon7', 3);
INSERT INTO public.moon VALUES (9, 'moon8', 16.00, 'description_moon8', 3);
INSERT INTO public.moon VALUES (10, 'moon9', 17.00, 'description_moon9', 5);
INSERT INTO public.moon VALUES (11, 'moon10', 18.00, 'description_moon10', 12);
INSERT INTO public.moon VALUES (12, 'moon11', 28.00, 'description_moon11', 12);
INSERT INTO public.moon VALUES (13, 'moon12', 38.00, 'description_moon12', 6);
INSERT INTO public.moon VALUES (14, 'moon13', 48.00, 'description_moon13', 1);
INSERT INTO public.moon VALUES (16, 'moon14', 58.00, 'description_moon14', 8);
INSERT INTO public.moon VALUES (17, 'moon15', 558.00, 'description_moon15', 8);
INSERT INTO public.moon VALUES (18, 'moon16', 568.00, 'description_moon16', 8);
INSERT INTO public.moon VALUES (19, 'moon17', 768.00, 'description_moon17', 4);
INSERT INTO public.moon VALUES (20, 'moon18', 788.00, 'description_moon18', 3);
INSERT INTO public.moon VALUES (21, 'moon19', 798.00, 'description_moon19', 3);
INSERT INTO public.moon VALUES (22, 'moon20', 298.00, 'description_moon20', 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 'description_planet1', false, 10, 3);
INSERT INTO public.planet VALUES (3, 'planet2', 'description_planet2', false, 20, 7);
INSERT INTO public.planet VALUES (4, 'planet3', 'description_planet3', true, 10, 5);
INSERT INTO public.planet VALUES (5, 'planet4', 'description_planet4', true, 50, 4);
INSERT INTO public.planet VALUES (6, 'planet5', 'description_planet5', false, 50, 1);
INSERT INTO public.planet VALUES (8, 'planet6', 'description_planet6', false, 100, 3);
INSERT INTO public.planet VALUES (9, 'planet7', 'description_planet7', false, 100, 3);
INSERT INTO public.planet VALUES (10, 'planet8', 'description_planet8', false, 100, 4);
INSERT INTO public.planet VALUES (11, 'planet9', 'description_planet9', false, 100, 7);
INSERT INTO public.planet VALUES (12, 'planet10', 'description_planet10', false, 100, 4);
INSERT INTO public.planet VALUES (13, 'planet11', 'description_planet11', false, 100, 3);
INSERT INTO public.planet VALUES (14, 'planet12', 'description_planet12', true, 100, 5);


--
-- Data for Name: rocket; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.rocket VALUES ('rocket1', 1, 'd1');
INSERT INTO public.rocket VALUES ('rocket2', 2, 'd2');
INSERT INTO public.rocket VALUES ('rocket3', 3, 'd3');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 'description_star1', true, 2, 100);
INSERT INTO public.star VALUES (3, 'star2', 'description_star2', true, 3, 100);
INSERT INTO public.star VALUES (4, 'star3', 'description_star3', false, 5, 300);
INSERT INTO public.star VALUES (5, 'star4', 'description_star4', false, 4, 500);
INSERT INTO public.star VALUES (6, 'star5', 'description_star5', false, 5, 600);
INSERT INTO public.star VALUES (7, 'star6', 'description_star6', false, 1, 800);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: rocket_rocket_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.rocket_rocket_id_seq', 3, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_galaxy_id_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key1 UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: rocket rocket_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocket
    ADD CONSTRAINT rocket_name_key UNIQUE (name);


--
-- Name: rocket rocket_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocket
    ADD CONSTRAINT rocket_pkey PRIMARY KEY (rocket_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

