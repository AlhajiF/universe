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
-- Name: details; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.details (
    star_id integer NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    brief_discription text,
    event_date date,
    name character varying(30),
    details_id integer NOT NULL
);


ALTER TABLE public.details OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    distance_from_earth numeric(5,3),
    galaxy_types character varying(30),
    num_of_galaxy integer NOT NULL,
    age_in_a_millions_years character varying(20)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    discription text,
    planet_id integer NOT NULL,
    date_seen date
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    planet_position integer,
    has_life boolean NOT NULL,
    star_id integer NOT NULL,
    position_of_planet integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    num_of_stars integer,
    is_spherical boolean NOT NULL,
    galaxy_id integer NOT NULL,
    star_class character varying(1)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: details; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.details VALUES (1, 1, 1, 1, 'This happens onexpected and we are trying to figure out the scirnfic cause', '1988-12-18', 'MoonMeet', 1);
INSERT INTO public.details VALUES (2, 2, 2, 2, 'It happens because of the plenty cutting down of trees', '1848-01-10', 'Eathquake', 2);
INSERT INTO public.details VALUES (3, 3, 3, 3, 'We have to look into the issue of Rainforest', '1997-03-04', 'HeavyRain', 3);
INSERT INTO public.details VALUES (3, 4, 4, 4, 'Air polution from green gas', '2002-12-04', 'Air Polution', 4);
INSERT INTO public.details VALUES (4, 1, 5, 1, 'Lack of water around the country', '1994-05-11', 'Water Surtage', 5);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Brookfields', 50.320, 'Round', 1, '1000_years');
INSERT INTO public.galaxy VALUES (2, 'Dwarzark', 80.120, 'Square', 2, '10000_years');
INSERT INTO public.galaxy VALUES (3, 'SumailaTown', 10.052, 'Flat', 3, '2300_years');
INSERT INTO public.galaxy VALUES (4, 'Regent', 1.550, 'RoundFlat', 4, '17600_years');
INSERT INTO public.galaxy VALUES (5, 'Lumley', 90.550, 'SquareRound', 5, '8000_years');
INSERT INTO public.galaxy VALUES (6, 'SorieTown', 33.006, 'Flat', 6, '674000_years');
INSERT INTO public.galaxy VALUES (7, 'KrooTown', 60.456, 'FlatFlat', 7, '400_years');
INSERT INTO public.galaxy VALUES (8, 'Godrich', 98.124, 'FlatRound', 8, '59400_years');
INSERT INTO public.galaxy VALUES (9, 'Laka', 78.998, 'Circle', 9, '3200_years');
INSERT INTO public.galaxy VALUES (10, 'Godrich', 58.987, 'SquareRound', 10, '6240_years');
INSERT INTO public.galaxy VALUES (11, 'Hamilton', 32.222, 'CircleSquare', 11, '576_years');
INSERT INTO public.galaxy VALUES (12, 'Juba', 11.463, 'FlatRound', 10, '34600_years');
INSERT INTO public.galaxy VALUES (13, 'Adonkia', 64.980, 'CircleRound', 13, '4002_years');
INSERT INTO public.galaxy VALUES (14, 'MountOriel', 98.453, 'FlatCircleround', 14, '7200_years');
INSERT INTO public.galaxy VALUES (15, 'Hill Cut', 84.124, 'FlatCircle', 15, '5003_years');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Full moon', 'It is big and it circle like a ball', 1, '2003-12-07');
INSERT INTO public.moon VALUES (2, 'Half moon', 'It half of the circle full', 2, '1987-04-08');
INSERT INTO public.moon VALUES (3, 'Right full Moon', 'It half the circle full in the right', 3, '1874-05-08');
INSERT INTO public.moon VALUES (4, 'Left full moon', 'It half the circle full in the left', 4, '1276-04-09');
INSERT INTO public.moon VALUES (5, 'Black Moon', 'It black and dark', 5, '2007-12-10');
INSERT INTO public.moon VALUES (6, 'Red Moon', 'It red in colour', 6, '1764-05-22');
INSERT INTO public.moon VALUES (7, 'Blue Moon', 'It blue in colour', 7, '1584-10-13');
INSERT INTO public.moon VALUES (8, 'Snow Moon', 'It white and snownish', 8, '2033-01-05');
INSERT INTO public.moon VALUES (9, 'White Moon', 'very white and does not look like moon', 12, '1890-12-12');
INSERT INTO public.moon VALUES (10, 'Cool Moon', 'it very cool in color', 10, '1367-12-22');
INSERT INTO public.moon VALUES (14, 'china  Moon', 'Coming from china', 7, '1689-10-13');
INSERT INTO public.moon VALUES (13, 'Amer Moon', 'American favourite', 8, '2033-01-10');
INSERT INTO public.moon VALUES (11, 'Afric Moon', 'Bad to africa', 12, '1894-06-12');
INSERT INTO public.moon VALUES (12, 'Pot  Moon', 'Looks like a pot', 10, '1697-07-22');
INSERT INTO public.moon VALUES (19, 'Long Moon', 'Looks long and bright', 7, '1689-10-01');
INSERT INTO public.moon VALUES (18, 'Wolf Hunt Moon', 'the wolf moon for hunt', 8, '2023-10-09');
INSERT INTO public.moon VALUES (17, 'kenna Moon', 'Tradintional accident', 12, '1894-06-11');
INSERT INTO public.moon VALUES (16, 'Monk Moon', 'The monk light', 10, '1697-07-26');
INSERT INTO public.moon VALUES (23, 'SouthFiest Moon', 'The fiest of south america', 7, '1590-10-01');
INSERT INTO public.moon VALUES (22, 'Dark Road Moon', 'Road light', 5, '2023-07-09');
INSERT INTO public.moon VALUES (20, 'First Nig  Moon', 'Negiria fiest', 1, '1812-06-11');
INSERT INTO public.moon VALUES (15, 'Big Big Moon', 'the big light', 10, '1697-08-26');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, false, 1, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 2, false, 2, 2);
INSERT INTO public.planet VALUES (3, 'Earth', 3, true, 3, 3);
INSERT INTO public.planet VALUES (4, 'Mars', 4, true, 4, 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', 5, false, 5, 5);
INSERT INTO public.planet VALUES (6, 'Saturm', 6, true, 6, 6);
INSERT INTO public.planet VALUES (7, 'Uranus', 7, true, 7, 7);
INSERT INTO public.planet VALUES (8, 'pluto', 8, true, 9, 9);
INSERT INTO public.planet VALUES (12, 'Makary', 12, true, 12, 12);
INSERT INTO public.planet VALUES (11, 'Aranus', 11, false, 11, 11);
INSERT INTO public.planet VALUES (10, 'Plant', 10, false, 10, 10);
INSERT INTO public.planet VALUES (13, 'Tancury', 13, true, 13, 13);
INSERT INTO public.planet VALUES (14, 'Redhus', 14, false, 14, 14);
INSERT INTO public.planet VALUES (15, 'Plannatus', 15, false, 15, 15);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Bo', 10000, true, 1, 'A');
INSERT INTO public.star VALUES (2, 'Kenema', 300, true, 1, 'B');
INSERT INTO public.star VALUES (3, 'Freetown', 44300, false, 2, 'C');
INSERT INTO public.star VALUES (4, 'Waterloo', 6001, false, 2, 'D');
INSERT INTO public.star VALUES (5, 'Makenni', 50, false, 3, 'E');
INSERT INTO public.star VALUES (6, 'Kono', 1200, true, 4, 'F');
INSERT INTO public.star VALUES (7, 'Falaba', 1325, true, 5, 'G');
INSERT INTO public.star VALUES (8, 'Tokolili', 98453, false, 8, 'H');
INSERT INTO public.star VALUES (9, 'Portloko', 84124, true, 9, 'I');
INSERT INTO public.star VALUES (10, 'Makenni', 123894, true, 10, 'J');
INSERT INTO public.star VALUES (11, 'Masheika', 400078, false, 11, 'K');
INSERT INTO public.star VALUES (12, 'Matotcar', 2200000, true, 12, 'L');
INSERT INTO public.star VALUES (13, 'Maboruka', 67000, false, 13, 'M');
INSERT INTO public.star VALUES (14, 'Mateh', 227000, true, 14, 'P');
INSERT INTO public.star VALUES (15, 'Tonko', 87000, false, 15, 'O');


--
-- Name: details details_event_date_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.details
    ADD CONSTRAINT details_event_date_key UNIQUE (event_date);


--
-- Name: details details_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.details
    ADD CONSTRAINT details_pkey PRIMARY KEY (details_id);


--
-- Name: galaxy galaxy_age_in_a_millions_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_age_in_a_millions_years_key UNIQUE (age_in_a_millions_years);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_date_seen_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_date_seen_key UNIQUE (date_seen);


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
-- Name: planet planet_position_of_planet_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_position_of_planet_key UNIQUE (position_of_planet);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_class_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_class_key UNIQUE (star_class);


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

