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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: alien; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.alien (
    alien_id integer NOT NULL,
    name character varying(30) NOT NULL,
    origin text
);


ALTER TABLE public.alien OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    distance_from_earth integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: alien; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.alien (alien_id, name, origin) FROM stdin;
1	unknown	unknown
2	unknown	unknown
3	unknown	unknown
4	unknown	unknown
5	unknown	unknown
\.


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.galaxy (galaxy_id, name, description, has_life, is_spherical, age_in_millions_of_years, distance_from_earth) FROM stdin;
1	name_one	desc_one	t	t	1	1
2	name_two	desc_two	t	t	1	1
3	name_three	desc_three	t	t	1	1
4	name_four	desc_four	t	t	1	1
5	name_five	desc_five	t	t	1	1
6	name_six	desc_six	t	t	1	1
\.


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.moon (moon_id, name, description, has_life, is_spherical, age_in_millions_of_years, distance_from_earth, planet_id) FROM stdin;
1	moon_one	desc_one	t	t	1	1	1
2	moon_two	desc_two	t	t	1	1	1
3	moon_three	desc_three	t	t	1	1	1
4	moon_four	desc_four	t	t	1	1	1
6	moon_six	desc_six	t	t	1	1	2
7	moon_seven	desc_seven	t	t	1	1	2
8	moon_eight	desc_eight	t	t	1	1	2
9	moon_nine	desc_nine	t	t	1	1	2
11	moon_eleven	desc_eleven	t	t	1	1	3
12	moon_twelve	desc_twelve	t	t	1	1	3
13	moon_thirteen	desc_thirteen	t	t	1	1	3
14	moon_fourteen	desc_fourteen	t	t	1	1	3
16	moon_sixteen	desc_sixteen	t	t	1	1	4
17	moon_seventeen	desc_seventeen	t	t	1	1	4
18	moon_eighteen	desc_eighteen	t	t	1	1	4
19	moon_nineteen	desc_nineteen	t	t	1	1	4
5	moon_five	desc_five	t	t	1	1	5
10	moon_ten	desc_ten	t	t	1	1	5
15	moon_fifteen	desc_fifteen	t	t	1	1	5
20	moon_twenty	desc_twenty	t	t	1	1	5
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.planet (planet_id, name, description, has_life, is_spherical, age_in_millions_of_years, distance_from_earth, star_id) FROM stdin;
1	planet_one	desc_one	t	t	1	1	1
2	planet_two	desc_two	t	t	1	1	1
3	planet_three	desc_three	t	t	1	1	1
4	planet_four	desc_four	t	t	1	1	1
5	planet_five	desc_five	t	t	1	1	1
6	planet_six	desc_six	t	t	1	1	1
7	planet_seven	desc_seven	t	t	1	1	2
8	planet_eight	desc_eight	t	t	1	1	2
9	planet_nine	desc_nine	t	t	1	1	2
10	planet_ten	desc_ten	t	t	1	1	2
11	planet_eleven	desc_eleven	t	t	1	1	2
12	planet_twelve	desc_twelve	t	t	1	1	2
\.


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.star (star_id, name, description, has_life, is_spherical, age_in_millions_of_years, distance_from_earth, galaxy_id) FROM stdin;
2	star_two	desc_two	t	t	1	1	1
3	star_three	desc_three	t	t	1	1	1
4	star_four	desc_four	t	t	1	1	1
5	star_five	desc_five	t	t	1	1	1
6	star_six	desc_six	t	t	1	1	1
1	star_one	desc_one	t	t	1	1	1
\.


--
-- Name: alien alien_alien_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT alien_alien_id_key UNIQUE (alien_id);


--
-- Name: alien alien_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT alien_pkey PRIMARY KEY (alien_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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

