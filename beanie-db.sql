--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

-- Started on 2025-06-13 16:34:50

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 231 (class 1259 OID 16779)
-- Name: arrival_tb; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.arrival_tb (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    "desc" text NOT NULL,
    image character varying(255) NOT NULL,
    price numeric(8,2) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.arrival_tb OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16778)
-- Name: arrival_tb_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.arrival_tb_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.arrival_tb_id_seq OWNER TO postgres;

--
-- TOC entry 5002 (class 0 OID 0)
-- Dependencies: 230
-- Name: arrival_tb_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.arrival_tb_id_seq OWNED BY public.arrival_tb.id;


--
-- TOC entry 233 (class 1259 OID 16788)
-- Name: best_selling_tb; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.best_selling_tb (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    "desc" text NOT NULL,
    image character varying(255) NOT NULL,
    price numeric(8,2) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.best_selling_tb OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 16787)
-- Name: best_selling_tb_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.best_selling_tb_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.best_selling_tb_id_seq OWNER TO postgres;

--
-- TOC entry 5003 (class 0 OID 0)
-- Dependencies: 232
-- Name: best_selling_tb_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.best_selling_tb_id_seq OWNED BY public.best_selling_tb.id;


--
-- TOC entry 235 (class 1259 OID 16797)
-- Name: blog_tb; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_tb (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    image character varying(255) NOT NULL,
    description text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.blog_tb OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 16796)
-- Name: blog_tb_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_tb_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.blog_tb_id_seq OWNER TO postgres;

--
-- TOC entry 5004 (class 0 OID 0)
-- Dependencies: 234
-- Name: blog_tb_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_tb_id_seq OWNED BY public.blog_tb.id;


--
-- TOC entry 223 (class 1259 OID 16737)
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16736)
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.failed_jobs_id_seq OWNER TO postgres;

--
-- TOC entry 5005 (class 0 OID 0)
-- Dependencies: 222
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- TOC entry 218 (class 1259 OID 16712)
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16711)
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.migrations_id_seq OWNER TO postgres;

--
-- TOC entry 5006 (class 0 OID 0)
-- Dependencies: 217
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- TOC entry 221 (class 1259 OID 16729)
-- Name: password_reset_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_reset_tokens OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16749)
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.personal_access_tokens OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16748)
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.personal_access_tokens_id_seq OWNER TO postgres;

--
-- TOC entry 5007 (class 0 OID 0)
-- Dependencies: 224
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- TOC entry 237 (class 1259 OID 16807)
-- Name: post_tb; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post_tb (
    id bigint NOT NULL,
    image character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.post_tb OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 16806)
-- Name: post_tb_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.post_tb_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.post_tb_id_seq OWNER TO postgres;

--
-- TOC entry 5008 (class 0 OID 0)
-- Dependencies: 236
-- Name: post_tb_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.post_tb_id_seq OWNED BY public.post_tb.id;


--
-- TOC entry 227 (class 1259 OID 16761)
-- Name: shop_tb; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shop_tb (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    image character varying(255) NOT NULL,
    price numeric(10,2) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.shop_tb OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16760)
-- Name: shop_tb_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.shop_tb_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.shop_tb_id_seq OWNER TO postgres;

--
-- TOC entry 5009 (class 0 OID 0)
-- Dependencies: 226
-- Name: shop_tb_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.shop_tb_id_seq OWNED BY public.shop_tb.id;


--
-- TOC entry 229 (class 1259 OID 16770)
-- Name: table_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.table_categories (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    image character varying(255) NOT NULL,
    description text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.table_categories OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16769)
-- Name: table_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.table_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_categories_id_seq OWNER TO postgres;

--
-- TOC entry 5010 (class 0 OID 0)
-- Dependencies: 228
-- Name: table_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.table_categories_id_seq OWNED BY public.table_categories.id;


--
-- TOC entry 220 (class 1259 OID 16719)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16718)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 5011 (class 0 OID 0)
-- Dependencies: 219
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 4798 (class 2604 OID 16782)
-- Name: arrival_tb id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.arrival_tb ALTER COLUMN id SET DEFAULT nextval('public.arrival_tb_id_seq'::regclass);


--
-- TOC entry 4799 (class 2604 OID 16791)
-- Name: best_selling_tb id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.best_selling_tb ALTER COLUMN id SET DEFAULT nextval('public.best_selling_tb_id_seq'::regclass);


--
-- TOC entry 4800 (class 2604 OID 16800)
-- Name: blog_tb id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_tb ALTER COLUMN id SET DEFAULT nextval('public.blog_tb_id_seq'::regclass);


--
-- TOC entry 4793 (class 2604 OID 16740)
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- TOC entry 4791 (class 2604 OID 16715)
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- TOC entry 4795 (class 2604 OID 16752)
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- TOC entry 4801 (class 2604 OID 16810)
-- Name: post_tb id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_tb ALTER COLUMN id SET DEFAULT nextval('public.post_tb_id_seq'::regclass);


--
-- TOC entry 4796 (class 2604 OID 16764)
-- Name: shop_tb id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shop_tb ALTER COLUMN id SET DEFAULT nextval('public.shop_tb_id_seq'::regclass);


--
-- TOC entry 4797 (class 2604 OID 16773)
-- Name: table_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.table_categories ALTER COLUMN id SET DEFAULT nextval('public.table_categories_id_seq'::regclass);


--
-- TOC entry 4792 (class 2604 OID 16722)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 4990 (class 0 OID 16779)
-- Dependencies: 231
-- Data for Name: arrival_tb; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.arrival_tb (id, title, "desc", image, price, created_at, updated_at) FROM stdin;
1	Coconut Kiss	A strong and concentrated shot of coffee.	images/arrival/coconut-kiss.png	2.99	2025-06-13 08:36:51	2025-06-13 08:36:51
2	Pumpkin Spice Surpirse	A shot of espresso diluted with hot water.	images/arrival/pumpkin-spice.png	3.49	2025-06-13 08:36:51	2025-06-13 08:36:51
3	Toffee Temptation	Equal parts of espresso, steamed milk, and foam, topped with cocoa.	images/arrival/toffe-temptation.png	3.99	2025-06-13 08:36:51	2025-06-13 08:36:51
4	Gingerbread Galore	Creamy espresso with steamed milk and a thin layer of foam.	images/arrival/gingerbread-galore.png	4.49	2025-06-13 08:36:51	2025-06-13 08:36:51
5	Salted Caramel Sip	A nutty and indulgent latte with a hint of macadamia flavor.	images/arrival/salted-caramel.png	3.99	2025-06-13 08:36:51	2025-06-13 08:36:51
\.


--
-- TOC entry 4992 (class 0 OID 16788)
-- Dependencies: 233
-- Data for Name: best_selling_tb; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.best_selling_tb (id, title, "desc", image, price, created_at, updated_at) FROM stdin;
1	Cinnamon Swirl	A strong and concentrated shot of coffee.	images/arrival/cinnamon-swirl.png	2.99	2025-06-13 08:36:51	2025-06-13 08:36:51
2	Hazelnut Heaven	A shot of espresso diluted with hot water.	images/arrival/hazelnut-heaven.png	3.49	2025-06-13 08:36:51	2025-06-13 08:36:51
3	Peppermint Perk	Equal parts of espresso, steamed milk, and foam, topped with cocoa.	images/arrival/peppermint-perk.png	3.99	2025-06-13 08:36:51	2025-06-13 08:36:51
4	Berry Blast	Creamy espresso with steamed milk and a thin layer of foam.	images/arrival/berry-blast.png	4.49	2025-06-13 08:36:51	2025-06-13 08:36:51
5	Macadamia Nut Latte	A nutty and indulgent latte with a hint of macadamia flavor.	images/arrival/macademia-nut.png	3.99	2025-06-13 08:36:51	2025-06-13 08:36:51
\.


--
-- TOC entry 4994 (class 0 OID 16797)
-- Dependencies: 235
-- Data for Name: blog_tb; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_tb (id, title, image, description, created_at, updated_at) FROM stdin;
1	WHAT IS THE BEST COFFEE?	best-coffee.png	Ullamcorper ultrices elit viverra congue velit amet. Egestas bibendum leo odio fringilla quam metus sagittis non eu pellentesque facilisis.	\N	\N
2	HOW COFFEE WORKS FOR YOUR BODY	how-coffee.png	Ullamcorper ultrices elit viverra congue velit amet. Egestas bibendum leo odio fringilla quam metus sagittis non eu pellentesque facilisis.	\N	\N
3	CUP OF COFFEE FOR YOUR HAPPINESS	cup-of-coffee.png	Ullamcorper ultrices elit viverra congue velit amet. Egestas bibendum leo odio fringilla quam metus sagittis non eu pellentesque facilisis.	\N	\N
\.


--
-- TOC entry 4982 (class 0 OID 16737)
-- Dependencies: 223
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- TOC entry 4977 (class 0 OID 16712)
-- Dependencies: 218
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	2014_10_12_000000_create_users_table	1
2	2014_10_12_100000_create_password_reset_tokens_table	1
3	2019_08_19_000000_create_failed_jobs_table	1
4	2019_12_14_000001_create_personal_access_tokens_table	1
5	2025_06_13_064800_create_shop_tb_table	1
6	2025_06_13_072653_create_table_categories	1
7	2025_06_13_074133_create_arrival_tb	1
8	2025_06_13_074313_create_best_selling_tb	1
9	2025_06_13_082535_create_blog_tb_table	1
10	2025_06_13_084300_create_post_tb_table	2
\.


--
-- TOC entry 4980 (class 0 OID 16729)
-- Dependencies: 221
-- Data for Name: password_reset_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
\.


--
-- TOC entry 4984 (class 0 OID 16749)
-- Dependencies: 225
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 4996 (class 0 OID 16807)
-- Dependencies: 237
-- Data for Name: post_tb; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post_tb (id, image, created_at, updated_at) FROM stdin;
1	ig-1.png	\N	\N
2	ig-2.png	\N	\N
3	ig-3.png	\N	\N
4	ig-4.png	\N	\N
5	ig-5.png	\N	\N
6	ig-6.png	\N	\N
\.


--
-- TOC entry 4986 (class 0 OID 16761)
-- Dependencies: 227
-- Data for Name: shop_tb; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shop_tb (id, name, image, price, created_at, updated_at) FROM stdin;
1	Caramelicious	images/products/caramelicious.png	29.00	2025-06-13 08:36:51	2025-06-13 08:36:51
2	Hazelnut Heaven	images/products/hazelnut.png	29.00	2025-06-13 08:36:51	2025-06-13 08:36:51
3	Mapel Magic	images/products/maple.png	29.00	2025-06-13 08:36:51	2025-06-13 08:36:51
4	Coffee Bean	images/products/bean.png	29.00	2025-06-13 08:36:51	2025-06-13 08:36:51
5	Coffee Maker Heaven	images/products/maker.png	29.00	2025-06-13 08:36:51	2025-06-13 08:36:51
\.


--
-- TOC entry 4988 (class 0 OID 16770)
-- Dependencies: 229
-- Data for Name: table_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.table_categories (id, title, image, description, created_at, updated_at) FROM stdin;
1	Coffee Gift Sets	images/category/coffee-gift.png	Euismod eget id posuere nisl ut me duis in lectus elementum tincidunt augue ut neque in tincidunt amet et ultrices.	\N	\N
2	Instant Coffee	images/category/coffee-instant.png	Euismod eget id posuere nisl ut me duis in lectus elementum tincidunt augue ut neque in tincidunt amet et ultrices.	\N	\N
4	Coffee Accessories	images/category/coffee-accessories.png	Euismod eget id posuere nisl ut me duis in lectus elementum tincidunt augue ut neque in tincidunt amet et ultrices.	\N	\N
3	Coffee Maker	images/category/coffee-maker.png	Euismod eget id posuere nisl ut me duis in lectus elementum tincidunt augue ut neque in tincidunt amet et ultrices.	\N	\N
\.


--
-- TOC entry 4979 (class 0 OID 16719)
-- Dependencies: 220
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5012 (class 0 OID 0)
-- Dependencies: 230
-- Name: arrival_tb_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.arrival_tb_id_seq', 10, true);


--
-- TOC entry 5013 (class 0 OID 0)
-- Dependencies: 232
-- Name: best_selling_tb_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.best_selling_tb_id_seq', 10, true);


--
-- TOC entry 5014 (class 0 OID 0)
-- Dependencies: 234
-- Name: blog_tb_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_tb_id_seq', 6, true);


--
-- TOC entry 5015 (class 0 OID 0)
-- Dependencies: 222
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- TOC entry 5016 (class 0 OID 0)
-- Dependencies: 217
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 10, true);


--
-- TOC entry 5017 (class 0 OID 0)
-- Dependencies: 224
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);


--
-- TOC entry 5018 (class 0 OID 0)
-- Dependencies: 236
-- Name: post_tb_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.post_tb_id_seq', 6, true);


--
-- TOC entry 5019 (class 0 OID 0)
-- Dependencies: 226
-- Name: shop_tb_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shop_tb_id_seq', 10, true);


--
-- TOC entry 5020 (class 0 OID 0)
-- Dependencies: 228
-- Name: table_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.table_categories_id_seq', 8, true);


--
-- TOC entry 5021 (class 0 OID 0)
-- Dependencies: 219
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- TOC entry 4824 (class 2606 OID 16786)
-- Name: arrival_tb arrival_tb_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.arrival_tb
    ADD CONSTRAINT arrival_tb_pkey PRIMARY KEY (id);


--
-- TOC entry 4826 (class 2606 OID 16795)
-- Name: best_selling_tb best_selling_tb_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.best_selling_tb
    ADD CONSTRAINT best_selling_tb_pkey PRIMARY KEY (id);


--
-- TOC entry 4828 (class 2606 OID 16804)
-- Name: blog_tb blog_tb_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_tb
    ADD CONSTRAINT blog_tb_pkey PRIMARY KEY (id);


--
-- TOC entry 4811 (class 2606 OID 16745)
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 4813 (class 2606 OID 16747)
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- TOC entry 4803 (class 2606 OID 16717)
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 4809 (class 2606 OID 16735)
-- Name: password_reset_tokens password_reset_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);


--
-- TOC entry 4815 (class 2606 OID 16756)
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 4817 (class 2606 OID 16759)
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- TOC entry 4830 (class 2606 OID 16812)
-- Name: post_tb post_tb_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_tb
    ADD CONSTRAINT post_tb_pkey PRIMARY KEY (id);


--
-- TOC entry 4820 (class 2606 OID 16768)
-- Name: shop_tb shop_tb_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shop_tb
    ADD CONSTRAINT shop_tb_pkey PRIMARY KEY (id);


--
-- TOC entry 4822 (class 2606 OID 16777)
-- Name: table_categories table_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.table_categories
    ADD CONSTRAINT table_categories_pkey PRIMARY KEY (id);


--
-- TOC entry 4805 (class 2606 OID 16728)
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- TOC entry 4807 (class 2606 OID 16726)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4818 (class 1259 OID 16757)
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


-- Completed on 2025-06-13 16:34:50

--
-- PostgreSQL database dump complete
--

