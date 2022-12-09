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
-- Name: atmosfera; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.atmosfera (
    atmosfera_id integer NOT NULL,
    weight integer NOT NULL,
    name character varying(1)
);


ALTER TABLE public.atmosfera OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    is_spherical boolean,
    distance_from_earth numeric,
    has_life boolean,
    age_in_millions_of_years integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    is_spherical boolean,
    distance_from_earth numeric,
    has_life boolean,
    age_in_millions_of_years integer,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    is_spherical boolean,
    distance_from_earth numeric,
    has_life boolean,
    age_in_millions_of_years integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    is_spherical boolean,
    distance_from_earth numeric,
    has_life boolean,
    age_in_millions_of_years integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: atmosfera; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.atmosfera VALUES (1, 1, '1');
INSERT INTO public.atmosfera VALUES (2, 2, '2');
INSERT INTO public.atmosfera VALUES (3, 3, '3');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'via lactea', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'andromeda', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'pegaso', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'acuario', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'carina', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'draco', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'luna', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'fobos', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (3, 'deimos', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (4, 'Melis', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (5, 'adrastea', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'amaltea', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (7, 'tebe', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (8, 'io', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (9, 'europa', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (10, 'ganimedes', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (11, 'calisto', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (12, 'temisto', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (13, 'leda', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (14, 'himalia', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (15, 'ersa', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (16, 'pandia', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (17, 'lisitea', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (18, 'elara', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (19, 'dia', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (20, 'carpo', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (21, 'valutudo', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (22, 'euroria', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (23, 'aufeme', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (24, 'eurante', NULL, NULL, NULL, NULL, NULL, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'tierra', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'venus', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'marte', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'mercurio', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'jupiter', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'saturno', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'urano', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'neptuno', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'arcadia', NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (10, 'laconia', NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (11, 'wolf 111', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (12, 'wolf 222', NULL, NULL, NULL, NULL, NULL, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sol', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'rigel', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'procyon', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'gliese 876', NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (5, 'wolf 940', NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (6, 'trappist-1', NULL, NULL, NULL, NULL, NULL, 4);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 24, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: atmosfera atmosfera_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.atmosfera
    ADD CONSTRAINT atmosfera_id_key UNIQUE (atmosfera_id);


--
-- Name: atmosfera atmosfera_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.atmosfera
    ADD CONSTRAINT atmosfera_pkey PRIMARY KEY (atmosfera_id);


--
-- Name: galaxy constraint_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT constraint_galaxy_id UNIQUE (galaxy_id);


--
-- Name: planet constraint_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT constraint_id UNIQUE (planet_id);


--
-- Name: moon constraint_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT constraint_moon_id UNIQUE (moon_id);


--
-- Name: star constraint_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT constraint_star_id UNIQUE (star_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

