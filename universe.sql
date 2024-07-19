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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    quantity_of_stars integer,
    is_spherical boolean,
    size numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60),
    phase_of_moon character varying(40),
    planet_id integer NOT NULL,
    size numeric
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    name character varying(60) NOT NULL,
    more_info_id integer NOT NULL,
    size text
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60),
    has_life boolean,
    distance_from_earth numeric,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    type text,
    is_spherical boolean,
    quantity integer,
    galaxy_id integer,
    color_of_star character varying(60)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulo', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Virgem', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (1, 'Via Lactea', 1000000000, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Galaxia Charuto', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Objeto de Mayall', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Lua', 'Minguante', 3, NULL);
INSERT INTO public.moon VALUES (2, 'Lua', 'Cheia', 3, NULL);
INSERT INTO public.moon VALUES (3, 'Lua', 'Nova', 3, NULL);
INSERT INTO public.moon VALUES (4, 'Lua', 'Crescente', 3, NULL);
INSERT INTO public.moon VALUES (5, 'Fobos', NULL, 4, NULL);
INSERT INTO public.moon VALUES (6, 'Deimos', NULL, 4, NULL);
INSERT INTO public.moon VALUES (7, 'Io', NULL, 5, NULL);
INSERT INTO public.moon VALUES (8, 'Europa', NULL, 5, NULL);
INSERT INTO public.moon VALUES (9, 'Ganimedes', NULL, 5, NULL);
INSERT INTO public.moon VALUES (10, 'Calisto', NULL, 5, NULL);
INSERT INTO public.moon VALUES (11, 'Titã', NULL, 6, NULL);
INSERT INTO public.moon VALUES (12, 'Encélado', NULL, 6, NULL);
INSERT INTO public.moon VALUES (13, 'Titânia', NULL, 8, NULL);
INSERT INTO public.moon VALUES (14, 'Oberon', NULL, 8, NULL);
INSERT INTO public.moon VALUES (15, 'Umbria', NULL, 8, NULL);
INSERT INTO public.moon VALUES (16, 'Miranda', NULL, 8, NULL);
INSERT INTO public.moon VALUES (17, 'Caronte', NULL, 9, NULL);
INSERT INTO public.moon VALUES (18, 'Nix', NULL, 9, NULL);
INSERT INTO public.moon VALUES (19, 'Hidra', NULL, 9, NULL);
INSERT INTO public.moon VALUES (20, 'Cerberus', NULL, 9, NULL);
INSERT INTO public.moon VALUES (21, 'Estige', NULL, 9, NULL);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES ('Eclipse', 1, NULL);
INSERT INTO public.more_info VALUES ('Meteoro', 2, NULL);
INSERT INTO public.more_info VALUES ('Estrela Cadente', 3, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Vênus', NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, 'Terra', NULL, NULL, 3);
INSERT INTO public.planet VALUES (4, 'Marte', NULL, NULL, 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, NULL, 5);
INSERT INTO public.planet VALUES (6, 'Saturno', NULL, NULL, 3);
INSERT INTO public.planet VALUES (7, 'Urano', NULL, NULL, 2);
INSERT INTO public.planet VALUES (8, 'Netuno', NULL, NULL, 3);
INSERT INTO public.planet VALUES (9, 'Plutão', NULL, NULL, 2);
INSERT INTO public.planet VALUES (10, 'Kepler', NULL, NULL, 2);
INSERT INTO public.planet VALUES (11, 'Cancri', NULL, NULL, 2);
INSERT INTO public.planet VALUES (12, 'Proxima Centauri', NULL, NULL, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Anã Branca', 'Anã', NULL, NULL, 1, 'Branca');
INSERT INTO public.star VALUES (2, 'Anã Vermelha', 'Anã', NULL, NULL, 1, 'Vermelha');
INSERT INTO public.star VALUES (3, 'Estrelas Gigantes', 'Gigante', NULL, NULL, 1, 'Vermelha');
INSERT INTO public.star VALUES (4, 'Estrelas Gigantes', 'Gigante', NULL, NULL, 1, 'Azul');
INSERT INTO public.star VALUES (5, 'Sol', 'Anã', NULL, NULL, 1, 'Amarela');
INSERT INTO public.star VALUES (6, 'Sirio', 'Tipo A', NULL, NULL, 1, 'Azul');


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
-- Name: more_info more_info_info_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_info_id_key UNIQUE (more_info_id);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete

--

