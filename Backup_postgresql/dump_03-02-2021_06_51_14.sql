--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases
--

DROP DATABASE test;
DROP DATABASE travel_agency;




--
-- Drop roles
--

DROP ROLE postgres;


--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'md53175bce1d3201d16594cebf9d7eb3f9d';






--
-- Database creation
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;
CREATE DATABASE test WITH TEMPLATE = template0 OWNER = postgres;
CREATE DATABASE travel_agency WITH TEMPLATE = template0 OWNER = postgres;


\connect postgres

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.18
-- Dumped by pg_dump version 9.6.18

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
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- PostgreSQL database dump complete
--

\connect template1

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.18
-- Dumped by pg_dump version 9.6.18

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
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- PostgreSQL database dump complete
--

\connect test

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.18
-- Dumped by pg_dump version 9.6.18

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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student (
);


ALTER TABLE public.student OWNER TO postgres;

--
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student  FROM stdin;
\.


--
-- PostgreSQL database dump complete
--

\connect travel_agency

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.18
-- Dumped by pg_dump version 9.6.18

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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: pages_useraccount; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_useraccount (
    id integer NOT NULL,
    username character varying(12) NOT NULL,
    password character varying(12) NOT NULL,
    email character varying(30) NOT NULL,
    is_active boolean NOT NULL
);


ALTER TABLE public.pages_useraccount OWNER TO postgres;

--
-- Name: pages_useraccount_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pages_useraccount_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pages_useraccount_id_seq OWNER TO postgres;

--
-- Name: pages_useraccount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pages_useraccount_id_seq OWNED BY public.pages_useraccount.id;


--
-- Name: trips_airport; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trips_airport (
    id integer NOT NULL,
    name character varying(40) NOT NULL,
    city character varying(30) NOT NULL,
    continent character varying(15) NOT NULL,
    coordinates character varying(15) NOT NULL,
    country character varying(15) NOT NULL,
    num character varying(15) NOT NULL,
    postalcode character varying(15) NOT NULL,
    street character varying(40) NOT NULL
);


ALTER TABLE public.trips_airport OWNER TO postgres;

--
-- Name: trips_airport_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trips_airport_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trips_airport_id_seq OWNER TO postgres;

--
-- Name: trips_airport_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.trips_airport_id_seq OWNED BY public.trips_airport.id;


--
-- Name: trips_event; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trips_event (
    id integer NOT NULL,
    name character varying(40) NOT NULL,
    category character varying(30) NOT NULL,
    price numeric(5,2) NOT NULL,
    is_active boolean NOT NULL,
    photo1 character varying(100),
    photo2 character varying(100),
    photo_main character varying(100),
    city character varying(30) NOT NULL,
    continent character varying(15) NOT NULL,
    coordinates character varying(15) NOT NULL,
    country character varying(15) NOT NULL,
    num character varying(15) NOT NULL,
    postalcode character varying(15) NOT NULL,
    street character varying(40) NOT NULL,
    ring_id_id integer NOT NULL
);


ALTER TABLE public.trips_event OWNER TO postgres;

--
-- Name: trips_event_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trips_event_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trips_event_id_seq OWNER TO postgres;

--
-- Name: trips_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.trips_event_id_seq OWNED BY public.trips_event.id;


--
-- Name: trips_eventtrip; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trips_eventtrip (
    id integer NOT NULL,
    total_tickets integer NOT NULL,
    total_price numeric(6,2) NOT NULL,
    eventid_id integer NOT NULL,
    ring_id integer
);


ALTER TABLE public.trips_eventtrip OWNER TO postgres;

--
-- Name: trips_eventtrip_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trips_eventtrip_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trips_eventtrip_id_seq OWNER TO postgres;

--
-- Name: trips_eventtrip_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.trips_eventtrip_id_seq OWNED BY public.trips_eventtrip.id;


--
-- Name: trips_flight; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trips_flight (
    id integer NOT NULL,
    airline character varying(18) NOT NULL,
    takeoff timestamp with time zone NOT NULL,
    landing timestamp with time zone NOT NULL,
    price numeric(5,2) NOT NULL,
    is_active boolean NOT NULL,
    destination_id integer NOT NULL,
    flightnum character varying(10) NOT NULL,
    origin_id integer NOT NULL,
    ring_id integer NOT NULL
);


ALTER TABLE public.trips_flight OWNER TO postgres;

--
-- Name: trips_flight_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trips_flight_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trips_flight_id_seq OWNER TO postgres;

--
-- Name: trips_flight_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.trips_flight_id_seq OWNED BY public.trips_flight.id;


--
-- Name: trips_flighttrip; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trips_flighttrip (
    id integer NOT NULL,
    people integer NOT NULL,
    total_price numeric(6,2) NOT NULL,
    go_flight_id integer NOT NULL,
    return_flight_id integer NOT NULL,
    ring_id integer NOT NULL,
    week_num integer NOT NULL
);


ALTER TABLE public.trips_flighttrip OWNER TO postgres;

--
-- Name: trips_flighttrip_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trips_flighttrip_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trips_flighttrip_id_seq OWNER TO postgres;

--
-- Name: trips_flighttrip_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.trips_flighttrip_id_seq OWNED BY public.trips_flighttrip.id;


--
-- Name: trips_hotel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trips_hotel (
    id integer NOT NULL,
    name character varying(40) NOT NULL,
    chain character varying(30) NOT NULL,
    stars character varying(2) NOT NULL,
    category character varying(30) NOT NULL,
    email character varying(40) NOT NULL,
    telephone character varying(15) NOT NULL,
    is_partner boolean NOT NULL,
    is_active boolean NOT NULL,
    has_parking boolean NOT NULL,
    has_swimingpool boolean NOT NULL,
    has_gym boolean NOT NULL,
    has_spa boolean NOT NULL,
    has_kindergarden boolean NOT NULL,
    has_single_room boolean NOT NULL,
    has_double_room boolean NOT NULL,
    has_cooking_24h boolean NOT NULL,
    has_checkin_24h boolean NOT NULL,
    has_all_inclusive boolean NOT NULL,
    has_half_board boolean NOT NULL,
    has_full_board boolean NOT NULL,
    has_only_breakfast boolean NOT NULL,
    allow_pet boolean NOT NULL,
    rating character varying(2) NOT NULL,
    rating_business character varying(2) NOT NULL,
    rating_family character varying(2) NOT NULL,
    rating_single character varying(2) NOT NULL,
    rating_couples character varying(2) NOT NULL,
    rating_pet character varying(2) NOT NULL,
    photo1 character varying(100),
    photo2 character varying(100),
    photo_main character varying(100),
    city character varying(30) NOT NULL,
    continent character varying(15) NOT NULL,
    coordinates character varying(15) NOT NULL,
    country character varying(15) NOT NULL,
    num character varying(15) NOT NULL,
    postalcode character varying(15) NOT NULL,
    street character varying(40) NOT NULL,
    parking_price numeric(4,2) NOT NULL,
    all_inclusive_price numeric(5,2) NOT NULL,
    breakfast_price numeric(4,2) NOT NULL,
    "doubleR_price" numeric(5,2) NOT NULL,
    full_board_price numeric(5,2) NOT NULL,
    half_board_price numeric(5,2) NOT NULL,
    kindergarden_price numeric(4,2) NOT NULL,
    "singleR_price" numeric(5,2) NOT NULL,
    spa_price numeric(4,2) NOT NULL,
    has_suite boolean NOT NULL,
    suite_price numeric(5,2) NOT NULL,
    ring_id integer NOT NULL
);


ALTER TABLE public.trips_hotel OWNER TO postgres;

--
-- Name: trips_hotel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trips_hotel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trips_hotel_id_seq OWNER TO postgres;

--
-- Name: trips_hotel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.trips_hotel_id_seq OWNED BY public.trips_hotel.id;


--
-- Name: trips_hoteltrip; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trips_hoteltrip (
    id integer NOT NULL,
    checkin timestamp with time zone NOT NULL,
    checkout timestamp with time zone NOT NULL,
    number_of_single_rooms integer NOT NULL,
    number_of_double_rooms integer NOT NULL,
    number_of_suites integer NOT NULL,
    parking_slots integer NOT NULL,
    spa_tickets integer NOT NULL,
    total_kindergarden_tickets integer NOT NULL,
    total_breakfast_tickets integer NOT NULL,
    total_fullboard_tickets integer NOT NULL,
    total_halfboard_tickets integer NOT NULL,
    total_all_inclusive_tickets integer NOT NULL,
    total_airport_transfer integer NOT NULL,
    total_price numeric(7,2) NOT NULL,
    hotelid_id integer NOT NULL,
    ring_id integer NOT NULL
);


ALTER TABLE public.trips_hoteltrip OWNER TO postgres;

--
-- Name: trips_hoteltrip_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trips_hoteltrip_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trips_hoteltrip_id_seq OWNER TO postgres;

--
-- Name: trips_hoteltrip_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.trips_hoteltrip_id_seq OWNED BY public.trips_hoteltrip.id;


--
-- Name: trips_ring; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trips_ring (
    id integer NOT NULL,
    name character varying(40) NOT NULL,
    sold_trips integer NOT NULL,
    trips_in_stock integer NOT NULL,
    city character varying(80),
    continent character varying(30),
    country character varying(80)
);


ALTER TABLE public.trips_ring OWNER TO postgres;

--
-- Name: trips_ring_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trips_ring_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trips_ring_id_seq OWNER TO postgres;

--
-- Name: trips_ring_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.trips_ring_id_seq OWNED BY public.trips_ring.id;


--
-- Name: trips_trip; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trips_trip (
    id integer NOT NULL,
    final_price numeric(7,2) NOT NULL,
    status character varying(1) NOT NULL,
    "eventTripID_id" integer NOT NULL,
    "flightTripID_id" integer NOT NULL,
    "hotelTripID_id" integer NOT NULL,
    "tripTemplateID_id" integer NOT NULL,
    "userAccountID_id" integer NOT NULL
);


ALTER TABLE public.trips_trip OWNER TO postgres;

--
-- Name: trips_triptemplate; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trips_triptemplate (
    id integer NOT NULL,
    internal_reference character varying(40) NOT NULL,
    comercial_reference character varying(40) NOT NULL,
    include_hotel boolean NOT NULL,
    include_flight boolean NOT NULL,
    include_event boolean NOT NULL,
    basic_price numeric(6,2) NOT NULL,
    stock integer NOT NULL,
    sold integer NOT NULL,
    refund integer NOT NULL,
    cancelled integer NOT NULL,
    is_active boolean NOT NULL,
    photo_main character varying(100),
    ring_id integer NOT NULL,
    main_description character varying(120) NOT NULL,
    secondary_description text NOT NULL,
    photo_1 character varying(100),
    photo_2 character varying(100),
    marketing_message character varying(60) NOT NULL,
    img_1 character varying(100),
    img_2 character varying(100),
    eventtrip_id_id integer,
    hoteltrip_id_id integer,
    date_to_go timestamp with time zone,
    date_to_return timestamp with time zone,
    photo_index character varying(100)
);


ALTER TABLE public.trips_triptemplate OWNER TO postgres;

--
-- Name: trips_trip_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trips_trip_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trips_trip_id_seq OWNER TO postgres;

--
-- Name: trips_trip_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.trips_trip_id_seq OWNED BY public.trips_triptemplate.id;


--
-- Name: trips_trip_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trips_trip_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trips_trip_id_seq1 OWNER TO postgres;

--
-- Name: trips_trip_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.trips_trip_id_seq1 OWNED BY public.trips_trip.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: pages_useraccount id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_useraccount ALTER COLUMN id SET DEFAULT nextval('public.pages_useraccount_id_seq'::regclass);


--
-- Name: trips_airport id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_airport ALTER COLUMN id SET DEFAULT nextval('public.trips_airport_id_seq'::regclass);


--
-- Name: trips_event id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_event ALTER COLUMN id SET DEFAULT nextval('public.trips_event_id_seq'::regclass);


--
-- Name: trips_eventtrip id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_eventtrip ALTER COLUMN id SET DEFAULT nextval('public.trips_eventtrip_id_seq'::regclass);


--
-- Name: trips_flight id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_flight ALTER COLUMN id SET DEFAULT nextval('public.trips_flight_id_seq'::regclass);


--
-- Name: trips_flighttrip id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_flighttrip ALTER COLUMN id SET DEFAULT nextval('public.trips_flighttrip_id_seq'::regclass);


--
-- Name: trips_hotel id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_hotel ALTER COLUMN id SET DEFAULT nextval('public.trips_hotel_id_seq'::regclass);


--
-- Name: trips_hoteltrip id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_hoteltrip ALTER COLUMN id SET DEFAULT nextval('public.trips_hoteltrip_id_seq'::regclass);


--
-- Name: trips_ring id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_ring ALTER COLUMN id SET DEFAULT nextval('public.trips_ring_id_seq'::regclass);


--
-- Name: trips_trip id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_trip ALTER COLUMN id SET DEFAULT nextval('public.trips_trip_id_seq1'::regclass);


--
-- Name: trips_triptemplate id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_triptemplate ALTER COLUMN id SET DEFAULT nextval('public.trips_trip_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add address	1	add_address
2	Can change address	1	change_address
3	Can delete address	1	delete_address
4	Can view address	1	view_address
5	Can add airport	2	add_airport
6	Can change airport	2	change_airport
7	Can delete airport	2	delete_airport
8	Can view airport	2	view_airport
9	Can add event	3	add_event
10	Can change event	3	change_event
11	Can delete event	3	delete_event
12	Can view event	3	view_event
13	Can add flight	4	add_flight
14	Can change flight	4	change_flight
15	Can delete flight	4	delete_flight
16	Can view flight	4	view_flight
17	Can add hotel	5	add_hotel
18	Can change hotel	5	change_hotel
19	Can delete hotel	5	delete_hotel
20	Can view hotel	5	view_hotel
21	Can add trip	6	add_trip
22	Can change trip	6	change_trip
23	Can delete trip	6	delete_trip
24	Can view trip	6	view_trip
25	Can add user account	7	add_useraccount
26	Can change user account	7	change_useraccount
27	Can delete user account	7	delete_useraccount
28	Can view user account	7	view_useraccount
29	Can add log entry	8	add_logentry
30	Can change log entry	8	change_logentry
31	Can delete log entry	8	delete_logentry
32	Can view log entry	8	view_logentry
33	Can add permission	9	add_permission
34	Can change permission	9	change_permission
35	Can delete permission	9	delete_permission
36	Can view permission	9	view_permission
37	Can add group	10	add_group
38	Can change group	10	change_group
39	Can delete group	10	delete_group
40	Can view group	10	view_group
41	Can add user	11	add_user
42	Can change user	11	change_user
43	Can delete user	11	delete_user
44	Can view user	11	view_user
45	Can add content type	12	add_contenttype
46	Can change content type	12	change_contenttype
47	Can delete content type	12	delete_contenttype
48	Can view content type	12	view_contenttype
49	Can add session	13	add_session
50	Can change session	13	change_session
51	Can delete session	13	delete_session
52	Can view session	13	view_session
53	Can add ring	14	add_ring
54	Can change ring	14	change_ring
55	Can delete ring	14	delete_ring
56	Can view ring	14	view_ring
57	Can add trip template	6	add_triptemplate
58	Can change trip template	6	change_triptemplate
59	Can delete trip template	6	delete_triptemplate
60	Can view trip template	6	view_triptemplate
61	Can add hotel trip	15	add_hoteltrip
62	Can change hotel trip	15	change_hoteltrip
63	Can delete hotel trip	15	delete_hoteltrip
64	Can view hotel trip	15	view_hoteltrip
65	Can add flight trip	16	add_flighttrip
66	Can change flight trip	16	change_flighttrip
67	Can delete flight trip	16	delete_flighttrip
68	Can view flight trip	16	view_flighttrip
69	Can add event trip	17	add_eventtrip
70	Can change event trip	17	change_eventtrip
71	Can delete event trip	17	delete_eventtrip
72	Can view event trip	17	view_eventtrip
73	Can add trip	18	add_trip
74	Can change trip	18	change_trip
75	Can delete trip	18	delete_trip
76	Can view trip	18	view_trip
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 76, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$180000$pvAX6XgjHFON$VBg/Ss64BLAbwAuu5R6yMxn6fZ/qm7hFahk5bGpH5wE=	2020-09-01 14:02:51.620006+00	t	froguez				t	t	2020-08-06 17:38:10.217644+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-08-08 15:19:45.867058+00	1	Melia Costa Calma	1	[{"added": {}}]	5	1
2	2020-08-08 15:48:24.255471+00	1	Address object (1)	1	[{"added": {}}]	1	1
3	2020-08-08 15:49:06.405446+00	1	Address object (1)	2	[]	1	1
4	2020-08-08 16:16:49.603871+00	1	Melia Costa Calma	2	[{"changed": {"fields": ["Continent", "Country", "City", "Has swimingpool", "Has gym", "Has spa", "Has single room", "Has double room", "Has checkin 24h", "Has all inclusive", "Has half board", "Has full board", "Has only breakfast", "Rating", "Rating single", "Rating couples"]}}]	5	1
5	2020-08-08 16:20:30.619936+00	2	Hotel Playa Esmeralda	1	[{"added": {}}]	5	1
6	2020-08-08 16:21:20.364844+00	2	Hotel Playa Esmeralda	2	[{"changed": {"fields": ["Has parking", "Has swimingpool", "Has gym", "Has single room", "Has double room", "Has checkin 24h", "Has all inclusive", "Has half board", "Has full board", "Has only breakfast", "Allow pet", "Rating", "Rating single", "Rating couples"]}}]	5	1
7	2020-08-08 16:24:46.390358+00	3	Hotel SH Crystal Beach	1	[{"added": {}}]	5	1
8	2020-08-08 16:24:57.066238+00	2	Hotel Playa Esmeralda	2	[{"changed": {"fields": ["Is active"]}}]	5	1
9	2020-08-08 16:25:08.427394+00	1	Melia Costa Calma	2	[{"changed": {"fields": ["Is active"]}}]	5	1
10	2020-08-08 16:25:15.577846+00	2	Hotel Playa Esmeralda	2	[]	5	1
11	2020-08-08 16:26:53.331845+00	2	Hotel Playa Esmeralda	2	[{"changed": {"fields": ["Category"]}}]	5	1
12	2020-08-08 16:27:04.015898+00	1	Melia Costa Calma	2	[{"changed": {"fields": ["Category"]}}]	5	1
13	2020-08-08 16:32:41.593858+00	1	Event object (1)	1	[{"added": {}}]	3	1
14	2020-08-08 16:33:18.700862+00	1	Event object (1)	2	[{"changed": {"fields": ["Name", "City"]}}]	3	1
15	2020-08-08 16:42:38.671878+00	4	Hotel Apollon Rust	1	[{"added": {}}]	5	1
16	2020-08-08 16:44:37.704742+00	2	Europa park	1	[{"added": {}}]	3	1
17	2020-08-08 16:55:54.258919+00	5	Fera Palace Hotel	1	[{"added": {}}]	5	1
18	2020-08-08 16:56:32.51257+00	2	Europa park	2	[{"changed": {"fields": ["Is active"]}}]	3	1
19	2020-08-08 16:57:17.997681+00	1	Melia Costa Calma	2	[{"changed": {"fields": ["Is partner"]}}]	5	1
20	2020-08-08 17:33:51.807126+00	1	Stuttgart Airport	1	[{"added": {}}]	2	1
21	2020-08-08 17:35:02.745971+00	2	Aeroporto internacional Salvador - Bahia	1	[{"added": {}}]	2	1
22	2020-08-08 17:35:55.874582+00	3	Fuerteventura Airport	1	[{"added": {}}]	2	1
23	2020-08-08 17:38:06.019312+00	4	Tallinn Airport	1	[{"added": {}}]	2	1
24	2020-08-08 17:38:41.826787+00	5	Viena Airport	1	[{"added": {}}]	2	1
25	2020-08-08 17:50:56.790166+00	6	Tallink Spa & Conference Hotel	1	[{"added": {}}]	5	1
26	2020-08-08 18:22:18.813476+00	4	IB1234	1	[{"added": {}}]	4	1
27	2020-08-08 18:29:46.92821+00	4	IB1234	3		4	1
28	2020-08-08 18:34:39.70514+00	5	IB1234	1	[{"added": {}}]	4	1
29	2020-08-08 19:13:10.550078+00	6	IB4321	1	[{"added": {}}]	4	1
30	2020-08-08 19:13:46.337893+00	6	IB4321	2	[{"changed": {"fields": ["Takeoff", "Landing", "Is active"]}}]	4	1
31	2020-08-08 19:13:53.793318+00	5	IB1234	2	[]	4	1
32	2020-08-08 19:14:07.654169+00	6	IB4321	2	[]	4	1
33	2020-08-08 19:14:13.200012+00	5	IB1234	2	[]	4	1
34	2020-08-08 19:14:32.354114+00	5	IB1234	2	[{"changed": {"fields": ["Landing"]}}]	4	1
35	2020-08-08 19:14:46.642515+00	5	IB1234	2	[{"changed": {"fields": ["Takeoff"]}}]	4	1
36	2020-08-08 20:45:49.509049+00	7	GO1234	1	[{"added": {}}]	4	1
37	2020-08-08 20:47:45.604131+00	8	GO4321	1	[{"added": {}}]	4	1
38	2020-08-08 20:49:49.880066+00	9	SA1234	1	[{"added": {}}]	4	1
39	2020-08-08 20:51:59.676087+00	10	SA4321	1	[{"added": {}}]	4	1
40	2020-08-09 07:24:02.291935+00	7	So Vienna	1	[{"added": {}}]	5	1
41	2020-08-09 07:24:28.275079+00	7	So Vienna	2	[{"changed": {"fields": ["Category"]}}]	5	1
42	2020-08-09 07:24:44.888373+00	6	Tallink Spa & Conference Hotel	2	[{"changed": {"fields": ["Category"]}}]	5	1
43	2020-08-09 07:25:44.505768+00	3	Hotel SH Crystal Beach	2	[{"changed": {"fields": ["Continent", "Country", "City"]}}]	5	1
44	2020-08-09 07:29:44.256063+00	8	Hotel Karntnerhof	1	[{"added": {}}]	5	1
45	2020-08-09 07:32:23.038568+00	9	Adlers Hotel Innsbruck	1	[{"added": {}}]	5	1
46	2020-08-09 07:44:31.857474+00	10	Hotel Adlers Schwarzer	1	[{"added": {}}]	5	1
47	2020-08-09 07:47:05.935267+00	11	Hotel Penz Innsbruck	1	[{"added": {}}]	5	1
48	2020-08-09 07:50:35.588346+00	12	International Yokohama Grand Hotel	1	[{"added": {}}]	5	1
49	2020-08-09 07:59:03.308506+00	3	Yokohama Nissan Pavilion	1	[{"added": {}}]	3	1
50	2020-08-09 12:50:35.904892+00	1	Costa Calma - Fuerteventura	1	[{"added": {}}]	14	1
51	2020-08-09 12:50:56.562687+00	2	Viena	1	[{"added": {}}]	14	1
52	2020-08-09 12:51:13.650146+00	3	Innsbruck - Tirol	1	[{"added": {}}]	14	1
53	2020-08-09 12:51:35.47802+00	4	Salvador de Bahia - Brazil	1	[{"added": {}}]	14	1
54	2020-08-09 12:52:01.047156+00	5	Yokohama	1	[{"added": {}}]	14	1
55	2020-08-09 12:52:16.492499+00	6	Rust - Germany	1	[{"added": {}}]	14	1
56	2020-08-09 13:09:14.710233+00	12	International Yokohama Grand Hotel	2	[{"changed": {"fields": ["Ring"]}}]	5	1
57	2020-08-09 13:09:34.787613+00	11	Hotel Penz Innsbruck	2	[{"changed": {"fields": ["Ring"]}}]	5	1
58	2020-08-09 13:09:47.296452+00	10	Hotel Adlers Schwarzer	2	[{"changed": {"fields": ["Ring"]}}]	5	1
59	2020-08-09 13:10:01.818232+00	9	Adlers Hotel Innsbruck	2	[{"changed": {"fields": ["Ring"]}}]	5	1
60	2020-08-09 13:10:17.126817+00	8	Hotel Karntnerhof	2	[{"changed": {"fields": ["Ring"]}}]	5	1
61	2020-08-09 13:10:45.551289+00	7	Tallinn	1	[{"added": {}}]	14	1
62	2020-08-09 13:11:05.33143+00	6	Tallink Spa & Conference Hotel	2	[{"changed": {"fields": ["Ring"]}}]	5	1
63	2020-08-09 13:11:19.7528+00	5	Fera Palace Hotel	2	[{"changed": {"fields": ["Ring"]}}]	5	1
64	2020-08-09 13:11:30.958669+00	4	Hotel Apollon Rust	2	[{"changed": {"fields": ["Ring"]}}]	5	1
65	2020-08-09 13:11:42.343745+00	3	Hotel SH Crystal Beach	2	[]	5	1
66	2020-08-09 13:19:12.708823+00	3	Yokohama Nissan Pavilion	2	[{"changed": {"fields": ["Ring"]}}]	3	1
67	2020-08-09 13:19:23.913908+00	2	Europa park	2	[{"changed": {"fields": ["Ring"]}}]	3	1
68	2020-08-09 13:19:35.475412+00	1	Matas Bay Windsurf	2	[]	3	1
69	2020-08-09 13:22:47.130866+00	10	SA4321	2	[{"changed": {"fields": ["Ring"]}}]	4	1
70	2020-08-09 13:22:57.435182+00	9	SA1234	2	[{"changed": {"fields": ["Ring"]}}]	4	1
71	2020-08-09 13:23:07.338106+00	8	GO4321	2	[{"changed": {"fields": ["Ring"]}}]	4	1
72	2020-08-09 13:23:29.734131+00	7	GO1234	2	[{"changed": {"fields": ["Ring"]}}]	4	1
73	2020-08-09 13:23:37.474965+00	6	IB4321	2	[]	4	1
74	2020-08-09 13:23:43.693263+00	5	IB1234	2	[]	4	1
75	2020-08-09 13:24:38.288787+00	6	Stuttgart - Germany	2	[{"changed": {"fields": ["Name"]}}]	14	1
76	2020-08-09 13:27:29.829795+00	8	Not in a Ring yet	1	[{"added": {}}]	14	1
77	2020-08-09 13:27:50.328721+00	8	Waiting for a Ring	2	[{"changed": {"fields": ["Name"]}}]	14	1
78	2020-08-10 11:19:14.421122+00	1	Costa Calma 2021	1	[{"added": {}}]	6	1
79	2020-08-10 11:53:11.321249+00	10	SA4321	2	[{"changed": {"fields": ["Takeoff", "Landing"]}}]	4	1
80	2020-08-10 11:53:42.137688+00	9	SA1234	2	[{"changed": {"fields": ["Takeoff", "Landing"]}}]	4	1
81	2020-08-10 11:54:22.932956+00	8	GO4321	2	[{"changed": {"fields": ["Takeoff", "Landing"]}}]	4	1
82	2020-08-10 11:54:47.060176+00	7	GO1234	2	[{"changed": {"fields": ["Takeoff", "Landing"]}}]	4	1
83	2020-08-10 11:55:17.026592+00	6	IB4321	2	[{"changed": {"fields": ["Takeoff", "Landing"]}}]	4	1
84	2020-08-10 11:55:43.60146+00	5	IB1234	2	[{"changed": {"fields": ["Takeoff", "Landing"]}}]	4	1
85	2020-08-10 12:11:51.339156+00	3	FlightTrip object (3)	1	[{"added": {}}]	16	1
86	2020-08-10 12:12:26.543732+00	4	FlightTrip object (4)	1	[{"added": {}}]	16	1
87	2020-08-10 12:14:14.830815+00	5	5	1	[{"added": {}}]	16	1
88	2020-08-10 12:14:38.800656+00	5	5	3		16	1
89	2020-08-10 12:14:38.804615+00	4	4	3		16	1
90	2020-08-10 12:14:38.807734+00	3	3	3		16	1
91	2020-08-10 12:28:04.16288+00	6	6	1	[{"added": {}}]	16	1
92	2020-08-10 12:46:27.713554+00	6	Innsbruck Airport	1	[{"added": {}}]	2	1
93	2020-08-10 12:47:02.720643+00	7	Yokohama International Airport	1	[{"added": {}}]	2	1
94	2020-08-10 12:49:57.780469+00	11	BA1234	1	[{"added": {}}]	4	1
95	2020-08-10 12:52:15.862281+00	12	BA4321	1	[{"added": {}}]	4	1
96	2020-08-10 12:56:26.805733+00	13	LU1234	1	[{"added": {}}]	4	1
97	2020-08-10 12:58:32.983281+00	14	LU4321	1	[{"added": {}}]	4	1
98	2020-08-10 12:58:44.449076+00	13	LU1234	2	[{"changed": {"fields": ["Landing"]}}]	4	1
99	2020-08-10 13:03:08.836955+00	14	LU4321	2	[]	4	1
100	2020-08-10 13:06:17.148389+00	15	JP1234	1	[{"added": {}}]	4	1
101	2020-08-10 13:08:55.401556+00	16	JP4321	1	[{"added": {}}]	4	1
102	2020-08-10 13:09:19.287477+00	13	LU1234	2	[{"changed": {"fields": ["Takeoff", "Landing"]}}]	4	1
103	2020-08-10 13:11:13.061707+00	7	7	1	[{"added": {}}]	16	1
104	2020-08-10 13:12:23.203775+00	8	8	1	[{"added": {}}]	16	1
105	2020-08-10 13:13:11.038838+00	9	9	1	[{"added": {}}]	16	1
106	2020-08-10 13:13:48.397361+00	8	8	2	[{"changed": {"fields": ["Total price"]}}]	16	1
107	2020-08-10 13:14:45.778223+00	7	7	2	[{"changed": {"fields": ["Total price"]}}]	16	1
108	2020-08-10 13:19:13.565186+00	6	6	2	[{"changed": {"fields": ["Week num"]}}]	16	1
109	2020-08-10 13:20:30.975972+00	10	10	1	[{"added": {}}]	16	1
110	2020-08-10 13:20:55.003686+00	10	10	2	[{"changed": {"fields": ["Ring"]}}]	16	1
111	2020-08-10 13:22:06.739571+00	11	11	1	[{"added": {}}]	16	1
112	2020-08-10 13:24:01.397308+00	2	2	1	[{"added": {}}]	17	1
113	2020-08-10 13:25:32.379882+00	3	3	1	[{"added": {}}]	17	1
114	2020-08-10 13:26:29.833731+00	4	4	1	[{"added": {}}]	17	1
115	2020-08-10 13:47:26.943524+00	2	Hotel Playa Esmeralda	2	[{"changed": {"fields": ["Has spa", "Spa price", "Single price", "Double room price", "Has suite", "Suite price", "All inclusive price", "Half board price", "Full board price", "Breakfast price"]}}]	5	1
116	2020-08-10 13:49:15.450681+00	2	2	1	[{"added": {}}]	15	1
117	2020-08-10 15:30:22.877919+00	1	Costa Calma 2021	2	[{"changed": {"fields": ["Photo 1", "Photo 2"]}}]	6	1
118	2020-08-10 15:41:16.430798+00	1	Costa Calma 2021	2	[{"changed": {"fields": ["Photo main", "Photo 1", "Photo 2"]}}]	6	1
119	2020-08-10 16:20:40.29215+00	1	Costa Calma 2021	2	[{"changed": {"fields": ["Secondary description"]}}]	6	1
120	2020-08-10 17:57:53.900819+00	12	International Yokohama Grand Hotel	2	[{"changed": {"fields": ["Parking price", "Has gym", "Single price", "Has double room", "Double room price", "Has suite", "Suite price", "Half board price", "Full board price", "Breakfast price"]}}]	5	1
121	2020-08-10 17:58:57.886436+00	3	3	1	[{"added": {}}]	15	1
122	2020-08-10 18:18:21.575341+00	12	International Yokohama Grand Hotel	2	[{"changed": {"fields": ["Has swimingpool"]}}]	5	1
123	2020-08-10 18:20:58.109354+00	2	Yokohama	1	[{"added": {}}]	6	1
124	2020-08-10 18:23:32.016744+00	10	10	2	[{"changed": {"fields": ["People", "Total price"]}}]	16	1
125	2020-08-10 18:25:12.610067+00	4	Hotel Apollon Rust	2	[{"changed": {"fields": ["Parking price", "Single price", "Double room price", "Breakfast price"]}}]	5	1
126	2020-08-10 18:32:42.519796+00	3	Europa Park	1	[{"added": {}}]	6	1
127	2020-08-10 19:30:19.320202+00	2	Yokohama	2	[{"changed": {"fields": ["Img 1", "Img 2"]}}]	6	1
128	2020-08-10 19:31:40.868549+00	3	Europa Park	2	[{"changed": {"fields": ["Img 1"]}}]	6	1
129	2020-08-10 19:32:35.433602+00	1	Costa Calma 2021	2	[{"changed": {"fields": ["Photo main", "Img 1", "Img 2"]}}]	6	1
130	2020-08-10 19:32:52.930778+00	3	Europa Park	2	[]	6	1
131	2020-08-11 18:33:11.887932+00	2	Yokohama	2	[]	6	1
132	2020-08-26 16:57:59.74675+00	2	2	2	[{"changed": {"fields": ["Ring"]}}]	17	1
133	2020-08-26 16:58:11.038543+00	3	3	2	[{"changed": {"fields": ["Ring"]}}]	17	1
134	2020-08-26 16:58:22.566801+00	4	4	2	[{"changed": {"fields": ["Ring"]}}]	17	1
135	2020-08-27 18:48:19.660097+00	1	Costa Calma 2021	2	[{"changed": {"fields": ["Date to go", "Date to return"]}}]	6	1
136	2020-08-27 18:49:28.791056+00	2	Yokohama	2	[{"changed": {"fields": ["Date to go", "Date to return"]}}]	6	1
137	2020-08-27 18:50:07.648276+00	3	Europa Park	2	[{"changed": {"fields": ["Date to go", "Date to return"]}}]	6	1
138	2020-08-27 18:50:52.783924+00	1	Costa Calma - Fuerteventura	2	[{"changed": {"fields": ["City", "Country", "Continent"]}}]	14	1
139	2020-08-27 18:51:15.725877+00	7	Tallinn	2	[{"changed": {"fields": ["City", "Country", "Continent"]}}]	14	1
140	2020-08-27 18:51:56.289552+00	6	Stuttgart - Germany	2	[{"changed": {"fields": ["City", "Country", "Continent"]}}]	14	1
141	2020-08-27 18:52:10.433503+00	5	Yokohama	2	[{"changed": {"fields": ["City", "Country", "Continent"]}}]	14	1
142	2020-08-27 18:52:35.62462+00	4	Salvador de Bahia - Brazil	2	[{"changed": {"fields": ["City", "Country", "Continent"]}}]	14	1
143	2020-08-27 18:52:50.034789+00	3	Innsbruck - Tirol	2	[{"changed": {"fields": ["City", "Country", "Continent"]}}]	14	1
144	2020-08-27 18:53:05.450622+00	2	Viena	2	[{"changed": {"fields": ["City", "Country", "Continent"]}}]	14	1
145	2020-08-27 18:53:12.391278+00	1	Costa Calma - Fuerteventura	2	[]	14	1
146	2020-08-28 14:22:45.343152+00	8	Costa Rica - Playa Flamingo	2	[{"changed": {"fields": ["Name", "City", "Country", "Continent"]}}]	14	1
147	2020-08-28 14:34:53.23906+00	13	Margaritaville Beach Resort Playa Flamin	1	[{"added": {}}]	5	1
148	2020-08-28 14:37:29.331346+00	4	Pacific Coast Dive Center	1	[{"added": {}}]	3	1
149	2020-08-28 14:38:30.237043+00	5	5	1	[{"added": {}}]	17	1
150	2020-08-28 14:41:18.791118+00	4	4	1	[{"added": {}}]	15	1
151	2020-08-28 14:49:43.859466+00	5	5	1	[{"added": {}}]	15	1
152	2020-08-28 14:52:59.303704+00	6	6	1	[{"added": {}}]	15	1
153	2020-08-28 14:55:43.12441+00	7	7	1	[{"added": {}}]	15	1
154	2020-08-28 14:59:40.239623+00	8	8	1	[{"added": {}}]	15	1
155	2020-08-28 15:02:13.411133+00	9	9	1	[{"added": {}}]	15	1
156	2020-08-28 15:15:27.804787+00	5	Winter World Master Games	1	[{"added": {}}]	3	1
157	2020-08-28 15:27:15.191136+00	6	Palaces	1	[{"added": {}}]	3	1
158	2020-08-28 15:46:36.936356+00	6	6	1	[{"added": {}}]	17	1
159	2020-08-28 15:47:12.0284+00	7	7	1	[{"added": {}}]	17	1
160	2020-08-28 18:56:03.607432+00	4	Salvador de Bahia	1	[{"added": {}}]	6	1
161	2020-08-28 19:11:21.89206+00	5	Viena	1	[{"added": {}}]	6	1
162	2020-08-28 19:25:52.381808+00	6	Innsbruck	1	[{"added": {}}]	6	1
163	2020-08-28 19:33:26.128457+00	7	Tallin	1	[{"added": {}}]	6	1
164	2020-08-28 19:52:51.218519+00	8	CR-Playa Flamingo	1	[{"added": {}}]	6	1
165	2020-08-28 19:57:23.232288+00	8	CR-Playa Flamingo	2	[{"changed": {"fields": ["Hoteltrip id"]}}]	6	1
166	2020-08-28 19:57:40.740937+00	7	Tallin	2	[{"changed": {"fields": ["Hoteltrip id"]}}]	6	1
167	2020-08-28 19:57:54.077676+00	6	Innsbruck	2	[]	6	1
168	2020-08-28 19:58:13.931944+00	5	Viena	2	[{"changed": {"fields": ["Hoteltrip id"]}}]	6	1
169	2020-08-28 19:59:17.997611+00	4	Salvador de Bahia	2	[{"changed": {"fields": ["Hoteltrip id"]}}]	6	1
170	2020-08-28 20:07:43.271318+00	3	Innsbruck - Tirol	2	[{"changed": {"fields": ["Country"]}}]	14	1
171	2020-08-28 21:53:04.265714+00	3	Europa Park	2	[{"changed": {"fields": ["Img 2"]}}]	6	1
172	2020-08-28 21:54:43.467743+00	3	Europa Park	2	[{"changed": {"fields": ["Hoteltrip id", "Eventtrip id"]}}]	6	1
173	2020-08-28 21:55:25.286754+00	1	Costa Calma 2021	2	[{"changed": {"fields": ["Hoteltrip id", "Eventtrip id"]}}]	6	1
174	2020-08-28 21:56:20.127312+00	2	Yokohama	2	[{"changed": {"fields": ["Hoteltrip id", "Eventtrip id"]}}]	6	1
175	2020-08-28 22:01:25.976527+00	7	No event	1	[{"added": {}}]	3	1
176	2020-08-28 22:04:57.259571+00	8	8	1	[{"added": {}}]	17	1
177	2020-08-28 22:05:19.131042+00	8	8	3		17	1
178	2020-08-28 22:05:53.696554+00	9	No Ring	1	[{"added": {}}]	14	1
179	2020-08-28 22:06:35.605192+00	9	No Ring	2	[]	14	1
180	2020-08-28 22:07:03.49254+00	9	9	1	[{"added": {}}]	17	1
181	2020-08-28 22:08:26.238926+00	7	Tallin	2	[{"changed": {"fields": ["Eventtrip id"]}}]	6	1
182	2020-08-28 22:08:44.217062+00	4	Salvador de Bahia	2	[{"changed": {"fields": ["Eventtrip id"]}}]	6	1
183	2020-08-29 07:39:00.753895+00	2	Yokohama	2	[]	6	1
184	2020-08-29 07:46:08.316955+00	8	CR-Playa Flamingo	2	[{"changed": {"fields": ["Photo home page"]}}]	6	1
185	2020-08-29 07:47:04.780084+00	7	Tallin	2	[{"changed": {"fields": ["Photo home page"]}}]	6	1
186	2020-08-29 07:47:25.85193+00	6	Innsbruck	2	[{"changed": {"fields": ["Photo home page"]}}]	6	1
187	2020-08-29 07:56:28.730444+00	5	Viena	2	[{"changed": {"fields": ["Photo home page"]}}]	6	1
188	2020-08-29 07:57:01.36133+00	4	Salvador de Bahia	2	[{"changed": {"fields": ["Photo home page"]}}]	6	1
189	2020-08-29 07:57:43.264707+00	4	Salvador de Bahia	2	[{"changed": {"fields": ["Photo main", "Img 1"]}}]	6	1
190	2020-08-29 07:58:39.267736+00	3	Europa Park	2	[{"changed": {"fields": ["Photo home page"]}}]	6	1
191	2020-08-29 08:11:25.982737+00	2	Yokohama	2	[{"changed": {"fields": ["Photo home page"]}}]	6	1
192	2020-08-29 08:11:48.2826+00	1	Costa Calma 2021	2	[{"changed": {"fields": ["Photo home page"]}}]	6	1
193	2020-08-30 11:23:32.486178+00	8	CR-Playa Flamingo	2	[{"changed": {"fields": ["Comercial reference"]}}]	6	1
194	2020-08-30 11:24:16.123592+00	1	Costa Calma 2021	2	[{"changed": {"fields": ["Comercial reference", "Marketing message"]}}]	6	1
195	2020-08-30 11:29:36.925582+00	7	Tallin	2	[{"changed": {"fields": ["Marketing message"]}}]	6	1
196	2020-08-30 11:32:29.612192+00	7	Tallin	2	[{"changed": {"fields": ["Marketing message"]}}]	6	1
197	2020-08-30 11:33:03.720502+00	5	Viena	2	[{"changed": {"fields": ["Marketing message"]}}]	6	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 197, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	trips	address
2	trips	airport
3	trips	event
4	trips	flight
5	trips	hotel
7	pages	useraccount
8	admin	logentry
9	auth	permission
10	auth	group
11	auth	user
12	contenttypes	contenttype
13	sessions	session
14	trips	ring
6	trips	triptemplate
15	trips	hoteltrip
16	trips	flighttrip
17	trips	eventtrip
18	trips	trip
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 18, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-08-06 16:21:18.815693+00
2	auth	0001_initial	2020-08-06 16:21:18.890377+00
3	admin	0001_initial	2020-08-06 16:21:18.954453+00
4	admin	0002_logentry_remove_auto_add	2020-08-06 16:21:19.005529+00
5	admin	0003_logentry_add_action_flag_choices	2020-08-06 16:21:19.016492+00
6	contenttypes	0002_remove_content_type_name	2020-08-06 16:21:19.039264+00
7	auth	0002_alter_permission_name_max_length	2020-08-06 16:21:19.050329+00
8	auth	0003_alter_user_email_max_length	2020-08-06 16:21:19.064329+00
9	auth	0004_alter_user_username_opts	2020-08-06 16:21:19.07969+00
10	auth	0005_alter_user_last_login_null	2020-08-06 16:21:19.101677+00
11	auth	0006_require_contenttypes_0002	2020-08-06 16:21:19.10433+00
12	auth	0007_alter_validators_add_error_messages	2020-08-06 16:21:19.118338+00
13	auth	0008_alter_user_username_max_length	2020-08-06 16:21:19.138455+00
14	auth	0009_alter_user_last_name_max_length	2020-08-06 16:21:19.158006+00
15	auth	0010_alter_group_name_max_length	2020-08-06 16:21:19.17077+00
16	auth	0011_update_proxy_permissions	2020-08-06 16:21:19.182704+00
17	pages	0001_initial	2020-08-06 16:21:19.191792+00
18	sessions	0001_initial	2020-08-06 16:21:19.204306+00
19	trips	0001_initial	2020-08-06 16:21:19.24249+00
20	pages	0002_auto_20200807_0901	2020-08-07 09:02:02.714859+00
21	pages	0003_remove_useraccount_firstname	2020-08-07 09:05:35.922638+00
22	trips	0002_auto_20200807_1211	2020-08-07 12:11:57.884225+00
23	trips	0003_auto_20200808_0834	2020-08-08 08:34:30.137586+00
24	trips	0004_auto_20200808_0842	2020-08-08 08:42:18.537556+00
25	trips	0005_auto_20200808_0852	2020-08-08 08:52:21.250662+00
26	trips	0006_auto_20200808_1516	2020-08-08 15:16:25.409862+00
27	trips	0007_auto_20200808_1547	2020-08-08 15:48:08.665695+00
28	trips	0008_auto_20200808_1613	2020-08-08 16:13:53.90496+00
29	trips	0009_auto_20200808_1653	2020-08-08 16:53:41.145776+00
30	trips	0010_auto_20200808_1719	2020-08-08 17:19:45.308426+00
31	trips	0011_remove_flight_flightnum	2020-08-08 18:11:19.690481+00
32	trips	0012_auto_20200808_1815	2020-08-08 18:15:10.982238+00
33	trips	0013_auto_20200808_1832	2020-08-08 18:32:39.755856+00
34	trips	0014_hotel_parking_price	2020-08-09 12:21:32.566089+00
35	trips	0015_auto_20200809_1225	2020-08-09 12:25:16.335707+00
36	trips	0016_auto_20200809_1248	2020-08-09 12:48:59.703556+00
37	trips	0017_auto_20200809_1258	2020-08-09 12:58:58.578274+00
38	trips	0018_auto_20200809_1305	2020-08-09 13:05:22.895423+00
39	trips	0019_auto_20200809_1315	2020-08-09 13:16:02.432673+00
40	trips	0020_auto_20200809_1318	2020-08-09 13:18:24.714378+00
41	trips	0021_auto_20200809_1332	2020-08-09 13:32:10.26337+00
42	trips	0022_auto_20200809_1828	2020-08-09 18:28:18.799231+00
43	trips	0023_auto_20200809_1921	2020-08-09 19:21:50.527649+00
44	trips	0024_trip	2020-08-09 20:44:36.380319+00
45	trips	0025_auto_20200809_2052	2020-08-09 20:52:28.038953+00
46	trips	0026_auto_20200810_1125	2020-08-10 11:25:25.071867+00
47	trips	0027_flighttrip_ring	2020-08-10 11:45:03.581359+00
48	trips	0028_flighttrip_week_num	2020-08-10 12:24:57.750423+00
49	trips	0029_auto_20200810_1316	2020-08-10 13:16:19.743307+00
50	trips	0030_hoteltrip_ring	2020-08-10 13:37:03.677855+00
51	trips	0031_auto_20200810_1339	2020-08-10 13:39:06.725681+00
52	trips	0032_auto_20200810_1526	2020-08-10 15:26:26.870535+00
53	trips	0032_triptemplate_marketing_message	2020-08-10 19:12:17.216392+00
54	trips	0033_auto_20200810_1929	2020-08-10 19:29:25.395845+00
55	trips	0034_auto_20200826_1504	2020-08-26 15:04:45.049103+00
56	trips	0035_auto_20200826_1539	2020-08-26 15:39:31.9782+00
57	trips	0036_auto_20200826_1610	2020-08-26 16:42:17.78406+00
58	trips	0037_auto_20200826_1642	2020-08-26 16:42:17.890983+00
59	trips	0038_auto_20200826_1645	2020-08-26 16:45:53.877864+00
60	trips	0039_auto_20200826_1648	2020-08-26 16:48:18.292119+00
61	trips	0040_auto_20200826_1710	2020-08-26 17:10:23.373761+00
62	trips	0041_auto_20200826_2036	2020-08-26 20:36:46.270999+00
63	trips	0042_auto_20200827_1011	2020-08-27 10:11:42.950918+00
64	trips	0043_auto_20200827_1032	2020-08-27 10:33:37.850749+00
65	trips	0044_auto_20200827_1054	2020-08-27 10:54:59.618865+00
66	trips	0042_auto_20200827_1109	2020-08-27 11:09:31.295803+00
67	trips	0043_auto_20200827_1840	2020-08-27 18:40:19.727422+00
68	trips	0044_triptemplate_photo_home_page	2020-08-29 07:44:24.355953+00
69	trips	0045_auto_20200829_2147	2020-08-29 21:47:20.11382+00
70	pages	0004_auto_20200904_1100	2020-09-04 11:25:03.888626+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 70, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
tu7lolbhvyxk5nr43mhtl2j9d8pdc3zy	YmY2NDE2MTVjMWRiNzE1ZmE4N2Y2YjhhYWMxMWU5YjczYzdlM2Q0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZGYyNjFlNGZmZmVkZTgxYjc5OGUwZGNlNWViNDMwYWY3MmViYjM2In0=	2020-08-20 17:38:21.245815+00
571ypu2nh4gdei3ad9agbjwgkgiw9fay	YmY2NDE2MTVjMWRiNzE1ZmE4N2Y2YjhhYWMxMWU5YjczYzdlM2Q0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZGYyNjFlNGZmZmVkZTgxYjc5OGUwZGNlNWViNDMwYWY3MmViYjM2In0=	2020-08-21 08:13:06.03528+00
hirc5rkvou6e42hsvmdbp1cf2tbr5qxo	YmY2NDE2MTVjMWRiNzE1ZmE4N2Y2YjhhYWMxMWU5YjczYzdlM2Q0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZGYyNjFlNGZmZmVkZTgxYjc5OGUwZGNlNWViNDMwYWY3MmViYjM2In0=	2020-08-21 09:26:19.487346+00
h6drzjttqhgdm924sukynybe7agngu5x	YmY2NDE2MTVjMWRiNzE1ZmE4N2Y2YjhhYWMxMWU5YjczYzdlM2Q0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZGYyNjFlNGZmZmVkZTgxYjc5OGUwZGNlNWViNDMwYWY3MmViYjM2In0=	2020-08-22 07:48:05.434523+00
re11kiuivoq9qfuer55tv8wjfy4xugjx	YmY2NDE2MTVjMWRiNzE1ZmE4N2Y2YjhhYWMxMWU5YjczYzdlM2Q0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZGYyNjFlNGZmZmVkZTgxYjc5OGUwZGNlNWViNDMwYWY3MmViYjM2In0=	2020-08-23 19:22:59.868879+00
39znq0mul1zzh02c9dovdxlf21kv83tb	YmY2NDE2MTVjMWRiNzE1ZmE4N2Y2YjhhYWMxMWU5YjczYzdlM2Q0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZGYyNjFlNGZmZmVkZTgxYjc5OGUwZGNlNWViNDMwYWY3MmViYjM2In0=	2020-08-24 12:26:10.507098+00
kob2cmd6eq2bvbzwrzdmjcbpykvqs0lz	YmY2NDE2MTVjMWRiNzE1ZmE4N2Y2YjhhYWMxMWU5YjczYzdlM2Q0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZGYyNjFlNGZmZmVkZTgxYjc5OGUwZGNlNWViNDMwYWY3MmViYjM2In0=	2020-08-24 17:53:12.596726+00
6rllkhaczo0k1r88b9f1kmkohz91ra0y	YmY2NDE2MTVjMWRiNzE1ZmE4N2Y2YjhhYWMxMWU5YjczYzdlM2Q0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZGYyNjFlNGZmZmVkZTgxYjc5OGUwZGNlNWViNDMwYWY3MmViYjM2In0=	2020-09-09 15:12:27.791911+00
9rdwobnmxj9udm8nbm7j9iemgcuk7x1o	YmY2NDE2MTVjMWRiNzE1ZmE4N2Y2YjhhYWMxMWU5YjczYzdlM2Q0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZGYyNjFlNGZmZmVkZTgxYjc5OGUwZGNlNWViNDMwYWY3MmViYjM2In0=	2020-09-10 09:47:23.583925+00
68xiwx2z9o66qw40vrbief2cjwhnweqg	YmY2NDE2MTVjMWRiNzE1ZmE4N2Y2YjhhYWMxMWU5YjczYzdlM2Q0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZGYyNjFlNGZmZmVkZTgxYjc5OGUwZGNlNWViNDMwYWY3MmViYjM2In0=	2020-09-10 10:13:10.641682+00
5le8y9wvpg38v1ht6ic26snnurtgd4wp	YmY2NDE2MTVjMWRiNzE1ZmE4N2Y2YjhhYWMxMWU5YjczYzdlM2Q0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZGYyNjFlNGZmZmVkZTgxYjc5OGUwZGNlNWViNDMwYWY3MmViYjM2In0=	2020-09-11 13:50:08.173382+00
899mcw3caz939qzzkjltiix2ckvowkt5	YmY2NDE2MTVjMWRiNzE1ZmE4N2Y2YjhhYWMxMWU5YjczYzdlM2Q0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZGYyNjFlNGZmZmVkZTgxYjc5OGUwZGNlNWViNDMwYWY3MmViYjM2In0=	2020-09-12 07:45:24.050734+00
22s0bc3kn7iw9nweo11y7xj898sdng0n	YmY2NDE2MTVjMWRiNzE1ZmE4N2Y2YjhhYWMxMWU5YjczYzdlM2Q0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZGYyNjFlNGZmZmVkZTgxYjc5OGUwZGNlNWViNDMwYWY3MmViYjM2In0=	2020-09-12 13:58:34.246301+00
6rcq6zcf2oyazphdvz5wqscngoperwc6	YmY2NDE2MTVjMWRiNzE1ZmE4N2Y2YjhhYWMxMWU5YjczYzdlM2Q0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZGYyNjFlNGZmZmVkZTgxYjc5OGUwZGNlNWViNDMwYWY3MmViYjM2In0=	2020-09-12 18:33:05.173599+00
v6sxhvqb9529qcb8zx22f79cveu24zuf	YmY2NDE2MTVjMWRiNzE1ZmE4N2Y2YjhhYWMxMWU5YjczYzdlM2Q0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZGYyNjFlNGZmZmVkZTgxYjc5OGUwZGNlNWViNDMwYWY3MmViYjM2In0=	2020-09-15 14:02:51.665877+00
\.


--
-- Data for Name: pages_useraccount; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_useraccount (id, username, password, email, is_active) FROM stdin;
1	buba	Caracola2	buba@gmail.com	t
3	juan	Ojala	james@gmail.com	t
10	aver	aver	aver@gmail.com	t
13	puesvale	yeah	puesvale@gmail.com	t
23	hiokh	123	hiih@gmail.com	t
\.


--
-- Name: pages_useraccount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pages_useraccount_id_seq', 24, true);


--
-- Data for Name: trips_airport; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trips_airport (id, name, city, continent, coordinates, country, num, postalcode, street) FROM stdin;
1	Stuttgart Airport	Stuttgart	Europe		Germany	00000	00000	00000
2	Aeroporto internacional Salvador - Bahia	Salvador de Bahia	America		Brazil	00000	00000	00000
3	Fuerteventura Airport	Fuerteventura	Europe		Spain	00000	00000	00000
4	Tallinn Airport	Tallinn	Europe		Estonia	00000	00000	00000
5	Viena Airport	Viena	Europe		Austria	00000	00000	00000
6	Innsbruck Airport	Innsbruck	Europe		Austria	00000	00000	00000
7	Yokohama International Airport	Yokohama	Asi		Japan	00000	00000	00000
\.


--
-- Name: trips_airport_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trips_airport_id_seq', 7, true);


--
-- Data for Name: trips_event; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trips_event (id, name, category, price, is_active, photo1, photo2, photo_main, city, continent, coordinates, country, num, postalcode, street, ring_id_id) FROM stdin;
3	Yokohama Nissan Pavilion	Technology	0.00	t	photos/Events/2020/08/09/EeOaGzTUEAA7QqR.jpg	photos/Events/2020/08/09/0eed9cc4-nissan-pavilion-formula-e-ride-1200x858.jpg	photos/Events/2020/08/09/ogimage.png	Yokohama	Asia		Japan	00000	00000	00000	5
2	Europa park	Theme park	30.00	t	photos/Events/2020/08/08/EP12_Portugal_Atlantica_Wodan.jpg	photos/Events/2020/08/08/europa-park-wodan-bluefire-e1589198057790.jpg	photos/Events/2020/08/08/main_Axz9J8n.jpg	Rust	Europe		Germany	00000	00000	00000	6
1	Matas Bay Windsurf	Windsurf	20.00	t	photos/Events/2020/08/08/MatasBay.jpg	photos/Events/2020/08/08/windsurf.jpg	photos/Events/2020/08/08/main.jpg	Fuerteventura	Europe		Spain	00000	00000	00000	1
4	Pacific Coast Dive Center	Beach	18.00	t	photos/Events/2020/08/28/event_costa_rica_3.png	photos/Events/2020/08/28/event_costa_rica.png	photos/Events/2020/08/28/event_costa_rica_2.png	Guanacaste	America		Costa Rica	00000	00000	00000	8
5	Winter World Master Games	Sky	15.00	f	photos/Events/2020/08/28/event_insbruck3.jpg	photos/Events/2020/08/28/event_innsbruck2.jpg	photos/Events/2020/08/28/event_innsbruck4.jpg	Innsbruck	Europe		Austria	00000	00000	00000	3
6	Palaces	Cultural	50.00	f	photos/Events/2020/08/28/Hofburg_Palace.jpg	photos/Events/2020/08/28/SchönbrunnPalace.jpg	photos/Events/2020/08/28/belvedere-palaces-0.jpg	Viena	Europe		Austria	00000	00000	00000	2
7	No event	No event	0.00	f	photos/Events/2020/08/28/Blank_image_lz1dENg.jpg	photos/Events/2020/08/28/Blank_image_hgCvfKl.jpg	photos/Events/2020/08/28/Blank_image.jpg	False	False		False	00000	00000	00000	7
\.


--
-- Name: trips_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trips_event_id_seq', 7, true);


--
-- Data for Name: trips_eventtrip; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trips_eventtrip (id, total_tickets, total_price, eventid_id, ring_id) FROM stdin;
2	2	0.00	3	5
3	4	120.00	2	6
4	10	200.00	1	1
5	10	180.00	4	8
6	6	76.00	5	3
7	2	100.00	6	2
9	0	0.00	7	9
\.


--
-- Name: trips_eventtrip_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trips_eventtrip_id_seq', 9, true);


--
-- Data for Name: trips_flight; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trips_flight (id, airline, takeoff, landing, price, is_active, destination_id, flightnum, origin_id, ring_id) FROM stdin;
10	SAS	2021-09-06 16:30:00+00	2021-09-06 20:30:00+00	215.00	t	4	SA4321	1	6
9	SAS	2021-09-04 19:15:00+00	2021-09-04 22:15:00+00	285.00	t	1	SA1234	4	6
8	GOL	2021-09-08 20:45:00+00	2021-09-08 16:15:00+00	980.00	t	4	GO4321	2	4
7	GOL	2021-09-02 09:45:00+00	2021-09-02 22:45:00+00	950.00	t	2	GO1234	4	4
6	IBERIA	2021-09-07 12:30:00+00	2021-09-07 20:30:00+00	415.00	t	4	IB4321	3	1
5	IBERIA	2021-09-01 10:30:00+00	2021-09-01 14:15:00+00	365.00	t	3	IB1234	4	1
11	BALTICS AIRLINES	2021-10-01 12:48:54+00	2021-10-01 14:49:19+00	200.00	t	5	BA1234	4	2
12	BALTICS AIRLINES	2021-10-05 12:50:43+00	2021-10-05 13:51:31+00	186.00	t	4	BA4321	5	2
14	Lufthansa	2021-11-05 12:57:36+00	2021-11-05 14:30:06+00	350.00	t	4	LU4321	6	3
15	Japan Airlines	2021-11-01 13:04:59+00	2021-11-02 08:05:16+00	450.00	t	7	JP1234	4	5
16	Japan Airlines	2021-11-05 13:07:24+00	2021-11-05 17:08:01+00	470.00	t	4	JP4321	7	5
13	Lufthansa	2021-12-01 12:55:25+00	2021-12-01 14:55:47+00	380.00	t	6	LU1234	4	3
\.


--
-- Name: trips_flight_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trips_flight_id_seq', 16, true);


--
-- Data for Name: trips_flighttrip; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trips_flighttrip (id, people, total_price, go_flight_id, return_flight_id, ring_id, week_num) FROM stdin;
9	2	1840.00	15	16	5	44
8	2	1460.00	13	14	3	48
7	2	772.00	11	12	2	39
6	2	1560.00	5	6	1	35
11	2	3860.00	7	8	4	35
10	4	2000.00	10	10	6	35
\.


--
-- Name: trips_flighttrip_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trips_flighttrip_id_seq', 11, true);


--
-- Data for Name: trips_hotel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trips_hotel (id, name, chain, stars, category, email, telephone, is_partner, is_active, has_parking, has_swimingpool, has_gym, has_spa, has_kindergarden, has_single_room, has_double_room, has_cooking_24h, has_checkin_24h, has_all_inclusive, has_half_board, has_full_board, has_only_breakfast, allow_pet, rating, rating_business, rating_family, rating_single, rating_couples, rating_pet, photo1, photo2, photo_main, city, continent, coordinates, country, num, postalcode, street, parking_price, all_inclusive_price, breakfast_price, "doubleR_price", full_board_price, half_board_price, kindergarden_price, "singleR_price", spa_price, has_suite, suite_price, ring_id) FROM stdin;
1	Melia Costa Calma	Melia	4	Beach	fernando.sininen@gmail.com	+372123123123	t	t	f	t	t	t	f	t	t	f	t	t	t	t	t	f	9			8	8		photos/Hotels/2020/08/08/134897383.jpg	photos/Hotels/2020/08/08/134905909.jpg	photos/Hotels/2020/08/08/main.jpg	Fuerteventura	Europe		Spain	00000	00000	00000	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	f	0.00	1
7	So Vienna	Independent	5	Cultural	fernando.sininen@gmail.com	+372123123123	f	t	f	f	t	f	f	t	t	f	f	f	t	t	t	f	9	9	8	8	8		photos/Hotels/2020/08/09/161712787.jpg	photos/Hotels/2020/08/09/246694204.jpg	photos/Hotels/2020/08/09/216243079.jpg	Viena	Europe		Austria	00000	00000	00000	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	f	0.00	1
11	Hotel Penz Innsbruck	Penz	4	Sky	fernando.sininen@gmail.com	+372123456789	f	f	f	f	f	f	f	f	f	f	t	f	t	t	t	f	8	7	7	7	7		photos/Hotels/2020/08/09/82531622.jpg	photos/Hotels/2020/08/09/82533122.jpg	photos/Hotels/2020/08/09/82541870.jpg	Innsbruck	Europe		Austria	00000	00000	00000	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	f	0.00	3
10	Hotel Adlers Schwarzer	Adlers	4	Sky	fernando.sininen@gmail.com	+371123456789	t	t	f	f	t	f	f	t	t	t	t	f	t	t	t	t	9	8	7	8	9	7	photos/Hotels/2020/08/09/259911268.jpg	photos/Hotels/2020/08/09/31310699.jpg	photos/Hotels/2020/08/09/46381750.jpg	Innsbruck	Europe		Austria	00000	00000	00000	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	f	0.00	3
9	Adlers Hotel Innsbruck	Adlers	4	Sky	fernando.sininen@gmail.com	+372123456789	t	t	t	f	t	f	f	t	t	t	t	f	t	t	t	f	9	9		9	9		photos/Hotels/2020/08/09/26373072.jpg	photos/Hotels/2020/08/09/61767305.jpg	photos/Hotels/2020/08/09/46380811.jpg	Innsbruck	Europe		Austria	00000	00000	00000	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	f	0.00	3
8	Hotel Karntnerhof	Independent	3	Cultural	fernando.sininen@gmail.com	+37123456789	t	t	f	f	f	f	f	f	t	f	t	f	t	t	t	f	8	8		8	8		photos/Hotels/2020/08/09/19489320.jpg	photos/Hotels/2020/08/09/217078955.jpg	photos/Hotels/2020/08/09/16187419.jpg	Vienna	Europe		Austria	00000	00000	00000	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	f	0.00	2
6	Tallink Spa & Conference Hotel	Tallink	4	Cultural	fernando.sininen@gmail.com	+372123123123	t	t	f	t	t	t	f	t	t	f	t	t	t	t	t	f	8	8	8	8	8		photos/Hotels/2020/08/08/211897761.jpg	photos/Hotels/2020/08/08/227747219.jpg	photos/Hotels/2020/08/08/main.png	Tallinn	Europe		Estonia	00000	00000	00000	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	f	0.00	7
5	Fera Palace Hotel	Fera	5	Beach	fernando.sininen@gmail.com	+372123123123	t	t	f	f	t	f	f	t	t	f	t	f	t	t	t	f	9	8	8	8	8		photos/Hotels/2020/08/08/1.jpg	photos/Hotels/2020/08/08/2.jpg	photos/Hotels/2020/08/08/main_gC8marc.jpg	Salvador de Bahia	America		Brazil	00000	00000	00000	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	f	0.00	4
3	Hotel SH Crystal Beach	SH	5	Beach	fernando.sininen@gmail.com	+372123123123	t	t	t	t	f	f	f	t	t	f	t	t	t	t	t	f	9			7	8		photos/Hotels/2020/08/08/148233200.jpg	photos/Hotels/2020/08/08/80310936.jpg	photos/Hotels/2020/08/08/main_wRGNY3g.jpg	Fuerteventura	Europe		Spain	00000	00000	00000	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	f	0.00	1
2	Hotel Playa Esmeralda	Independent	9	Beach	fernando.sininen@gmail.com	+372123456789	f	t	t	t	t	t	f	t	t	f	t	t	t	t	t	t	9			8	8		photos/Hotels/2020/08/08/237868482.jpg	photos/Hotels/2020/08/08/229537379.jpg	photos/Hotels/2020/08/08/main_t9r91sE.jpg	Fuerteventura	Europe		Spain	123	123456	Calle Los Jardines	0.00	80.00	20.00	65.00	60.00	40.00	0.00	50.00	20.00	t	115.00	1
12	International Yokohama Grand Hotel	Independent	5	Business	fernando.sininen@gmail.com	+371123456789	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	f	9	9	7	8	9		photos/Hotels/2020/08/09/246012487.jpg	photos/Hotels/2020/08/09/237827924.jpg	photos/Hotels/2020/08/09/237827816.jpg	Yokohama	Asia		Japan	00000	00000	00000	25.00	0.00	18.00	130.00	80.00	60.00	0.00	80.00	0.00	t	180.00	5
4	Hotel Apollon Rust	Indepenpendent	3	Theme park	fernando.sininen@gmail.com	+372123123123	f	t	t	f	f	f	f	t	t	f	f	f	f	f	t	f	7		7				photos/Hotels/2020/08/08/155213686.jpg	photos/Hotels/2020/08/08/155213671.jpg	photos/Hotels/2020/08/08/main_ZwWfayG.jpg	Rust	Europe		Germany	00000	00000	00000	20.00	0.00	12.00	65.00	0.00	0.00	0.00	45.00	0.00	f	0.00	6
13	Margaritaville Beach Resort Playa Flamin	Independent	4	Beach	fernando.sininen@gmail.com	+372000000	t	t	t	t	f	f	f	t	t	f	t	t	t	t	t	t							photos/Hotels/2020/08/28/171783188.jpg	photos/Hotels/2020/08/28/171773938.jpg	photos/Hotels/2020/08/28/173302969.jpg	Guanacaste	America		Costa Rica	00000	00000	00000	0.00	70.00	12.00	80.00	60.00	25.00	0.00	50.00	0.00	t	110.00	8
\.


--
-- Name: trips_hotel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trips_hotel_id_seq', 13, true);


--
-- Data for Name: trips_hoteltrip; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trips_hoteltrip (id, checkin, checkout, number_of_single_rooms, number_of_double_rooms, number_of_suites, parking_slots, spa_tickets, total_kindergarden_tickets, total_breakfast_tickets, total_fullboard_tickets, total_halfboard_tickets, total_all_inclusive_tickets, total_airport_transfer, total_price, hotelid_id, ring_id) FROM stdin;
2	2021-09-01 13:43:03+00	2021-09-07 13:43:20+00	0	1	0	0	0	0	0	0	14	0	2	1015.00	2	1
3	2021-11-01 17:54:40+00	2021-11-05 17:54:54+00	0	1	0	1	0	0	0	0	0	0	0	745.00	12	5
4	2021-10-17 14:39:15+00	2021-10-27 14:39:38+00	0	1	0	0	0	0	0	0	0	20	4	2200.00	13	8
5	2021-12-19 14:48:10+00	2021-12-25 14:48:19+00	0	1	0	0	10	0	10	0	0	0	0	620.00	6	7
6	2021-11-05 14:51:34+00	2021-11-08 14:51:48+00	0	2	0	1	0	0	12	0	0	0	0	600.00	4	6
7	2021-11-14 14:54:11+00	2021-11-20 14:54:23+00	0	1	0	0	0	0	10	0	0	0	4	850.00	5	4
8	2021-12-22 14:58:19+00	2021-12-28 14:58:34+00	0	1	0	0	0	0	0	0	0	0	0	480.00	8	2
9	2021-12-20 15:01:02+00	2021-12-26 15:01:12+00	0	1	0	0	0	0	12	0	0	0	0	880.00	9	3
\.


--
-- Name: trips_hoteltrip_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trips_hoteltrip_id_seq', 9, true);


--
-- Data for Name: trips_ring; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trips_ring (id, name, sold_trips, trips_in_stock, city, continent, country) FROM stdin;
7	Tallinn	0	0	Tallinn	Europe	Estonia
6	Stuttgart - Germany	0	0	Stuttgart	Europe	Germany
5	Yokohama	0	0	Yokohama	Asia	Japan
4	Salvador de Bahia - Brazil	0	0	Salvador de Bahía	America	Brazil
2	Viena	0	0	Viena	Europe	Austria
1	Costa Calma - Fuerteventura	0	0	Fuerteventura	Europe	Spain
8	Costa Rica - Playa Flamingo	0	0	Guanacaste	America	Costa Rica
3	Innsbruck - Tirol	0	0	Innsbruck	Europe	Austria
9	No Ring	0	0	No city	No continent	No country
\.


--
-- Name: trips_ring_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trips_ring_id_seq', 9, true);


--
-- Data for Name: trips_trip; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trips_trip (id, final_price, status, "eventTripID_id", "flightTripID_id", "hotelTripID_id", "tripTemplateID_id", "userAccountID_id") FROM stdin;
\.


--
-- Name: trips_trip_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trips_trip_id_seq', 8, true);


--
-- Name: trips_trip_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trips_trip_id_seq1', 1, false);


--
-- Data for Name: trips_triptemplate; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trips_triptemplate (id, internal_reference, comercial_reference, include_hotel, include_flight, include_event, basic_price, stock, sold, refund, cancelled, is_active, photo_main, ring_id, main_description, secondary_description, photo_1, photo_2, marketing_message, img_1, img_2, eventtrip_id_id, hoteltrip_id_id, date_to_go, date_to_return, photo_index) FROM stdin;
3	Europa Park	Europa Park	t	t	t	1380.00	20	0	0	0	t	photos/Trips/2020/08/10/photo_main/entrance-europa-park-rust-germa57915.jpg	6	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis tristique tortor sed ex vehicula viverra. Suspendisse mass	Vivamus auctor felis eu risus facilisis, ut suscipit velit fringilla. Aenean feugiat mollis urna id sagittis. Quisque viverra enim sed interdum iaculis. Nulla a quam a elit fringilla eleifend. Donec mi dolor, condimentum bibendum dapibus at, dapibus a ligula. Etiam finibus sem cursus dui fermentum p	photos/Trips/2020/08/10/photo_1/caption.jpg	photos/Trips/2020/08/10/photo_2/europa-park-wodan-bluefire-e1589198057790.jpg	Last days!!	photos/Trips/2020/08/10/photo_1/caption_QAoXCjT.jpg	photos/Trips/2020/08/28/photo_2/blue-fire_1920_AT_Europa-Park-07_0.jpg	3	6	2021-12-15 18:50:03+00	2020-12-21 18:50:04+00	photos/Trips/2020/08/29/photo_main/caption.jpg
7	Tallin	Tallin	t	f	f	700.00	30	0	0	0	t	photos/Trips/2020/08/28/photo_main/Tallinn-1_4.jpg	7	Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi	Unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni	\N	\N	The cute Medieval old Town	photos/Trips/2020/08/28/photo_1/Tallinn.jpg	photos/Trips/2020/08/28/photo_2/tallint.jpg	9	5	2021-11-21 19:28:38+00	2021-11-25 19:28:49+00	photos/Trips/2020/08/29/photo_main/image4.jpg
1	Costa Calma 2021	Fuerteventura	t	t	t	700.00	20	0	0	0	t	photos/Trips/2020/08/10/photo_main/main_trip_dqxX5CW.jpg	1	Enjoy the best beaches of Spain	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vitae turpis luctus, porttitor orci quis, fringilla leo. Suspendisse dapibus nisi eu lectus blandit tempor. Phasellus sit amet nisi malesuada, vulputate tellus ut, pulvinar lacus. Maecenas in metus et purus semper mattis ut sit amet.	photos/Trips/2020/08/10/photo_1/ima_ge1.png	photos/Trips/2020/08/10/photo_2/main_trip.jpg	Fuerteventura sea, sand and sun!	photos/Trips/2020/08/10/photo_1/ima_ge1_QLTgHIg.png	photos/Trips/2020/08/10/photo_2/image3.jpg	4	2	2021-09-08 18:48:13+00	2021-09-14 18:48:16+00	photos/Trips/2020/08/29/photo_main/image3.jpg
5	Viena	Viena	t	t	t	2890.00	10	0	0	0	t	photos/Trips/2020/08/28/photo_main/viena-3.jpg	2	Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.	Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia	\N	\N	Cultural Viena!	photos/Trips/2020/08/28/photo_1/viena.jpg	photos/Trips/2020/08/28/photo_2/1457541094_180135_1457542940_noticia_normal.jpg	7	8	2021-12-14 19:04:22+00	2021-12-23 19:04:27+00	photos/Trips/2020/08/29/photo_main/Viena_homme.jpg
6	Innsbruck	Innsbruck	t	t	t	3200.00	0	0	0	0	t	photos/Trips/2020/08/28/photo_main/i7.jfif	3	The most beautiful regions of Austrian Tirol	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillu	\N	\N	Visit the Austrian Tirol	photos/Trips/2020/08/28/photo_1/i4.jpeg	photos/Trips/2020/08/28/photo_2/i3.jpg	6	9	2021-12-14 19:21:32+00	2021-12-31 19:21:49+00	photos/Trips/2020/08/29/photo_main/image1.jpg
4	Salvador de Bahia	Salvador de Bahia	t	t	f	4950.00	10	0	0	0	t	photos/Trips/2020/08/29/photo_main/Brazil_2.jpg	4	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod	Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia	\N	\N	Holidays in Brazil!	photos/Trips/2020/08/29/photo_1/Brazil_3.jpg	photos/Trips/2020/08/28/photo_2/brazil_5.jpg	9	7	2021-11-09 18:45:10+00	2021-12-08 18:45:32+00	photos/Trips/2020/08/29/photo_main/image2.jpg
2	Yokohama	Yokohama	t	t	t	2585.00	20	0	0	0	t	photos/Trips/2020/08/10/photo_main/Yokohama-mountain-Fuji-Tokyo-Japan-e1413887348772.jpg	5	Lorem ipsum dolor sit amet, consectetur adipiscing elit.  Duis tristique tortor sed ex vehicula viverra. Suspendisse mas	Vivamus auctor felis eu risus facilisis, ut suscipit velit fringilla. Aenean feugiat mollis urna id sagittis. Quisque viverra enim sed interdum iaculis. Nulla a quam a elit fringilla eleifend. Donec mi dolor, condimentum bibendum dapibus at, dapibus a ligula. Etiam finibus sem cursus dui fermentum p	photos/Trips/2020/08/10/photo_1/236838667.jpg	photos/Trips/2020/08/10/photo_2/unnamed.jpg	Last days!!	photos/Trips/2020/08/10/photo_1/236838667_gaBVxAP.jpg	photos/Trips/2020/08/10/photo_2/Yokohama-mountain-Fuji-Tokyo-Japan-e1413887348772.jpg	2	3	2021-11-10 18:49:24+00	2021-11-16 18:49:25+00	photos/Trips/2020/08/29/photo_main/yokohamahome.jpeg
8	CR-Playa Flamingo	Costa Rica	t	t	t	3100.00	2	10	0	0	t	photos/Trips/2020/08/28/photo_main/cr3.jpg	8	At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti	Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum	\N	\N	The best beaches in the Caribean!	photos/Trips/2020/08/28/photo_1/cr5568.jpg	photos/Trips/2020/08/28/photo_2/crImage-1.jpg	5	4	2021-10-17 19:41:40+00	2021-10-21 19:41:57+00	photos/Trips/2020/08/29/photo_main/image5.jpg
\.


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: pages_useraccount pages_useraccount_email_aa3e62af_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_useraccount
    ADD CONSTRAINT pages_useraccount_email_aa3e62af_uniq UNIQUE (email);


--
-- Name: pages_useraccount pages_useraccount_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_useraccount
    ADD CONSTRAINT pages_useraccount_pkey PRIMARY KEY (id);


--
-- Name: pages_useraccount pages_useraccount_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_useraccount
    ADD CONSTRAINT pages_useraccount_username_key UNIQUE (username);


--
-- Name: trips_airport trips_airport_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_airport
    ADD CONSTRAINT trips_airport_pkey PRIMARY KEY (id);


--
-- Name: trips_event trips_event_name_eb81ca7e_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_event
    ADD CONSTRAINT trips_event_name_eb81ca7e_uniq UNIQUE (name);


--
-- Name: trips_event trips_event_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_event
    ADD CONSTRAINT trips_event_pkey PRIMARY KEY (id);


--
-- Name: trips_eventtrip trips_eventtrip_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_eventtrip
    ADD CONSTRAINT trips_eventtrip_pkey PRIMARY KEY (id);


--
-- Name: trips_flight trips_flight_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_flight
    ADD CONSTRAINT trips_flight_pkey PRIMARY KEY (id);


--
-- Name: trips_flighttrip trips_flighttrip_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_flighttrip
    ADD CONSTRAINT trips_flighttrip_pkey PRIMARY KEY (id);


--
-- Name: trips_hotel trips_hotel_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_hotel
    ADD CONSTRAINT trips_hotel_name_key UNIQUE (name);


--
-- Name: trips_hotel trips_hotel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_hotel
    ADD CONSTRAINT trips_hotel_pkey PRIMARY KEY (id);


--
-- Name: trips_hoteltrip trips_hoteltrip_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_hoteltrip
    ADD CONSTRAINT trips_hoteltrip_pkey PRIMARY KEY (id);


--
-- Name: trips_ring trips_ring_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_ring
    ADD CONSTRAINT trips_ring_name_key UNIQUE (name);


--
-- Name: trips_ring trips_ring_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_ring
    ADD CONSTRAINT trips_ring_pkey PRIMARY KEY (id);


--
-- Name: trips_triptemplate trips_trip_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_triptemplate
    ADD CONSTRAINT trips_trip_pkey PRIMARY KEY (id);


--
-- Name: trips_trip trips_trip_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_trip
    ADD CONSTRAINT trips_trip_pkey1 PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: pages_useraccount_email_aa3e62af_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_useraccount_email_aa3e62af_like ON public.pages_useraccount USING btree (email varchar_pattern_ops);


--
-- Name: pages_useraccount_username_7abd6c40_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_useraccount_username_7abd6c40_like ON public.pages_useraccount USING btree (username varchar_pattern_ops);


--
-- Name: trips_event_name_eb81ca7e_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX trips_event_name_eb81ca7e_like ON public.trips_event USING btree (name varchar_pattern_ops);


--
-- Name: trips_event_ring_id_8d9576fa; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX trips_event_ring_id_8d9576fa ON public.trips_event USING btree (ring_id_id);


--
-- Name: trips_eventtrip_eventid_id_4a4da593; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX trips_eventtrip_eventid_id_4a4da593 ON public.trips_eventtrip USING btree (eventid_id);


--
-- Name: trips_eventtrip_ring_id_5a5e1d3c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX trips_eventtrip_ring_id_5a5e1d3c ON public.trips_eventtrip USING btree (ring_id);


--
-- Name: trips_flight_destination_id_b0398f94; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX trips_flight_destination_id_b0398f94 ON public.trips_flight USING btree (destination_id);


--
-- Name: trips_flight_origin_id_d36fd7bb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX trips_flight_origin_id_d36fd7bb ON public.trips_flight USING btree (origin_id);


--
-- Name: trips_flight_ring_id_343c4284; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX trips_flight_ring_id_343c4284 ON public.trips_flight USING btree (ring_id);


--
-- Name: trips_flighttrip_go_flight_id_4e03bc67; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX trips_flighttrip_go_flight_id_4e03bc67 ON public.trips_flighttrip USING btree (go_flight_id);


--
-- Name: trips_flighttrip_return_flight_id_8f4070d6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX trips_flighttrip_return_flight_id_8f4070d6 ON public.trips_flighttrip USING btree (return_flight_id);


--
-- Name: trips_flighttrip_ring_id_940302f0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX trips_flighttrip_ring_id_940302f0 ON public.trips_flighttrip USING btree (ring_id);


--
-- Name: trips_hotel_name_f32bf076_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX trips_hotel_name_f32bf076_like ON public.trips_hotel USING btree (name varchar_pattern_ops);


--
-- Name: trips_hotel_ring_id_41a15b25; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX trips_hotel_ring_id_41a15b25 ON public.trips_hotel USING btree (ring_id);


--
-- Name: trips_hoteltrip_hotelid_id_1aa623bd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX trips_hoteltrip_hotelid_id_1aa623bd ON public.trips_hoteltrip USING btree (hotelid_id);


--
-- Name: trips_hoteltrip_ring_id_3f8ce340; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX trips_hoteltrip_ring_id_3f8ce340 ON public.trips_hoteltrip USING btree (ring_id);


--
-- Name: trips_ring_name_882bf952_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX trips_ring_name_882bf952_like ON public.trips_ring USING btree (name varchar_pattern_ops);


--
-- Name: trips_trip_eventTripID_id_7c030899; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "trips_trip_eventTripID_id_7c030899" ON public.trips_trip USING btree ("eventTripID_id");


--
-- Name: trips_trip_flightTripID_id_0ecc73b4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "trips_trip_flightTripID_id_0ecc73b4" ON public.trips_trip USING btree ("flightTripID_id");


--
-- Name: trips_trip_hotelTripID_id_e928b21c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "trips_trip_hotelTripID_id_e928b21c" ON public.trips_trip USING btree ("hotelTripID_id");


--
-- Name: trips_trip_ring_id_74edf408; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX trips_trip_ring_id_74edf408 ON public.trips_triptemplate USING btree (ring_id);


--
-- Name: trips_trip_tripTemplateID_id_6a88c657; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "trips_trip_tripTemplateID_id_6a88c657" ON public.trips_trip USING btree ("tripTemplateID_id");


--
-- Name: trips_trip_userID_id_1e88445d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "trips_trip_userID_id_1e88445d" ON public.trips_trip USING btree ("userAccountID_id");


--
-- Name: trips_triptemplate_eventtrip_id_id_4eaebf87; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX trips_triptemplate_eventtrip_id_id_4eaebf87 ON public.trips_triptemplate USING btree (eventtrip_id_id);


--
-- Name: trips_triptemplate_hoteltrip_id_id_ae68668f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX trips_triptemplate_hoteltrip_id_id_ae68668f ON public.trips_triptemplate USING btree (hoteltrip_id_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: trips_event trips_event_ring_id_id_61abc38c_fk_trips_ring_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_event
    ADD CONSTRAINT trips_event_ring_id_id_61abc38c_fk_trips_ring_id FOREIGN KEY (ring_id_id) REFERENCES public.trips_ring(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: trips_eventtrip trips_eventtrip_eventid_id_4a4da593_fk_trips_event_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_eventtrip
    ADD CONSTRAINT trips_eventtrip_eventid_id_4a4da593_fk_trips_event_id FOREIGN KEY (eventid_id) REFERENCES public.trips_event(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: trips_eventtrip trips_eventtrip_ring_id_5a5e1d3c_fk_trips_ring_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_eventtrip
    ADD CONSTRAINT trips_eventtrip_ring_id_5a5e1d3c_fk_trips_ring_id FOREIGN KEY (ring_id) REFERENCES public.trips_ring(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: trips_flight trips_flight_destination_id_b0398f94_fk_trips_airport_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_flight
    ADD CONSTRAINT trips_flight_destination_id_b0398f94_fk_trips_airport_id FOREIGN KEY (destination_id) REFERENCES public.trips_airport(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: trips_flight trips_flight_origin_id_d36fd7bb_fk_trips_airport_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_flight
    ADD CONSTRAINT trips_flight_origin_id_d36fd7bb_fk_trips_airport_id FOREIGN KEY (origin_id) REFERENCES public.trips_airport(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: trips_flight trips_flight_ring_id_343c4284_fk_trips_ring_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_flight
    ADD CONSTRAINT trips_flight_ring_id_343c4284_fk_trips_ring_id FOREIGN KEY (ring_id) REFERENCES public.trips_ring(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: trips_flighttrip trips_flighttrip_go_flight_id_4e03bc67_fk_trips_flight_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_flighttrip
    ADD CONSTRAINT trips_flighttrip_go_flight_id_4e03bc67_fk_trips_flight_id FOREIGN KEY (go_flight_id) REFERENCES public.trips_flight(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: trips_flighttrip trips_flighttrip_return_flight_id_8f4070d6_fk_trips_flight_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_flighttrip
    ADD CONSTRAINT trips_flighttrip_return_flight_id_8f4070d6_fk_trips_flight_id FOREIGN KEY (return_flight_id) REFERENCES public.trips_flight(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: trips_flighttrip trips_flighttrip_ring_id_940302f0_fk_trips_ring_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_flighttrip
    ADD CONSTRAINT trips_flighttrip_ring_id_940302f0_fk_trips_ring_id FOREIGN KEY (ring_id) REFERENCES public.trips_ring(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: trips_hotel trips_hotel_ring_id_41a15b25_fk_trips_ring_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_hotel
    ADD CONSTRAINT trips_hotel_ring_id_41a15b25_fk_trips_ring_id FOREIGN KEY (ring_id) REFERENCES public.trips_ring(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: trips_hoteltrip trips_hoteltrip_hotelid_id_1aa623bd_fk_trips_hotel_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_hoteltrip
    ADD CONSTRAINT trips_hoteltrip_hotelid_id_1aa623bd_fk_trips_hotel_id FOREIGN KEY (hotelid_id) REFERENCES public.trips_hotel(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: trips_hoteltrip trips_hoteltrip_ring_id_3f8ce340_fk_trips_ring_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_hoteltrip
    ADD CONSTRAINT trips_hoteltrip_ring_id_3f8ce340_fk_trips_ring_id FOREIGN KEY (ring_id) REFERENCES public.trips_ring(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: trips_trip trips_trip_eventTripID_id_7c030899_fk_trips_eventtrip_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_trip
    ADD CONSTRAINT "trips_trip_eventTripID_id_7c030899_fk_trips_eventtrip_id" FOREIGN KEY ("eventTripID_id") REFERENCES public.trips_eventtrip(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: trips_trip trips_trip_flightTripID_id_0ecc73b4_fk_trips_flighttrip_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_trip
    ADD CONSTRAINT "trips_trip_flightTripID_id_0ecc73b4_fk_trips_flighttrip_id" FOREIGN KEY ("flightTripID_id") REFERENCES public.trips_flighttrip(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: trips_trip trips_trip_hotelTripID_id_e928b21c_fk_trips_hoteltrip_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_trip
    ADD CONSTRAINT "trips_trip_hotelTripID_id_e928b21c_fk_trips_hoteltrip_id" FOREIGN KEY ("hotelTripID_id") REFERENCES public.trips_hoteltrip(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: trips_triptemplate trips_trip_ring_id_74edf408_fk_trips_ring_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_triptemplate
    ADD CONSTRAINT trips_trip_ring_id_74edf408_fk_trips_ring_id FOREIGN KEY (ring_id) REFERENCES public.trips_ring(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: trips_trip trips_trip_tripTemplateID_id_6a88c657_fk_trips_triptemplate_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_trip
    ADD CONSTRAINT "trips_trip_tripTemplateID_id_6a88c657_fk_trips_triptemplate_id" FOREIGN KEY ("tripTemplateID_id") REFERENCES public.trips_triptemplate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: trips_trip trips_trip_userAccountID_id_ec285d29_fk_pages_useraccount_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_trip
    ADD CONSTRAINT "trips_trip_userAccountID_id_ec285d29_fk_pages_useraccount_id" FOREIGN KEY ("userAccountID_id") REFERENCES public.pages_useraccount(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: trips_triptemplate trips_triptemplate_eventtrip_id_id_4eaebf87_fk_trips_eve; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_triptemplate
    ADD CONSTRAINT trips_triptemplate_eventtrip_id_id_4eaebf87_fk_trips_eve FOREIGN KEY (eventtrip_id_id) REFERENCES public.trips_eventtrip(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: trips_triptemplate trips_triptemplate_hoteltrip_id_id_ae68668f_fk_trips_hot; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trips_triptemplate
    ADD CONSTRAINT trips_triptemplate_hoteltrip_id_id_ae68668f_fk_trips_hot FOREIGN KEY (hoteltrip_id_id) REFERENCES public.trips_hoteltrip(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

