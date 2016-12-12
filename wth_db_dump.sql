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


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: alumni; Type: TABLE; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

CREATE TABLE alumni (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content character varying(500) NOT NULL,
    website character varying(500) NOT NULL,
    image character varying(100) NOT NULL
);


ALTER TABLE alumni OWNER TO esnpvxtuxrdhht;

--
-- Name: alumni_id_seq; Type: SEQUENCE; Schema: public; Owner: esnpvxtuxrdhht
--

CREATE SEQUENCE alumni_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE alumni_id_seq OWNER TO esnpvxtuxrdhht;

--
-- Name: alumni_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: esnpvxtuxrdhht
--

ALTER SEQUENCE alumni_id_seq OWNED BY alumni.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO esnpvxtuxrdhht;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: esnpvxtuxrdhht
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO esnpvxtuxrdhht;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: esnpvxtuxrdhht
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO esnpvxtuxrdhht;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: esnpvxtuxrdhht
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO esnpvxtuxrdhht;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: esnpvxtuxrdhht
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO esnpvxtuxrdhht;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: esnpvxtuxrdhht
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO esnpvxtuxrdhht;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: esnpvxtuxrdhht
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO esnpvxtuxrdhht;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO esnpvxtuxrdhht;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: esnpvxtuxrdhht
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO esnpvxtuxrdhht;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: esnpvxtuxrdhht
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: esnpvxtuxrdhht
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO esnpvxtuxrdhht;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: esnpvxtuxrdhht
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO esnpvxtuxrdhht;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: esnpvxtuxrdhht
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO esnpvxtuxrdhht;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: esnpvxtuxrdhht
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: banners; Type: TABLE; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

CREATE TABLE banners (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    status boolean NOT NULL,
    content character varying(500) NOT NULL,
    link character varying(500)
);


ALTER TABLE banners OWNER TO esnpvxtuxrdhht;

--
-- Name: banners_id_seq; Type: SEQUENCE; Schema: public; Owner: esnpvxtuxrdhht
--

CREATE SEQUENCE banners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE banners_id_seq OWNER TO esnpvxtuxrdhht;

--
-- Name: banners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: esnpvxtuxrdhht
--

ALTER SEQUENCE banners_id_seq OWNED BY banners.id;


--
-- Name: committee; Type: TABLE; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

CREATE TABLE committee (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    icon character varying(500) NOT NULL,
    text_1 character varying(500) NOT NULL,
    text_2 character varying(500) NOT NULL,
    text_3 character varying(500) NOT NULL,
    current_info character varying(500) NOT NULL,
    current_info_link character varying(500) NOT NULL
);


ALTER TABLE committee OWNER TO esnpvxtuxrdhht;

--
-- Name: committee_id_seq; Type: SEQUENCE; Schema: public; Owner: esnpvxtuxrdhht
--

CREATE SEQUENCE committee_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE committee_id_seq OWNER TO esnpvxtuxrdhht;

--
-- Name: committee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: esnpvxtuxrdhht
--

ALTER SEQUENCE committee_id_seq OWNED BY committee.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    content_type_id integer,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO esnpvxtuxrdhht;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: esnpvxtuxrdhht
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO esnpvxtuxrdhht;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: esnpvxtuxrdhht
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO esnpvxtuxrdhht;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: esnpvxtuxrdhht
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO esnpvxtuxrdhht;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: esnpvxtuxrdhht
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO esnpvxtuxrdhht;

--
-- Name: team_member; Type: TABLE; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

CREATE TABLE team_member (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    role character varying(100) NOT NULL,
    bio character varying(2000) NOT NULL,
    image character varying(100) NOT NULL
);


ALTER TABLE team_member OWNER TO esnpvxtuxrdhht;

--
-- Name: team_member_id_seq; Type: SEQUENCE; Schema: public; Owner: esnpvxtuxrdhht
--

CREATE SEQUENCE team_member_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE team_member_id_seq OWNER TO esnpvxtuxrdhht;

--
-- Name: team_member_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: esnpvxtuxrdhht
--

ALTER SEQUENCE team_member_id_seq OWNED BY team_member.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    email character varying(62) NOT NULL,
    fname character varying(50) NOT NULL,
    lname character varying(50) NOT NULL,
    phone character varying(15) NOT NULL,
    address character varying(80) NOT NULL,
    address2 character varying(80),
    city character varying(35) NOT NULL,
    state character varying(15) NOT NULL,
    zip character varying(10) NOT NULL,
    country character varying(50) NOT NULL,
    admin_level integer NOT NULL,
    school character varying(25),
    major character varying(25),
    graduation_year character(4)
);


ALTER TABLE users OWNER TO esnpvxtuxrdhht;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: esnpvxtuxrdhht
--

ALTER TABLE ONLY alumni ALTER COLUMN id SET DEFAULT nextval('alumni_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: esnpvxtuxrdhht
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: esnpvxtuxrdhht
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: esnpvxtuxrdhht
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: esnpvxtuxrdhht
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: esnpvxtuxrdhht
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: esnpvxtuxrdhht
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: esnpvxtuxrdhht
--

ALTER TABLE ONLY banners ALTER COLUMN id SET DEFAULT nextval('banners_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: esnpvxtuxrdhht
--

ALTER TABLE ONLY committee ALTER COLUMN id SET DEFAULT nextval('committee_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: esnpvxtuxrdhht
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: esnpvxtuxrdhht
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: esnpvxtuxrdhht
--

ALTER TABLE ONLY team_member ALTER COLUMN id SET DEFAULT nextval('team_member_id_seq'::regclass);


--
-- Data for Name: alumni; Type: TABLE DATA; Schema: public; Owner: esnpvxtuxrdhht
--

COPY alumni (id, name, content, website, image) FROM stdin;
1	WeTrain	On Demand, Affordable, Personal Trainers in Philadelphia	http://www.wetrain.fitness/	alumni/WeTrain_PEtxxtt.png
2	UBeam	Harnessing the power of ultrasound transmitters, the team behind UBeam is developing a way to wirelessly charge gadgets at a distance.	http://ubeam.com/	alumni/uBeam.png
3	BioBots	The Bio Bots team has created a desktop 3D bioprinter that builds functional three dimensional living tissue, perfect for rapid bio-prototyping in the field of regenerative medicine. 	http://www.biobots.io/	alumni/BioBots.png
4	FeverSmart	This company makes it easy to track temperature of sick loved ones. They’ve developed a disposable patch for the patient’s skin that sends data to the Fever Smart smartphone app, sending alerts when temperature starts to rise and making the temperature stats available remotely.	http://feversmart.com/	alumni/FeverSmart.png
5	GoogolPlex	This creative team has figured out a way to hack Apple’s Siri, allowing iPhone users to use voice commands to interact with third party apps like Spotify, Nest, and others.	http://www.betterthansiri.com/	alumni/GoogolPlex.png
6	Gov Predict	Gov Predict uses public data and proprietary algorithms to predict the US Congress voting margins and patterns.	http://www.govpredict.com/	alumni/GovPredict.png
7	Identified Technologies	Identified Technologies uses unmanned aerial vehicles to collect data for its clients, particularly those in the oil &#38; gas and construction industries. They collect everything from photos and videos to point clouds and gas-sensing data, all easily accessible online.	http://identifiedtech.com/	alumni/IdentifiedTechnologies.png
8	Splice Capital	WeissLabs Team	http://splicecapital.com/	alumni/Splice.png
\.


--
-- Name: alumni_id_seq; Type: SEQUENCE SET; Schema: public; Owner: esnpvxtuxrdhht
--

SELECT pg_catalog.setval('alumni_id_seq', 8, true);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: esnpvxtuxrdhht
--

COPY auth_group (id, name) FROM stdin;
1	Committee Chairs
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: esnpvxtuxrdhht
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, true);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: esnpvxtuxrdhht
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	64
2	1	65
3	1	66
4	1	52
5	1	53
6	1	54
7	1	58
8	1	59
9	1	60
10	1	61
11	1	62
12	1	63
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: esnpvxtuxrdhht
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 12, true);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: esnpvxtuxrdhht
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add auth group	7	add_authgroup
20	Can change auth group	7	change_authgroup
21	Can delete auth group	7	delete_authgroup
22	Can add auth group permissions	8	add_authgrouppermissions
23	Can change auth group permissions	8	change_authgrouppermissions
24	Can delete auth group permissions	8	delete_authgrouppermissions
25	Can add auth permission	9	add_authpermission
26	Can change auth permission	9	change_authpermission
27	Can delete auth permission	9	delete_authpermission
28	Can add auth user	10	add_authuser
29	Can change auth user	10	change_authuser
30	Can delete auth user	10	delete_authuser
31	Can add auth user groups	11	add_authusergroups
32	Can change auth user groups	11	change_authusergroups
33	Can delete auth user groups	11	delete_authusergroups
34	Can add auth user user permissions	12	add_authuseruserpermissions
35	Can change auth user user permissions	12	change_authuseruserpermissions
36	Can delete auth user user permissions	12	delete_authuseruserpermissions
37	Can add django admin log	13	add_djangoadminlog
38	Can change django admin log	13	change_djangoadminlog
39	Can delete django admin log	13	delete_djangoadminlog
40	Can add django content type	14	add_djangocontenttype
41	Can change django content type	14	change_djangocontenttype
42	Can delete django content type	14	delete_djangocontenttype
43	Can add django migrations	15	add_djangomigrations
44	Can change django migrations	15	change_djangomigrations
45	Can delete django migrations	15	delete_djangomigrations
46	Can add django session	16	add_djangosession
47	Can change django session	16	change_djangosession
48	Can delete django session	16	delete_djangosession
49	Can add users	17	add_users
50	Can change users	17	change_users
51	Can delete users	17	delete_users
52	Can add banner	18	add_banner
53	Can change banner	18	change_banner
54	Can delete banner	18	delete_banner
58	Can add alumni	20	add_alumni
59	Can change alumni	20	change_alumni
60	Can delete alumni	20	delete_alumni
61	Can add committee	21	add_committee
62	Can change committee	21	change_committee
63	Can delete committee	21	delete_committee
64	Can add team member	22	add_teammember
65	Can change team member	22	change_teammember
66	Can delete team member	22	delete_teammember
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: esnpvxtuxrdhht
--

SELECT pg_catalog.setval('auth_permission_id_seq', 66, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: esnpvxtuxrdhht
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
3	pbkdf2_sha256$12000$tlyQmEPQAmmC$fEqE6xr2rSqQN152m3BzCAognnT2GxzwJgIuIF3QFdU=	2016-03-15 21:37:17+00	t	aolesky	Alec	Olesky	aolesky@gmail.com	t	t	2016-03-15 21:37:17+00
4	pbkdf2_sha256$10000$vJxeMwfdPBVd$WsnU7OyrmO/ehBl6JWizXXX8UbQq2IUmMzMUN62Z6Ho=	2016-03-21 18:53:33.891643+00	f	test	test	test	test@test.com	t	t	2016-03-21 18:52:33+00
6	pbkdf2_sha256$10000$kZQpoYuv1nSh$aLc9NEytR3jseZUd6mbXJScdJi/EZ2Uyaa29t4ze4t0=	2016-03-29 22:34:01+00	f	iscowitz	Ross	Iscowitz	iscowitz@wharton.upenn.edu	t	t	2016-03-29 22:34:01+00
5	pbkdf2_sha256$10000$PR8PbJbtzkZF$HmDpY9Plrjy6kHGHtnE6EJKcHV8dKdPlNZOnLvYp4nQ=	2016-10-13 14:30:46.732757+00	t	stamer	Anne	Stamer	stamer@seas.upenn.edu	t	t	2016-03-25 19:17:34+00
2	pbkdf2_sha256$12000$M0OtsZoK2UcP$wXrjAoWok12/h65mAInGA9sPV3QmU2tP1HgR7DizNis=	2016-10-25 14:55:49.971449+00	t	shulmanbrent	Brent	Shulman	shulmanbrent@yahoo.com	t	t	2016-03-15 20:51:55+00
7	pbkdf2_sha256$10000$QaviKps1deu1$OVcBxQl7Pq/ZDjv3BKFE/m6ogwMOj8Xjk+CYNhaaoLg=	2016-10-25 14:57:55.120288+00	t	javamsi	Vamsi	Jandhayala	javamsi@seas.upenn.edu	t	t	2016-10-25 14:56:26+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: esnpvxtuxrdhht
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
1	4	1
2	6	1
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: esnpvxtuxrdhht
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 2, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: esnpvxtuxrdhht
--

SELECT pg_catalog.setval('auth_user_id_seq', 7, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: esnpvxtuxrdhht
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
64	7	1
65	7	2
66	7	3
67	7	4
68	7	5
69	7	6
70	7	7
71	7	8
72	7	9
73	7	10
74	7	11
75	7	12
76	7	13
77	7	14
78	7	15
79	7	16
80	7	17
81	7	18
82	7	19
83	7	20
84	7	21
85	7	22
86	7	23
87	7	24
88	7	25
89	7	26
90	7	27
91	7	28
92	7	29
93	7	30
94	7	31
95	7	32
96	7	33
97	7	34
98	7	35
99	7	36
100	7	37
101	7	38
102	7	39
103	7	40
104	7	41
105	7	42
106	7	43
107	7	44
108	7	45
109	7	46
110	7	47
111	7	48
112	7	49
113	7	50
114	7	51
115	7	52
116	7	53
117	7	54
118	7	58
119	7	59
120	7	60
121	7	61
122	7	62
123	7	63
124	7	64
125	7	65
126	7	66
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: esnpvxtuxrdhht
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 126, true);


--
-- Data for Name: banners; Type: TABLE DATA; Schema: public; Owner: esnpvxtuxrdhht
--

COPY banners (id, name, status, content, link) FROM stdin;
1	Header Banner	t	Check Out the Weiss Tech House Innovation Cage Match	https://calendar.google.com/calendar/event?eid=bGttZzlyZDIwZ2w0dHA1OWcwczhpNmg3NjAgNWoyNm02MTV0amlwa2xpNWFmMXRxdWg3MzRAZw&ctz=America/New_York
\.


--
-- Name: banners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: esnpvxtuxrdhht
--

SELECT pg_catalog.setval('banners_id_seq', 1, true);


--
-- Data for Name: committee; Type: TABLE DATA; Schema: public; Owner: esnpvxtuxrdhht
--

COPY committee (id, name, icon, text_1, text_2, text_3, current_info, current_info_link) FROM stdin;
2	Pennvention	fa-paper-plane	Responsible for producing the annual PennVention student invention competition, Penn's tech startup competition with $20K+ in prizes.	Connects PennVention teams with industry mentors	Produces the annual Mini-Mentoring Marathon in the fall		
3	WeissLabs	fa-users	Feature 5 weeks of hands-on lessons related to entrepreneurship and delivered by industry-experts and mentors	Provide support to teams through our associated professors at the University of Pennsylvania	Offer a physical workspace which allows teams to interact, work on their ventures or to simply be innovative		
5	Events Roadmap	fa-taxi	Focus on entrepreneurship education	Create lesson plans in science, technology, and entrepreneurship	Hold events like: Emerging Technology Panel, Innovation Week, Elevator Pitch, and more!		
6	Penn Innovation Conf.	fa-slideshare	Partners with the numerous clubs on campus	Organize a high-profile entrepreneurship conference	Excite Penn about getting involved in startups!		
1	Innovation Fund	fa-usd	Our in-house, mini-venture capital fund.	Hears student project pitches and awards grants of up to $1,000 to student innovators	Facilitate the integration of accepted projects into the Weiss Tech House		
4	Platform Team	fa-code	Make the Weiss Tech House better by building products that help entrepreneurs around campus, including this website!	We are looking to drive growth, track success, find new opportunities, and maintain infrastructure.	If you are a coder, designer, data guru, or just have a passion to grow entrepreneurship, check us out!	Reach out any time!	mailto:shulmanb@sas.upenn.edu
\.


--
-- Name: committee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: esnpvxtuxrdhht
--

SELECT pg_catalog.setval('committee_id_seq', 6, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: esnpvxtuxrdhht
--

COPY django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) FROM stdin;
15	2016-03-15 20:53:31.568714+00	2	4	1	admin	3	
16	2016-03-15 20:53:54.269928+00	2	4	2	shulmanbrent	2	Changed password, first_name and last_name.
17	2016-03-15 22:16:06.32125+00	2	4	3	aolesky	2	Changed password, first_name and last_name.
18	2016-03-15 22:26:57.414996+00	2	18	1	Header Banner	2	Changed content.
19	2016-03-15 22:27:30.087908+00	2	18	1	Header Banner	2	Changed status and content.
20	2016-03-15 22:28:02.49142+00	2	18	1	Header Banner	2	Changed status.
21	2016-03-16 04:52:27.557185+00	2	20	1	WeTrain	1	
22	2016-03-16 05:01:17.221043+00	2	20	1	WeTrain	1	
23	2016-03-16 05:15:13.596972+00	2	20	2	UBeam	1	
24	2016-03-16 05:23:52.943988+00	2	20	3	BioBots	1	
25	2016-03-16 05:25:01.977611+00	2	20	4	FeverSmart	1	
26	2016-03-16 05:25:45.221149+00	2	20	5	GoogolPlex	1	
27	2016-03-16 05:26:21.326118+00	2	20	6	Gov Predict	1	
28	2016-03-16 05:27:24.423664+00	2	20	7	Identified Technologies	1	
29	2016-03-16 18:40:38.875469+00	2	21	1	Innovation Fund	1	
30	2016-03-16 19:21:55.311878+00	2	21	2	Pennvention	1	
31	2016-03-16 19:22:33.064391+00	2	21	3	WeissLabs	1	
32	2016-03-16 19:23:09.481882+00	2	21	4	Platform Team	1	
33	2016-03-16 19:23:58.164181+00	2	21	5	Events Roadmap	1	
34	2016-03-16 19:24:46.945609+00	2	21	6	Penn Innovation Conf.	1	
35	2016-03-17 20:09:36.691361+00	2	22	1	George Weiss	1	
36	2016-03-17 20:10:07.919473+00	2	22	2	Dr. Mark Yim	1	
37	2016-03-17 20:10:43.924501+00	2	22	3	Dr. David Hsu	1	
38	2016-03-17 20:11:11.416317+00	2	22	4	Anne Stamer	1	
39	2016-03-17 20:11:41.548681+00	2	22	5	Ben Feis	1	
40	2016-03-17 20:12:13.174531+00	2	22	6	Govind Mattay	1	
41	2016-03-17 20:12:43.165154+00	2	22	7	Anna Yang	1	
42	2016-03-17 20:13:14.382219+00	2	22	8	Alec Olesky	1	
43	2016-03-17 20:13:50.004363+00	2	22	9	Brent Shulman	1	
44	2016-03-17 20:16:01.559942+00	2	22	10	Guthrie Gintzler	1	
45	2016-03-17 20:17:18.652435+00	2	22	11	Ernest Tavares	1	
46	2016-03-17 20:17:45.60965+00	2	22	12	Lauren Reeder	1	
47	2016-03-17 20:18:05.393287+00	2	22	13	Ross Iscowitz	1	
48	2016-03-17 20:18:26.301376+00	2	22	14	Ben Barton	1	
49	2016-03-17 20:18:45.80424+00	2	22	15	Felipe Sinisterra	1	
50	2016-03-17 20:19:16.613451+00	2	22	16	Jordan Rosenthal	1	
51	2016-03-17 20:19:35.208603+00	2	22	17	Wanda Lipps	1	
52	2016-03-18 19:04:41.446531+00	2	22	1	George Weiss	1	
53	2016-03-18 19:07:13.888887+00	2	22	2	Dr. Mark Yim	1	
54	2016-03-18 19:08:06.296399+00	2	22	3	Dr. David Hsu	1	
55	2016-03-18 19:08:32.804663+00	2	22	4	Anne Stamer	1	
56	2016-03-18 19:09:46.226719+00	2	22	5	Ben Feis	1	
57	2016-03-18 19:10:11.284697+00	2	22	6	Govind Mattay	1	
58	2016-03-18 19:10:32.815668+00	2	22	7	Anna Yang	1	
59	2016-03-18 19:10:57.128108+00	2	22	8	Brent Shulman	1	
60	2016-03-18 19:11:17.309638+00	2	22	9	Alec Olesky	1	
61	2016-03-18 19:11:46.03721+00	2	22	10	Guthrie Gintzler	1	
62	2016-03-18 19:12:17.29404+00	2	22	11	Ernest Tavares	1	
63	2016-03-18 19:12:41.88092+00	2	22	12	Lauren Reeder	1	
64	2016-03-18 19:13:05.242926+00	2	22	13	Ross Iscowitz	1	
65	2016-03-18 19:13:22.303472+00	2	22	14	Ben Barton	1	
66	2016-03-18 19:13:44.114471+00	2	22	15	Felipe Sinisterra	1	
67	2016-03-18 19:14:11.203429+00	2	22	16	Jordan Rosenthal	1	
68	2016-03-18 19:15:14.614422+00	2	22	17	Wanda Lipps	1	
69	2016-03-21 18:51:51.883692+00	2	3	1	Committee Chairs	1	
70	2016-03-21 18:52:33.895305+00	2	4	4	test	1	
71	2016-03-21 18:53:11.888214+00	2	4	4	test	2	Changed password, first_name, last_name, email, is_staff and groups.
72	2016-03-21 20:23:12.750843+00	2	21	1	Innovation Fund	2	Changed current_info.
73	2016-03-21 23:51:17.467356+00	2	21	1	Innovation Fund	2	Changed current_info_link.
74	2016-03-22 00:02:08.865036+00	2	21	1	Innovation Fund	2	Changed current_info_link.
75	2016-03-22 00:10:04.416509+00	2	21	4	Platform Team	2	Changed current_info and current_info_link.
76	2016-03-22 00:12:12.83277+00	2	21	1	Innovation Fund	2	Changed current_info.
77	2016-03-25 19:17:34.97522+00	2	4	5	stamer	1	
78	2016-03-25 19:18:15.395978+00	2	4	5	stamer	2	Changed password, first_name, last_name, email and is_superuser.
79	2016-03-25 19:18:47.425095+00	2	4	5	stamer	2	Changed password and is_staff.
80	2016-03-29 22:05:48.546437+00	2	21	4	Platform Team	2	Changed current_info.
81	2016-03-29 22:34:01.578796+00	2	4	6	iscowitz	1	
82	2016-03-29 22:34:34.57833+00	2	4	6	iscowitz	2	Changed password, first_name, last_name, email, is_staff and groups.
83	2016-04-05 18:03:29.318253+00	5	20	8	Splice Capital	1	
84	2016-08-29 15:42:31.513114+00	5	18	1	Header Banner	2	Changed content and link.
85	2016-09-06 18:45:26.932218+00	5	18	1	Header Banner	2	Changed content.
86	2016-09-08 14:22:57.867503+00	5	18	1	Header Banner	2	Changed content and link.
87	2016-09-20 12:48:52.866209+00	5	18	1	Header Banner	2	Changed link.
88	2016-09-20 12:48:56.593104+00	5	18	1	Header Banner	2	No fields changed.
89	2016-09-20 12:50:01.482434+00	5	18	1	Header Banner	2	Changed content and link.
90	2016-09-20 12:50:55.842361+00	5	18	1	Header Banner	2	Changed content.
91	2016-09-26 14:17:25.353997+00	5	18	1	Header Banner	2	No fields changed.
92	2016-10-03 01:40:37.950668+00	5	18	1	Header Banner	2	Changed content and link.
93	2016-10-03 01:41:14.225843+00	5	18	1	Header Banner	2	Changed content.
94	2016-10-03 01:41:44.828891+00	5	18	1	Header Banner	2	Changed content.
95	2016-10-13 14:32:17.318338+00	5	18	1	Header Banner	2	No fields changed.
96	2016-10-25 14:56:26.434799+00	2	4	7	javamsi	1	
97	2016-10-25 14:57:15.466978+00	2	4	7	javamsi	2	Changed password, first_name, last_name, email, is_staff, is_superuser and user_permissions.
98	2016-10-25 14:57:21.723666+00	2	4	7	javamsi	2	Changed password.
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: esnpvxtuxrdhht
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 98, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: esnpvxtuxrdhht
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	log entry	admin	logentry
2	permission	auth	permission
3	group	auth	group
4	user	auth	user
5	content type	contenttypes	contenttype
6	session	sessions	session
7	auth group	home	authgroup
8	auth group permissions	home	authgrouppermissions
9	auth permission	home	authpermission
10	auth user	home	authuser
11	auth user groups	home	authusergroups
12	auth user user permissions	home	authuseruserpermissions
13	django admin log	home	djangoadminlog
14	django content type	home	djangocontenttype
15	django migrations	home	djangomigrations
16	django session	home	djangosession
17	users	home	users
18	banner	home	banner
20	alumni	home	alumni
21	committee	home	committee
22	team member	home	teammember
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: esnpvxtuxrdhht
--

SELECT pg_catalog.setval('django_content_type_id_seq', 22, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: esnpvxtuxrdhht
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
8b24rsd5e9r3cqq8xfqht9eqytcvqvyh	OWYwY2RlODkyM2I3N2RmZDBjNmRlYmE1OGEyM2FhZjE5NTMzNzE5YjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLBXUu	2016-04-19 18:01:14.332757+00
ay50dl75emuu2zhe0kac5t4i42b9u8re	ZTA0N2I5OWExYWNlNzAxMDYzZWVkOWNhYjYyZDNhMTkzNmUyZGY1Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2016-04-20 04:39:16.420963+00
i0ok9dfzaemav64zoit0rfcylcfbg7oy	NDcwZTdiMWU1Y2IzM2FlOWY4YTE3ZDU2MzczZjIxNWViMTUzODA0MjqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2016-06-20 20:23:49.122757+00
xi1d95jj9c38foddnunjn5zkiecgw3g7	NDcwZTdiMWU1Y2IzM2FlOWY4YTE3ZDU2MzczZjIxNWViMTUzODA0MjqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2016-09-11 21:29:21.411421+00
39wf1r6jmbgfsvrktcsa0b7xlf6svh1k	MjBkN2ZmOGRkYTc0NzM5OTUyZjJkMzhjMmFkNjQ3NDM2OGNhN2QwYjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLAnUu	2016-03-29 20:52:21.674596+00
7n2me34cbbuixe2f92sjrh7bmb2adav0	MjBkN2ZmOGRkYTc0NzM5OTUyZjJkMzhjMmFkNjQ3NDM2OGNhN2QwYjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLAnUu	2016-03-29 22:26:41.463363+00
1s5u2h2i9j7qxb9nn37895syjoqm6bqs	OWYwY2RlODkyM2I3N2RmZDBjNmRlYmE1OGEyM2FhZjE5NTMzNzE5YjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLBXUu	2016-09-12 15:36:05.572952+00
x9o5v04v6m6fzspzo1aux9xxgeeyobuk	ZTA0N2I5OWExYWNlNzAxMDYzZWVkOWNhYjYyZDNhMTkzNmUyZGY1Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=	2016-03-30 04:50:10.415351+00
zemcb6o9z5llsx74116hpyj1dsuqvjkj	OWYwY2RlODkyM2I3N2RmZDBjNmRlYmE1OGEyM2FhZjE5NTMzNzE5YjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLBXUu	2016-09-12 15:39:57.209651+00
d3ra1pp5mvq7t1sik0cf6nt8r0ps67zi	NDcwZTdiMWU1Y2IzM2FlOWY4YTE3ZDU2MzczZjIxNWViMTUzODA0MjqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2016-10-02 06:20:12.327208+00
c1eqekxkykzzkethk7fkowx859ocx3ny	OWYwY2RlODkyM2I3N2RmZDBjNmRlYmE1OGEyM2FhZjE5NTMzNzE5YjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLBXUu	2016-10-04 12:47:52.710647+00
2tka0ujnjtvxa26glyrrz9z3fyzqf1ph	OWYwY2RlODkyM2I3N2RmZDBjNmRlYmE1OGEyM2FhZjE5NTMzNzE5YjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLBXUu	2016-10-10 13:38:39.88023+00
gahw745kvqiacij1b28wfii243hjsrjn	OWYwY2RlODkyM2I3N2RmZDBjNmRlYmE1OGEyM2FhZjE5NTMzNzE5YjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLBXUu	2016-10-27 14:30:46.827493+00
upnozsn5mjk9gfv46cdgp4zsez7ujamh	NDcwZTdiMWU1Y2IzM2FlOWY4YTE3ZDU2MzczZjIxNWViMTUzODA0MjqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2016-11-04 13:48:49.750988+00
lbd4hyt97ix5iwzf7bmbnx1zdtpie50v	NDcwZTdiMWU1Y2IzM2FlOWY4YTE3ZDU2MzczZjIxNWViMTUzODA0MjqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2016-04-08 19:31:13.555547+00
0srxcyffxbfcf6k58f7smp23d92li61i	NDcwZTdiMWU1Y2IzM2FlOWY4YTE3ZDU2MzczZjIxNWViMTUzODA0MjqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2016-04-12 22:04:49.157249+00
v32rkxlimozs53ph4ff8zyojyqyuqxtr	MjBkN2ZmOGRkYTc0NzM5OTUyZjJkMzhjMmFkNjQ3NDM2OGNhN2QwYjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLAnUu	2016-04-12 22:05:02.301067+00
0nwcg8bhtrj34fbs8tvanzoav7xdk44l	NDcwZTdiMWU1Y2IzM2FlOWY4YTE3ZDU2MzczZjIxNWViMTUzODA0MjqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2016-04-12 22:27:14.157326+00
fl96lzx6y90piojy8w8jthstw3xibjig	NDcwZTdiMWU1Y2IzM2FlOWY4YTE3ZDU2MzczZjIxNWViMTUzODA0MjqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2016-04-12 22:27:34.221898+00
4upypa0rtngyxfvwhwgfc3s1h2dq6tw6	MjBkN2ZmOGRkYTc0NzM5OTUyZjJkMzhjMmFkNjQ3NDM2OGNhN2QwYjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLAnUu	2016-11-08 14:55:49.991231+00
2p9o3gx2ow9omusp0uaj4tk3z5s8awb8	NmFiZDdhYWYxYjZiYjI3ZTMzNWUwZmQzOGIzNzQ0NTRjYzJlY2MxMDqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLB3Uu	2016-11-08 14:57:55.137972+00
\.


--
-- Data for Name: team_member; Type: TABLE DATA; Schema: public; Owner: esnpvxtuxrdhht
--

COPY team_member (id, name, role, bio, image) FROM stdin;
1	George Weiss	Founder	Heee is the founder!	team_member/weiss.jpg
2	Dr. Mark Yim	Faculty Director	Dr. Yim is the Gabel Family Term Junior Professor and Undergraduate Curriculum Chair in the School of Engineering and Applied Sciences. A renowned robotics and innovation expert, Dr. Yim is popular among our students for his work developing the Rumble Pack technology in the Playstation2. Dr. Yim was Associate Faculty Director for the Weiss Tech House from 2005-2008. In 2008, he became the Faculty Director.	team_member/yim.jpg
3	Dr. David Hsu	Associate Faculty Director	Dr. Hsu is currently an Associate Professor of Management at the Wharton School, teaching two MBA electives, Entrepreneurship and Technology Strategy. Dr. Hsu’s areas of interest are in entrepreneurial innovation and management. Within that domain, he has investigated topics such as intellectual property management, start-up innovation, technology commercialization strategy, and venture capital. In 2008, he became the Associate Faculty Director. 	team_member/hsu.jpg
4	Anne Stamer	Director	Ms. Stamer manages the marketing, public relations, fundraising and day-to-day activities of the Weiss Tech House and assists student volunteers in achieving the organization’s goals. Prior to joining the WTH, she was the Associate Director of the Wharton Business Plan Competition (WBPC) at the Wharton Entrepreneurial Programs.	team_member/stamer.jpg
5	Ben Feis	Student Director	 Ben helps support student entrepreneurs as Student Director of the Weiss Tech House. A senior from the Chicago area, he studies Philosophy, Politics & Economics as well as Engineering Entrepreneurship. On campus he also plays violin in the Penn Symphony Orchestra and is a member of the Phi Gamma Delta fraternity. He will be working at Goldman Sachs after graduation.	team_member/benfeis.jpg
6	Govind Mattay	Student Director		team_member/govindmattay.jpg
7	Anna Yang	Student Director	 Anna Yang, one of the Student Directors, is a student in the Jerome Fisher Program for Management and Technology studying computer science, marketing, and management. Her interests include entrepreneurial management, brand strategy, and software development. For her, Weiss Tech House has been an incredible way to help fellow students navigate the journey to growing their own innovative ideas. On campus, she is on the executive board of MUSE (Penn's premier marketing club) and president of Women in Computer Science.	team_member/annayang.jpg
8	Brent Shulman	Platform Co-Chair	Brent is a junior studying Computer Science and Cognitive Science and is the co-chair of the Platform Team. He is interested in AI, government contracting, and natural language processing and interned at In-Q-Tel last summer. When he is not coding, you can find him playing basketball or volleyball.	team_member/brentshulman.png
9	Alec Olesky	Platform Co-Chair	Alec is a junior from New York City studying Computer Science. He is a huge Red Sox fan, and also and actively hates the New York Yankees. He is also treasurer of Zeta Beta Tau, and interned at Broadway Technology last summer.	team_member/alec-olesky.jpg
10	Guthrie Gintzler	Weisslabs Cofounder	Guthrie catalyzes innovation at Penn as a Co-Founder of WeissLabs, the Weiss Tech House's incubator launched Fall 2015. A Senior M&T, Guthrie is studying Mechanical Engineering and Finance; he intends to sub-matriculate into the Robotics program. He is also the former Co-Chair of Pennvention. With an aptitude for entrepreneurship and passion for renewable energy, Guthrie has found himself in energy-related positions across the globe from LP Amina in Beijing to SunEdison in San Francisco. When not playing Al Gore, Guthrie enjoys shredding the slopes in Colorado, channeling Dave Brubeck as a jazz pianist, and spotting unicorns before they are exposed. He is a professional tinkerer.	team_member/guthrie.jpeg
11	Ernest Tavares	Weisslabs Cofounder	Ernest was brought on-board to assist with the founding of the WeissLabs incubator. He is a senior in Wharton studying, marketing, entrepreneurship and business analytics and has worked at both student-run and local Philadelphia startups since he arrived at Penn. He also currently interns at DreamIt Ventures where he is assisting accelerator companies with securing seed capital. When he’s not being a business-nerd Ernest enjoys photography and reading philosophy. He has a passion for all things disruptive and hopes to relocate to the Bay Area upon graduating.	team_member/ernest.jpg
12	Lauren Reeder	Innovation Fund Co-Chair	Lauren is a senior in the Jerome Fisher Management & Technology program at The University of Pennsylvania, where she studies computer science in the engineering school as well as statistics and finance at Wharton. She loves to ski, bike, and travel whenever the opportunity arises.	team_member/laurenreeder.png
13	Ross Iscowitz	Innovation Fund Co-Chair	 Ross is a co-chair of the Weiss Tech House Innovation Fund, and has served on the fund for the past three years. He is a senior in Wharton concentrating in Finance and Entrepreneurship. He is also a Joseph Wharton Scholar and works as a TA for three Wharton courses. In his free time, Ross loves to read about EdTech start-ups, play tennis with friends and watch the New York Mets!	team_member/rossiscowitz.png
14	Ben Barton	Event Roadmap Co-Chair	Ben Barton, co-chair of Events Roadmap, is a sophomore in Wharton concentrating in Finance and Management of Entrepreneurship and minoring in Physics. Outside of Weiss Tech House, Ben is involved with Varsity Rowing, Joseph Wharton Scholars program, WITG's Quantitative Analysis Team, FDTIC, and working on his startup Quixaro. Ben is interested in entrepreneurship, product management, finance, applied mathematics, data analysis, and EdTech. Ben is also an avid writer and Broadway enthusiast, and his favorite websites are Reddit and TechCrunch.	team_member/benbarton.jpg
15	Felipe Sinisterra	Event Roadmap Co-Chair	Felipe is a junior in Wharton studying Finance and Operations & Information Management and serves as co-chair of the Events Roadmap committee. He is passionate about promoting entrepreneurship within the technology industry. In the past, he has interned at Facebook and at Goldman Sachs. Outside of the classroom, Felipe follows soccer religiously and enjoys judging in barbecue contests.	team_member/felipesinisterra.jpg
16	Jordan Rosenthal	Pennvention Co-Chair	Jordan Rosenthal, Co-Director of the Pennvention competition, is a sophomore from New York studying Computer Science. He is passionate about innovation and creating a cohesive entrepreneurship community at Penn. He began in the Logistics committee for the Pennvention competition as a freshman and is excited to lead the competition’s continuing growth. For any questions about the competition contact him at jordanro@seas.upenn.edu.	team_member/rosenthal.jpg
17	Wanda Lipps	Pennvention Co-Chair	Wanda Lipps is a student in the Jerome Fisher Program of Management and Technology at the University of Pennsylvania pursuing degrees in Mechanical Engineering, Management, and Marketing. She is passionate about the intersection of technology and business and how it affects the world around her. She strives to serve as the bridge between these two seemingly different fields.	team_member/lipps.jpg
\.


--
-- Name: team_member_id_seq; Type: SEQUENCE SET; Schema: public; Owner: esnpvxtuxrdhht
--

SELECT pg_catalog.setval('team_member_id_seq', 17, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: esnpvxtuxrdhht
--

COPY users (id, email, fname, lname, phone, address, address2, city, state, zip, country, admin_level, school, major, graduation_year) FROM stdin;
0	aolesky@gmail.com	Alec	Olesky	9178559442	235 South 39th Street	\N	Philadelphia	PA	19104	USA	3	SEAS	CIS	2017
1	shulmanbrent@gmail.com	Blonk	Shulman	94991040110	3901 Locust Walk	\N	Philadelphia	PA	19104	USA	3	SEAS	CIS	2017
2	test@gmail.com	test	test	test	test		test	test	test	test	0			    
3	greenmachine1717@gmail.com	Ryan	Greenberg	12345678	up the face		poopcity	NJ	12342	USA	0			    
5	charrison@gmail.com	Colton	Harrrsion		34 South St.		Laguna Hills	PA	92653	United States	0	SEAS	CIS	2017
7	al;skdfja;lskdf	;alkdjf;alsj	asld;kfjas;dl		asl;dkfjsd;l	l;kj;as;dlkfja	a;lskdjfa;	asldfkja	asdflkj	dfgla;ksdjf	0	asdflkj	asdf	123 
8	qwerqwerqw	;alkdjf;alsj	asld;kfjas;dl		asl;dkfjsd;l	l;kj;as;dlkfja	a;lskdjfa;	asldfkja	asdflkj	dfgla;ksdjf	0	asdflkj	asdf	123 
9	test1@gmail.com	asdf	asdf		asdf	asdf	asdf	asdf	asdf	asdf	0	asdf	qasdf	123 
10											0			    
\.


--
-- Name: alumni_pkey; Type: CONSTRAINT; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

ALTER TABLE ONLY alumni
    ADD CONSTRAINT alumni_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: banners_pkey; Type: CONSTRAINT; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

ALTER TABLE ONLY banners
    ADD CONSTRAINT banners_pkey PRIMARY KEY (id);


--
-- Name: committee_pkey; Type: CONSTRAINT; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

ALTER TABLE ONLY committee
    ADD CONSTRAINT committee_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_model_key; Type: CONSTRAINT; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_key UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: team_member_pkey; Type: CONSTRAINT; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

ALTER TABLE ONLY team_member
    ADD CONSTRAINT team_member_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (email);


--
-- Name: auth_group_name_like; Type: INDEX; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

CREATE INDEX auth_group_name_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id; Type: INDEX; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

CREATE INDEX auth_group_permissions_group_id ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id; Type: INDEX; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

CREATE INDEX auth_group_permissions_permission_id ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id; Type: INDEX; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

CREATE INDEX auth_permission_content_type_id ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id; Type: INDEX; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

CREATE INDEX auth_user_groups_group_id ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id; Type: INDEX; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

CREATE INDEX auth_user_groups_user_id ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id; Type: INDEX; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_permission_id ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id; Type: INDEX; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_user_id ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_like; Type: INDEX; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

CREATE INDEX auth_user_username_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id; Type: INDEX; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

CREATE INDEX django_admin_log_content_type_id ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id; Type: INDEX; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

CREATE INDEX django_admin_log_user_id ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date; Type: INDEX; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

CREATE INDEX django_session_expire_date ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_like; Type: INDEX; Schema: public; Owner: esnpvxtuxrdhht; Tablespace: 
--

CREATE INDEX django_session_session_key_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: esnpvxtuxrdhht
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: esnpvxtuxrdhht
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: esnpvxtuxrdhht
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_93d2d1f8; Type: FK CONSTRAINT; Schema: public; Owner: esnpvxtuxrdhht
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT content_type_id_refs_id_93d2d1f8 FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_d043b34a; Type: FK CONSTRAINT; Schema: public; Owner: esnpvxtuxrdhht
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT content_type_id_refs_id_d043b34a FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_id_refs_id_f4b32aac; Type: FK CONSTRAINT; Schema: public; Owner: esnpvxtuxrdhht
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT group_id_refs_id_f4b32aac FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_40c41112; Type: FK CONSTRAINT; Schema: public; Owner: esnpvxtuxrdhht
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT user_id_refs_id_40c41112 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_4dc23c39; Type: FK CONSTRAINT; Schema: public; Owner: esnpvxtuxrdhht
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT user_id_refs_id_4dc23c39 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_c0d12874; Type: FK CONSTRAINT; Schema: public; Owner: esnpvxtuxrdhht
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT user_id_refs_id_c0d12874 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

