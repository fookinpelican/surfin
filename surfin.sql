--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

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
-- Name: spot; Type: TABLE; Schema: public; Owner: fookinpelican
--

CREATE TABLE public.spot (
    id_spot integer NOT NULL,
    nb_baigneurs integer,
    nb_pratiquants integer,
    nb_bateaux_loisir integer,
    nb_bateaux_voile integer,
    nb_bateaux_peche integer
);


ALTER TABLE public.spot OWNER TO fookinpelican;

--
-- Name: spot_id_spot_seq; Type: SEQUENCE; Schema: public; Owner: fookinpelican
--

CREATE SEQUENCE public.spot_id_spot_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spot_id_spot_seq OWNER TO fookinpelican;

--
-- Name: spot_id_spot_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fookinpelican
--

ALTER SEQUENCE public.spot_id_spot_seq OWNED BY public.spot.id_spot;


--
-- Name: waterman; Type: TABLE; Schema: public; Owner: fookinpelican
--

CREATE TABLE public.waterman (
    id_waterman integer NOT NULL,
    email character varying NOT NULL,
    pass character varying NOT NULL,
    nom character varying,
    prenom character varying,
    pseudo character varying NOT NULL,
    age date
);


ALTER TABLE public.waterman OWNER TO fookinpelican;

--
-- Name: waterman_id_waterman_seq; Type: SEQUENCE; Schema: public; Owner: fookinpelican
--

CREATE SEQUENCE public.waterman_id_waterman_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.waterman_id_waterman_seq OWNER TO fookinpelican;

--
-- Name: waterman_id_waterman_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fookinpelican
--

ALTER SEQUENCE public.waterman_id_waterman_seq OWNED BY public.waterman.id_waterman;


--
-- Name: waterman_session; Type: TABLE; Schema: public; Owner: fookinpelican
--

CREATE TABLE public.waterman_session (
    id_session integer NOT NULL,
    ville character varying,
    date_session date,
    heure_dbt time without time zone,
    heure_fin time without time zone,
    id_waterman integer,
    used_sunscreen boolean,
    used_perfume boolean,
    used_moisturizing boolean,
    used_make_up boolean,
    used_petrol boolean,
    smoked boolean,
    used_paint boolean,
    used_fertiliser boolean,
    other character varying,
    spot integer
);


ALTER TABLE public.waterman_session OWNER TO fookinpelican;

--
-- Name: waterman_session_id_session_seq; Type: SEQUENCE; Schema: public; Owner: fookinpelican
--

CREATE SEQUENCE public.waterman_session_id_session_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.waterman_session_id_session_seq OWNER TO fookinpelican;

--
-- Name: waterman_session_id_session_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fookinpelican
--

ALTER SEQUENCE public.waterman_session_id_session_seq OWNED BY public.waterman_session.id_session;


--
-- Name: spot id_spot; Type: DEFAULT; Schema: public; Owner: fookinpelican
--

ALTER TABLE ONLY public.spot ALTER COLUMN id_spot SET DEFAULT nextval('public.spot_id_spot_seq'::regclass);


--
-- Name: waterman id_waterman; Type: DEFAULT; Schema: public; Owner: fookinpelican
--

ALTER TABLE ONLY public.waterman ALTER COLUMN id_waterman SET DEFAULT nextval('public.waterman_id_waterman_seq'::regclass);


--
-- Name: waterman_session id_session; Type: DEFAULT; Schema: public; Owner: fookinpelican
--

ALTER TABLE ONLY public.waterman_session ALTER COLUMN id_session SET DEFAULT nextval('public.waterman_session_id_session_seq'::regclass);


--
-- Data for Name: spot; Type: TABLE DATA; Schema: public; Owner: fookinpelican
--

COPY public.spot (id_spot, nb_baigneurs, nb_pratiquants, nb_bateaux_loisir, nb_bateaux_voile, nb_bateaux_peche) FROM stdin;
\.


--
-- Data for Name: waterman; Type: TABLE DATA; Schema: public; Owner: fookinpelican
--

COPY public.waterman (id_waterman, email, pass, nom, prenom, pseudo, age) FROM stdin;
\.


--
-- Data for Name: waterman_session; Type: TABLE DATA; Schema: public; Owner: fookinpelican
--

COPY public.waterman_session (id_session, ville, date_session, heure_dbt, heure_fin, id_waterman, used_sunscreen, used_perfume, used_moisturizing, used_make_up, used_petrol, smoked, used_paint, used_fertiliser, other, spot) FROM stdin;
\.


--
-- Name: spot_id_spot_seq; Type: SEQUENCE SET; Schema: public; Owner: fookinpelican
--

SELECT pg_catalog.setval('public.spot_id_spot_seq', 1, false);


--
-- Name: waterman_id_waterman_seq; Type: SEQUENCE SET; Schema: public; Owner: fookinpelican
--

SELECT pg_catalog.setval('public.waterman_id_waterman_seq', 1, false);


--
-- Name: waterman_session_id_session_seq; Type: SEQUENCE SET; Schema: public; Owner: fookinpelican
--

SELECT pg_catalog.setval('public.waterman_session_id_session_seq', 1, false);


--
-- Name: waterman_session session_pk; Type: CONSTRAINT; Schema: public; Owner: fookinpelican
--

ALTER TABLE ONLY public.waterman_session
    ADD CONSTRAINT session_pk PRIMARY KEY (id_session);


--
-- Name: spot spot_pk; Type: CONSTRAINT; Schema: public; Owner: fookinpelican
--

ALTER TABLE ONLY public.spot
    ADD CONSTRAINT spot_pk PRIMARY KEY (id_spot);


--
-- Name: waterman waterman_pk; Type: CONSTRAINT; Schema: public; Owner: fookinpelican
--

ALTER TABLE ONLY public.waterman
    ADD CONSTRAINT waterman_pk PRIMARY KEY (id_waterman);


--
-- Name: waterman waterman_pseudo_key; Type: CONSTRAINT; Schema: public; Owner: fookinpelican
--

ALTER TABLE ONLY public.waterman
    ADD CONSTRAINT waterman_pseudo_key UNIQUE (pseudo);


--
-- Name: waterman_session fk_session_spot; Type: FK CONSTRAINT; Schema: public; Owner: fookinpelican
--

ALTER TABLE ONLY public.waterman_session
    ADD CONSTRAINT fk_session_spot FOREIGN KEY (spot) REFERENCES public.spot(id_spot);


--
-- Name: waterman_session fk_session_waterman; Type: FK CONSTRAINT; Schema: public; Owner: fookinpelican
--

ALTER TABLE ONLY public.waterman_session
    ADD CONSTRAINT fk_session_waterman FOREIGN KEY (id_waterman) REFERENCES public.waterman(id_waterman);


--
-- PostgreSQL database dump complete
--

