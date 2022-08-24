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
-- Name: fincapau; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fincapau (
    fincapau_id integer NOT NULL,
    name character varying NOT NULL,
    tamanho integer NOT NULL
);


ALTER TABLE public.fincapau OWNER TO freecodecamp;

--
-- Name: fincapau_pau_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fincapau_pau_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fincapau_pau_id_seq OWNER TO freecodecamp;

--
-- Name: fincapau_pau_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fincapau_pau_id_seq OWNED BY public.fincapau.fincapau_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    galaxy_size numeric NOT NULL,
    galaxy_planets integer,
    galaxy_stars integer
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
    name character varying NOT NULL,
    moon_habitated boolean NOT NULL,
    moon_color text,
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
    name character varying,
    planet_moons numeric NOT NULL,
    planet_habitated boolean NOT NULL,
    planet_size integer NOT NULL,
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
    name character varying NOT NULL,
    star_size integer NOT NULL,
    star_planet text NOT NULL,
    star_of_moon boolean NOT NULL,
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
-- Name: fincapau fincapau_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fincapau ALTER COLUMN fincapau_id SET DEFAULT nextval('public.fincapau_pau_id_seq'::regclass);


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
-- Data for Name: fincapau; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fincapau VALUES (1, 'rolando e morando', 1);
INSERT INTO public.fincapau VALUES (2, 'okaychamp', 2);
INSERT INTO public.fincapau VALUES (3, 'docArrive', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via lactea', 2, 10, NULL);
INSERT INTO public.galaxy VALUES (2, 'GB1', 3, 2, NULL);
INSERT INTO public.galaxy VALUES (3, 'Black space', 10, 0, NULL);
INSERT INTO public.galaxy VALUES (4, 'Vira23', 2, 10, NULL);
INSERT INTO public.galaxy VALUES (5, 'GB61', 3, 2, NULL);
INSERT INTO public.galaxy VALUES (6, 'orange space', 10, 0, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Lua', false, 'gray', 1);
INSERT INTO public.moon VALUES (2, 'Lua2', false, 'gray', 2);
INSERT INTO public.moon VALUES (3, 'LuaSecso', false, 'blue', 1);
INSERT INTO public.moon VALUES (4, 'LuadasLuas', true, 'yellow', 2);
INSERT INTO public.moon VALUES (5, 'l1', true, 'gray', 3);
INSERT INTO public.moon VALUES (6, 'as', true, 'r', 4);
INSERT INTO public.moon VALUES (7, 'ls', true, 't', 1);
INSERT INTO public.moon VALUES (8, 'amaril', true, 'b', 6);
INSERT INTO public.moon VALUES (9, 'Lu2a2', false, 'gray', 5);
INSERT INTO public.moon VALUES (10, 'aLuaSecso', false, 'blue', 1);
INSERT INTO public.moon VALUES (11, 'LuaadasLuas', true, 'yellow', 4);
INSERT INTO public.moon VALUES (12, 'aal1', true, 'gray', 3);
INSERT INTO public.moon VALUES (13, 'asss', true, 'r', 4);
INSERT INTO public.moon VALUES (14, 'lvvvs', true, 't', 1);
INSERT INTO public.moon VALUES (15, 'amaraail', true, 'b', 6);
INSERT INTO public.moon VALUES (16, 'aLu2aa2', false, 'gray', 5);
INSERT INTO public.moon VALUES (17, 'aLuaSecaso', false, 'blue', 1);
INSERT INTO public.moon VALUES (18, 'LuaadaasLuas', true, 'yellow', 4);
INSERT INTO public.moon VALUES (19, 'aala1', true, 'gray', 3);
INSERT INTO public.moon VALUES (20, 'assas', true, 'r', 4);
INSERT INTO public.moon VALUES (21, 'lvvvas', true, 't', 1);
INSERT INTO public.moon VALUES (22, 'amaraaial', true, 'b', 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'terra', 2, true, 23, 1);
INSERT INTO public.planet VALUES (2, 'mars', 2, true, 25, 2);
INSERT INTO public.planet VALUES (3, 'todofor', 1, true, 10, 1);
INSERT INTO public.planet VALUES (4, 'okaychamp', 3, true, 19, 3);
INSERT INTO public.planet VALUES (5, 'master', 2, true, 10, 1);
INSERT INTO public.planet VALUES (6, 'chieftain', 4, false, 3, 5);
INSERT INTO public.planet VALUES (7, 'brother', 5, false, 56, 3);
INSERT INTO public.planet VALUES (8, 'myCap', 4, true, 51, 4);
INSERT INTO public.planet VALUES (9, 'LAterra', 2, true, 23, 1);
INSERT INTO public.planet VALUES (10, 'marshal', 2, true, 25, 2);
INSERT INTO public.planet VALUES (11, 'tdocarriveodofor', 1, true, 10, 1);
INSERT INTO public.planet VALUES (12, 'okaychamionp', 3, true, 19, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'a1', 2, 'gb1', true, 1);
INSERT INTO public.star VALUES (2, 'est2', 3, 'gb1', true, 1);
INSERT INTO public.star VALUES (3, 'str4', 1, 'AB2', true, 2);
INSERT INTO public.star VALUES (4, 'a5', 2, 'gb4', true, 3);
INSERT INTO public.star VALUES (5, 'est32', 3, 'gb21', true, 3);
INSERT INTO public.star VALUES (6, 'star4', 1, 'erAB2', true, 3);


--
-- Name: fincapau_pau_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fincapau_pau_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: fincapau fincapau_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fincapau
    ADD CONSTRAINT fincapau_pkey PRIMARY KEY (fincapau_id);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_name_key UNIQUE (name);


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
-- Name: planet planet_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_name_key UNIQUE (name);


--
-- Name: fincapau unico_pau; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fincapau
    ADD CONSTRAINT unico_pau UNIQUE (name);


--
-- Name: moon moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

