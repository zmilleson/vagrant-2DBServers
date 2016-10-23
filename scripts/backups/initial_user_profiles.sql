--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: user_data; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE user_data (
    id integer NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(100) NOT NULL,
    email character varying(256) NOT NULL,
    phone character varying(50)
);


ALTER TABLE public.user_data OWNER TO postgres;

--
-- Name: user_data_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE user_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_data_id_seq OWNER TO postgres;

--
-- Name: user_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE user_data_id_seq OWNED BY user_data.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_data ALTER COLUMN id SET DEFAULT nextval('user_data_id_seq'::regclass);


--
-- Data for Name: user_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY user_data (id, username, password, email, phone) FROM stdin;
1	zmilleson	$2a$08$S5HlBej2VMCyQcmaTJGqE.tu4HLtvXCMNL.vI0U2ynvC6T2U0Ix0S	zach@get-vm.com	5559502845
2	cbird	$2a$08$IMpquJLJdEW9Oqd.THIHqeUvXe9NsemkQaRTpHt1FI2x6YHjMCFFe	carly@get-vm.com	5559502864
3	julia01	$2a$08$ywV0ZaPWFsVZo8LrHmBgDOWneUyNG9M7pbDwSjOkdfEuZYCd15D92	julia@get-vm.com	5559502383
4	bronco31	$2a$08$NSwnTZnF/7HwsUINkxIMpe/HpySsdTkH727QTZ0T//J0ZRgHz5W7.	john@get-vm.com	5559502468
5	vortec	$2a$08$Yh32tTqGwxT306Omu5MHZ.hiCINt/10/qpPRb78eLFkUG5/YtAB4O	victoria@get-vm.com	5559501156
6	decker	$2a$08$1aWWrj8bSkQ2PaEvbwQA8.137Eusql.fim/qyM0YNFvasg609jyAC	declan@get-vm.com	5559501235
7	manda24	$2a$08$hGbEuKFs/pHK0InoX3ZGD.WKg7TR6/wWb2iuB31jKrn8YOb5jvH.O	amanda@get-vm.com	5559509954
8	belldozer	$2a$08$97SUp8dlIfuqQcoFcf8H0Obb0GGuIrWoVXCx1ptkhCtGjW2jAscD.	belinda@get-vm.com	5559506412
\.


--
-- Name: user_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('user_data_id_seq', 8, true);


--
-- Name: user_data_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY user_data
    ADD CONSTRAINT user_data_email_key UNIQUE (email);


--
-- Name: user_data_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY user_data
    ADD CONSTRAINT user_data_pkey PRIMARY KEY (id);


--
-- Name: user_data_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY user_data
    ADD CONSTRAINT user_data_username_key UNIQUE (username);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

