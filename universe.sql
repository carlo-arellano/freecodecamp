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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying NOT NULL,
    description text NOT NULL,
    distance_from_earth numeric,
    is_spherical boolean,
    age_in_million_years integer,
    has_life boolean,
    year_identified integer,
    galaxy_id integer
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text NOT NULL,
    distance_from_earth numeric,
    galaxy_types character varying(60),
    age_in_million_years integer,
    has_life boolean,
    is_spherical boolean,
    year_identified integer
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
    name character varying(60) NOT NULL,
    description text NOT NULL,
    distance_from_earth numeric,
    is_spherical boolean,
    age_in_million_years integer,
    has_life boolean,
    year_identified integer,
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
    name character varying(60) NOT NULL,
    description text NOT NULL,
    planet_types character varying(60),
    has_life boolean,
    age_in_million_years integer,
    is_spherical boolean,
    year_identified integer,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text NOT NULL,
    is_spherical boolean,
    age_in_million_years numeric,
    distance_from_earth integer,
    has_life boolean,
    year_identified integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Comet 1', 'Lorep ipsum', 123, true, 456, false, 1990, 1);
INSERT INTO public.comet VALUES (2, 'Comet 2', 'Lorep ipsum', 123, true, 456, false, 1990, 2);
INSERT INTO public.comet VALUES (3, 'Comet 3', 'Lorep ipsum', 123, true, 456, false, 1990, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy 1', 'Lorep ipsum', 123, 'Type 1', 123, false, true, 1950);
INSERT INTO public.galaxy VALUES (2, 'Galaxy 2', 'Lorep ipsum', 456, 'Type 2', 123, false, true, 1951);
INSERT INTO public.galaxy VALUES (3, 'Galaxy 3', 'Lorep ipsum', 789, 'Type 3', 123, true, true, 1952);
INSERT INTO public.galaxy VALUES (4, 'Galaxy 4', 'Lorep ipsum', 453, 'Type 4', 123, true, false, 1953);
INSERT INTO public.galaxy VALUES (5, 'Galaxy 5', 'Lorep ipsum', 232, 'Type 5', 123, false, true, 1954);
INSERT INTO public.galaxy VALUES (6, 'Galaxy 6', 'Lorep ipsum', 674, 'Type 6', 123, true, true, 1955);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon 1', 'Lorep ipsum', 435, true, 232, false, 1981, 1);
INSERT INTO public.moon VALUES (2, 'Moon 2', 'Lorep ipsum', 435, true, 232, false, 1982, 2);
INSERT INTO public.moon VALUES (3, 'Moon 3', 'Lorep ipsum', 435, true, 232, false, 1983, 3);
INSERT INTO public.moon VALUES (4, 'Moon 4', 'Lorep ipsum', 435, true, 232, false, 1984, 4);
INSERT INTO public.moon VALUES (5, 'Moon 5', 'Lorep ipsum', 435, true, 232, false, 1985, 5);
INSERT INTO public.moon VALUES (6, 'Moon 6', 'Lorep ipsum', 435, true, 232, false, 1986, 6);
INSERT INTO public.moon VALUES (7, 'Moon 7', 'Lorep ipsum', 435, true, 232, false, 1987, 7);
INSERT INTO public.moon VALUES (8, 'Moon 8', 'Lorep ipsum', 435, true, 232, false, 1988, 8);
INSERT INTO public.moon VALUES (9, 'Moon 9', 'Lorep ipsum', 435, true, 232, false, 1989, 9);
INSERT INTO public.moon VALUES (10, 'Moon 10', 'Lorep ipsum', 435, true, 232, false, 1980, 10);
INSERT INTO public.moon VALUES (11, 'Moon 11', 'Lorep ipsum', 435, true, 232, false, 1981, 11);
INSERT INTO public.moon VALUES (12, 'Moon 12', 'Lorep ipsum', 435, true, 232, false, 1982, 12);
INSERT INTO public.moon VALUES (13, 'Moon 13', 'Lorep ipsum', 435, true, 232, false, 1983, 1);
INSERT INTO public.moon VALUES (14, 'Moon 14', 'Lorep ipsum', 435, true, 232, false, 1984, 2);
INSERT INTO public.moon VALUES (15, 'Moon 15', 'Lorep ipsum', 435, true, 232, false, 1985, 3);
INSERT INTO public.moon VALUES (16, 'Moon 16', 'Lorep ipsum', 435, true, 232, false, 1986, 4);
INSERT INTO public.moon VALUES (17, 'Moon 17', 'Lorep ipsum', 435, true, 232, false, 1987, 5);
INSERT INTO public.moon VALUES (18, 'Moon 18', 'Lorep ipsum', 435, true, 232, false, 1988, 6);
INSERT INTO public.moon VALUES (19, 'Moon 19', 'Lorep ipsum', 435, true, 232, false, 1989, 7);
INSERT INTO public.moon VALUES (20, 'Moon 20', 'Lorep ipsum', 435, true, 232, false, 1980, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet 1', 'Lorep ipsum', 'Type 1', true, 34, false, 1971, 1);
INSERT INTO public.planet VALUES (2, 'Planet 2', 'Lorep ipsum', 'Type 2', true, 34, false, 1972, 2);
INSERT INTO public.planet VALUES (3, 'Planet 3', 'Lorep ipsum', 'Type 3', true, 34, false, 1973, 3);
INSERT INTO public.planet VALUES (4, 'Planet 4', 'Lorep ipsum', 'Type 4', true, 34, false, 1974, 4);
INSERT INTO public.planet VALUES (5, 'Planet 5', 'Lorep ipsum', 'Type 5', true, 34, false, 1975, 5);
INSERT INTO public.planet VALUES (6, 'Planet 6', 'Lorep ipsum', 'Type 6', true, 34, false, 1976, 6);
INSERT INTO public.planet VALUES (7, 'Planet 7', 'Lorep ipsum', 'Type 7', true, 34, false, 1977, 1);
INSERT INTO public.planet VALUES (8, 'Planet 8', 'Lorep ipsum', 'Type 8', true, 34, false, 1978, 2);
INSERT INTO public.planet VALUES (9, 'Planet 9', 'Lorep ipsum', 'Type 9', true, 34, false, 1979, 3);
INSERT INTO public.planet VALUES (10, 'Planet 10', 'Lorep ipsum', 'Type 10', true, 34, false, 1970, 4);
INSERT INTO public.planet VALUES (11, 'Planet 11', 'Lorep ipsum', 'Type 11', true, 34, false, 1971, 5);
INSERT INTO public.planet VALUES (12, 'Planet 12', 'Lorep ipsum', 'Type 12', true, 34, false, 1972, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star 1', 'Lorep ipsum', false, 10, 123, true, 1961, 1);
INSERT INTO public.star VALUES (2, 'Star 2', 'Lorep ipsum', true, 11, 123, false, 1962, 2);
INSERT INTO public.star VALUES (3, 'Star 3', 'Lorep ipsum', false, 12, 123, true, 1963, 3);
INSERT INTO public.star VALUES (4, 'Star 4', 'Lorep ipsum', true, 13, 123, false, 1964, 4);
INSERT INTO public.star VALUES (5, 'Star 5', 'Lorep ipsum', false, 14, 123, true, 1965, 5);
INSERT INTO public.star VALUES (6, 'Star 6', 'Lorep ipsum', true, 15, 123, false, 1966, 6);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: comet comet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

