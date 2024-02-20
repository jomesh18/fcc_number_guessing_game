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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_name character varying(40) NOT NULL,
    best_try integer DEFAULT 1000,
    games_played integer DEFAULT 0
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('user_1708440559364', 515, 2);
INSERT INTO public.users VALUES ('user_1708440559365', 112, 5);
INSERT INTO public.users VALUES ('user_1708440572561', 277, 2);
INSERT INTO public.users VALUES ('user_1708440572562', 243, 5);
INSERT INTO public.users VALUES ('user_1708440598714', 116, 2);
INSERT INTO public.users VALUES ('user_1708440598715', 25, 5);
INSERT INTO public.users VALUES ('user_1708440679804', 48, 2);
INSERT INTO public.users VALUES ('user_1708440679805', 145, 5);
INSERT INTO public.users VALUES ('user_1708441027357', 707, 2);
INSERT INTO public.users VALUES ('user_1708440280363', 321, 2);
INSERT INTO public.users VALUES ('user_1708441027359', 88, 5);
INSERT INTO public.users VALUES ('user_1708440280364', 77, 5);
INSERT INTO public.users VALUES ('user_1708440444083', 393, 2);
INSERT INTO public.users VALUES ('user_1708441165757', 0, 2);
INSERT INTO public.users VALUES ('user_1708440444084', 324, 5);
INSERT INTO public.users VALUES ('user_1708441165758', 0, 5);
INSERT INTO public.users VALUES ('user_1708440450123', 214, 2);
INSERT INTO public.users VALUES ('j', 1000, 0);
INSERT INTO public.users VALUES ('user_1708440450124', 195, 5);
INSERT INTO public.users VALUES ('user_1708441407951', 755, 2);
INSERT INTO public.users VALUES ('user_1708441407952', 175, 5);
INSERT INTO public.users VALUES ('user_1708441448222', 21, 2);
INSERT INTO public.users VALUES ('user_1708441448223', 37, 5);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_name);


--
-- PostgreSQL database dump complete
--

