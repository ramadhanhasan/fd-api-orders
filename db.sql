--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

-- Started on 2022-09-09 20:41:06

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

--
-- TOC entry 3313 (class 1262 OID 16395)
-- Name: fd_db; Type: DATABASE; Schema: -; Owner: fd_user
--

CREATE DATABASE fd_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252';


ALTER DATABASE fd_db OWNER TO fd_user;

\connect fd_db

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

--
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 3314 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 210 (class 1259 OID 16605)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    firstname character varying(255) NOT NULL,
    lastname character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    item character varying(255) NOT NULL,
    quantity integer NOT NULL,
    total_price numeric NOT NULL,
    createdate timestamp with time zone,
    updateddate timestamp with time zone,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16604)
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq OWNER TO postgres;

--
-- TOC entry 3315 (class 0 OID 0)
-- Dependencies: 209
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- TOC entry 3164 (class 2604 OID 16608)
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- TOC entry 3307 (class 0 OID 16605)
-- Dependencies: 210
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.orders VALUES (1, 'Joko', 'Widodo', 'joko@gmail.com', 'Barang7', 2, 1000000, '2022-09-09 19:16:13.329+07', '2022-09-09 19:16:13.329+07', '2022-09-09 19:16:13.333+07', '2022-09-09 19:16:13.333+07');
INSERT INTO public.orders VALUES (2, 'Joko', 'Widodo', 'joko@gmail.com', 'Barang7', 2, 1000000, '2022-09-09 19:16:14.357+07', '2022-09-09 19:16:14.357+07', '2022-09-09 19:16:14.357+07', '2022-09-09 19:16:14.357+07');
INSERT INTO public.orders VALUES (3, 'Joko', 'Widodo', 'joko@gmail.com', 'Barang7', 2, 1000000, '2022-09-09 19:16:15.608+07', '2022-09-09 19:16:15.608+07', '2022-09-09 19:16:15.608+07', '2022-09-09 19:16:15.608+07');
INSERT INTO public.orders VALUES (4, 'Joko', 'Widodo', 'joko@gmail.com', 'Barang7', 2, 1000000, '2022-09-09 19:16:38.395+07', '2022-09-09 19:16:38.395+07', '2022-09-09 19:16:38.398+07', '2022-09-09 19:16:38.398+07');
INSERT INTO public.orders VALUES (5, 'Joko', 'Widodo', 'joko@gmail.com', 'Barang8', 2, 1000000, '2022-09-09 19:20:33.597+07', '2022-09-09 19:20:33.597+07', '2022-09-09 19:20:33.6+07', '2022-09-09 19:20:33.6+07');
INSERT INTO public.orders VALUES (6, 'Jusuf', 'Kalla', 'jusuf@gmail.com', 'Barang1', 2, 1000000, '2022-09-09 19:41:04.132+07', '2022-09-09 19:41:04.132+07', '2022-09-09 19:41:04.136+07', '2022-09-09 19:41:04.136+07');
INSERT INTO public.orders VALUES (7, 'Jusuf', 'Kalla', 'jusuf@gmail.com', 'Barang2', 2, 1000000, '2022-09-09 19:41:08.745+07', '2022-09-09 19:41:08.745+07', '2022-09-09 19:41:08.745+07', '2022-09-09 19:41:08.745+07');
INSERT INTO public.orders VALUES (8, 'Tommy', 'Bejo', 'tommy@gmail.com', 'Barang4', 2, 1000000, '2022-09-09 19:42:13.352+07', '2022-09-09 19:42:13.352+07', '2022-09-09 19:42:13.354+07', '2022-09-09 19:42:13.354+07');
INSERT INTO public.orders VALUES (9, 'Tommy', 'Bejo', 'tommy@gmail.com', 'Barang6', 1, 500000, '2022-09-09 19:42:24.782+07', '2022-09-09 19:42:24.782+07', '2022-09-09 19:42:24.783+07', '2022-09-09 19:42:24.783+07');
INSERT INTO public.orders VALUES (10, 'Robert', 'Garcia', 'robert@gmail.com', 'Barang7', 1, 500000, '2022-09-09 19:42:36.42+07', '2022-09-09 19:42:36.42+07', '2022-09-09 19:42:36.42+07', '2022-09-09 19:42:36.42+07');
INSERT INTO public.orders VALUES (11, 'Robert', 'Garcia', 'robert@gmail.com', 'Barang2', 1, 500000, '2022-09-09 19:42:39.952+07', '2022-09-09 19:42:39.952+07', '2022-09-09 19:42:39.952+07', '2022-09-09 19:42:39.952+07');


--
-- TOC entry 3316 (class 0 OID 0)
-- Dependencies: 209
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 11, true);


--
-- TOC entry 3166 (class 2606 OID 16612)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


-- Completed on 2022-09-09 20:41:06

--
-- PostgreSQL database dump complete
--

