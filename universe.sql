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
-- Name: anomalie; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.anomalie (
    anomalie_id integer NOT NULL,
    name character varying(30),
    galaxy_id integer,
    size numeric(10,2) NOT NULL,
    life boolean NOT NULL,
    active boolean NOT NULL,
    age integer,
    info text
);


ALTER TABLE public.anomalie OWNER TO freecodecamp;

--
-- Name: anomalie_anomalie_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.anomalie_anomalie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.anomalie_anomalie_id_seq OWNER TO freecodecamp;

--
-- Name: anomalie_anomalie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.anomalie_anomalie_id_seq OWNED BY public.anomalie.anomalie_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    size numeric(10,2) NOT NULL,
    life boolean NOT NULL,
    active boolean NOT NULL,
    age integer,
    info text
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
    name character varying(30),
    planet_id integer,
    size numeric(10,2) NOT NULL,
    life boolean NOT NULL,
    active boolean NOT NULL,
    age integer,
    info text
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
    name character varying(30),
    star_id integer,
    size numeric(10,2) NOT NULL,
    life boolean NOT NULL,
    active boolean NOT NULL,
    age integer,
    info text
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
    name character varying(30),
    galaxy_id integer,
    size numeric(10,2) NOT NULL,
    life boolean NOT NULL,
    active boolean NOT NULL,
    age integer,
    info text
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
-- Name: anomalie anomalie_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.anomalie ALTER COLUMN anomalie_id SET DEFAULT nextval('public.anomalie_anomalie_id_seq'::regclass);


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
-- Data for Name: anomalie; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.anomalie VALUES (1, 'Supermassive Blackhole', 1, 0.00, false, false, 0, 'not enough data');
INSERT INTO public.anomalie VALUES (2, 'X-ray binary', 3, 0.00, false, false, 0, 'not enough data');
INSERT INTO public.anomalie VALUES (3, 'Windy', 3, 0.00, false, false, 0, 'not enough data');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 110.00, true, true, 10000, 'has a billion stars');
INSERT INTO public.galaxy VALUES (2, 'Cigar', 18.50, false, false, 13, 'has 30 billion stars');
INSERT INTO public.galaxy VALUES (3, 'Milky Way', 52.80, true, true, 14, 'its out own galaxy, where planet Earth is');
INSERT INTO public.galaxy VALUES (4, 'Large Mellanic Cloud', 7.00, false, false, 1, 'its a dwarf galaxy');
INSERT INTO public.galaxy VALUES (5, 'IC 3583', 0.00, false, false, 0, 'its a pretty uknown galaxy');
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 25.00, false, false, 13, 'it looks like a hat');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Unknown', 1, 0.00, false, false, 0, 'not enough data');
INSERT INTO public.moon VALUES (3, 'Unknown-b', 1, 0.00, false, false, 0, 'not enough data');
INSERT INTO public.moon VALUES (4, 'Unknown-c', 1, 0.00, false, false, 0, 'not enough data');
INSERT INTO public.moon VALUES (5, 'Unknown-d', 1, 0.00, false, false, 0, 'not enough data');
INSERT INTO public.moon VALUES (6, 'Unknown-e', 1, 0.00, false, false, 0, 'not enough data');
INSERT INTO public.moon VALUES (7, 'Unknown-a', 2, 0.00, false, false, 0, 'not enough data');
INSERT INTO public.moon VALUES (9, 'Unknown-f', 2, 0.00, false, false, 0, 'not enough data');
INSERT INTO public.moon VALUES (10, 'Unknown-g', 2, 0.00, false, false, 0, 'not enough data');
INSERT INTO public.moon VALUES (11, 'Unknown-h', 2, 0.00, false, false, 0, 'not enough data');
INSERT INTO public.moon VALUES (12, 'Unknown-i', 2, 0.00, false, false, 0, 'not enough data');
INSERT INTO public.moon VALUES (13, 'Unknown-j', 2, 0.00, false, false, 0, 'not enough data');
INSERT INTO public.moon VALUES (14, 'Moon', 3, 0.00, false, false, 0, 'our own moon');
INSERT INTO public.moon VALUES (15, 'Callisto', 3, 0.00, false, false, 0, 'Jupiters moon');
INSERT INTO public.moon VALUES (16, 'Ganimedes', 3, 0.00, false, false, 0, 'Jupiters moon');
INSERT INTO public.moon VALUES (17, 'Europa', 3, 0.00, false, false, 0, 'Jupiters moon');
INSERT INTO public.moon VALUES (18, 'Io', 3, 0.00, false, false, 0, 'Jupiters moon');
INSERT INTO public.moon VALUES (19, 'Unknown-k', 4, 0.00, false, false, 0, 'not enough data');
INSERT INTO public.moon VALUES (20, 'Unknown-l', 4, 0.00, false, false, 0, 'not enough data');
INSERT INTO public.moon VALUES (21, 'Unknown-m', 4, 0.00, false, false, 0, 'not enough data');
INSERT INTO public.moon VALUES (22, 'Unknown-n', 4, 0.00, false, false, 0, 'not enough data');
INSERT INTO public.moon VALUES (23, 'Unknown-o', 4, 0.00, false, false, 0, 'not enough data');
INSERT INTO public.moon VALUES (24, 'Unknown-p', 5, 0.00, false, false, 0, 'not enough data');
INSERT INTO public.moon VALUES (25, 'Unknown-w', 5, 0.00, false, false, 0, 'not enough data');
INSERT INTO public.moon VALUES (26, 'Unknown-x', 5, 0.00, false, false, 0, 'not enough data');
INSERT INTO public.moon VALUES (27, 'Unknown-z', 5, 0.00, false, false, 0, 'not enough data');
INSERT INTO public.moon VALUES (28, 'Unknown-aa', 5, 0.00, false, false, 0, 'not enough data');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'M31', 1, 0.00, false, false, 0, 'not enough data');
INSERT INTO public.planet VALUES (2, 'NGC 224', 1, 0.00, false, false, 0, 'not enough data');
INSERT INTO public.planet VALUES (3, 'UGC 454', 1, 0.00, false, false, 0, 'not enough data');
INSERT INTO public.planet VALUES (4, 'NGC 3034', 2, 0.00, false, false, 0, 'not enough data');
INSERT INTO public.planet VALUES (5, 'UGC 5322', 2, 0.00, false, false, 0, 'not enough data');
INSERT INTO public.planet VALUES (6, 'ARP 337', 2, 0.00, false, false, 0, 'not enough data');
INSERT INTO public.planet VALUES (7, 'Earth', 3, 0.06, true, true, 5, 'our homeplanet');
INSERT INTO public.planet VALUES (8, 'Venus', 3, 0.00, false, true, 0, 'also known as first star of the day');
INSERT INTO public.planet VALUES (9, 'Jupiter', 3, 0.00, false, true, 1, 'biggest planet of out solar system');
INSERT INTO public.planet VALUES (10, 'ESO 56 G 115', 4, 0.00, false, false, 0, 'not enough data');
INSERT INTO public.planet VALUES (11, 'PGC 17223', 4, 0.00, false, false, 0, 'not enough data');
INSERT INTO public.planet VALUES (12, 'Nubecula Major', 4, 0.00, false, false, 0, 'not enough data');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpheratz', 1, 0.00, false, false, 0, 'it has the size of 5 suns');
INSERT INTO public.star VALUES (2, 'Uknown', 2, 0.00, false, false, 0, 'not enough data');
INSERT INTO public.star VALUES (3, 'Sun', 3, 0.69, false, false, 5, 'the main star of our galaxy');
INSERT INTO public.star VALUES (4, 'R71', 4, 0.50, false, false, 0, 'its a blue supergiant!');
INSERT INTO public.star VALUES (5, 'Various stars', 5, 0.00, false, false, 0, 'this couple of blue stars make the galaxy');
INSERT INTO public.star VALUES (6, 'Messier 104', 6, 0.00, false, false, 0, 'its the main star of Sombrero');


--
-- Name: anomalie_anomalie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.anomalie_anomalie_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 28, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: anomalie anomalie_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.anomalie
    ADD CONSTRAINT anomalie_name_key UNIQUE (name);


--
-- Name: anomalie anomalie_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.anomalie
    ADD CONSTRAINT anomalie_pkey PRIMARY KEY (anomalie_id);


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
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: anomalie fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.anomalie
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

