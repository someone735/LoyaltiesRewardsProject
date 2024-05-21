--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

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
-- Name: admin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin (
    id integer NOT NULL,
    companyid integer,
    password character varying(100),
    firstname character varying(100),
    lastname character varying(100)
);


ALTER TABLE public.admin OWNER TO postgres;

--
-- Name: company; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.company (
    id integer NOT NULL,
    name character varying(80) NOT NULL,
    password character varying(80) NOT NULL
);


ALTER TABLE public.company OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    username character varying(100) NOT NULL,
    password character varying(100) NOT NULL,
    points integer NOT NULL,
    companyid integer NOT NULL,
    email character varying(100) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin (id, companyid, password, firstname, lastname) FROM stdin;
1	1	m1n1	Jimmy	Wac
2	3	laa0	Jericho	Ezekiel
3	2	pazA	Barbara	Smith
\.


--
-- Data for Name: company; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.company (id, name, password) FROM stdin;
1	WcDonald`s	B1uv99
2	Jim Jorton`s	oZ309V
3	Strawbucks	zM4I3
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (username, password, points, companyid, email) FROM stdin;
brikhi	MpYgQd	30	2	brikhi@points.ca
brekhe	MpYgQd	2500	1	brikhi@points.ca
simone0818	tiULte	300	3	jstand@ponts.ca
simone0818	tiULte	10000	1	jstand@ponts.ca
julma	m00p1	2000	1	jumlien@ponts.ca
julma	m00p1	100	3	jumlien@ponts.ca
\.


--
-- Name: admin admin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (id);


--
-- Name: company company_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username, companyid);


--
-- Name: admin admin_companyid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_companyid_fkey FOREIGN KEY (companyid) REFERENCES public.company(id);


--
-- Name: users users_companyid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_companyid_fkey FOREIGN KEY (companyid) REFERENCES public.company(id);


--
-- Name: TABLE admin; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.admin TO oop;


--
-- Name: TABLE company; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.company TO oop;


--
-- Name: TABLE users; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.users TO oop;


--
-- PostgreSQL database dump complete
--

