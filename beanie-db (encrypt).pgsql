PGDMP  4    !                }         	   beanie-db    17.5    17.5 Q    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16612 	   beanie-db    DATABASE     �   CREATE DATABASE "beanie-db" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE "beanie-db";
                     postgres    false            �            1259    16779 
   arrival_tb    TABLE     *  CREATE TABLE public.arrival_tb (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    "desc" text NOT NULL,
    image character varying(255) NOT NULL,
    price numeric(8,2) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.arrival_tb;
       public         heap r       postgres    false            �            1259    16778    arrival_tb_id_seq    SEQUENCE     z   CREATE SEQUENCE public.arrival_tb_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.arrival_tb_id_seq;
       public               postgres    false    231            �           0    0    arrival_tb_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.arrival_tb_id_seq OWNED BY public.arrival_tb.id;
          public               postgres    false    230            �            1259    16788    best_selling_tb    TABLE     /  CREATE TABLE public.best_selling_tb (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    "desc" text NOT NULL,
    image character varying(255) NOT NULL,
    price numeric(8,2) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 #   DROP TABLE public.best_selling_tb;
       public         heap r       postgres    false            �            1259    16787    best_selling_tb_id_seq    SEQUENCE        CREATE SEQUENCE public.best_selling_tb_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.best_selling_tb_id_seq;
       public               postgres    false    233            �           0    0    best_selling_tb_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.best_selling_tb_id_seq OWNED BY public.best_selling_tb.id;
          public               postgres    false    232            �            1259    16797    blog_tb    TABLE       CREATE TABLE public.blog_tb (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    image character varying(255) NOT NULL,
    description text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.blog_tb;
       public         heap r       postgres    false            �            1259    16796    blog_tb_id_seq    SEQUENCE     w   CREATE SEQUENCE public.blog_tb_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.blog_tb_id_seq;
       public               postgres    false    235            �           0    0    blog_tb_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.blog_tb_id_seq OWNED BY public.blog_tb.id;
          public               postgres    false    234            �            1259    16737    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap r       postgres    false            �            1259    16736    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public               postgres    false    223            �           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public               postgres    false    222            �            1259    16712 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap r       postgres    false            �            1259    16711    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public               postgres    false    218            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public               postgres    false    217            �            1259    16729    password_reset_tokens    TABLE     �   CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 )   DROP TABLE public.password_reset_tokens;
       public         heap r       postgres    false            �            1259    16749    personal_access_tokens    TABLE     �  CREATE TABLE public.personal_access_tokens (
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
 *   DROP TABLE public.personal_access_tokens;
       public         heap r       postgres    false            �            1259    16748    personal_access_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.personal_access_tokens_id_seq;
       public               postgres    false    225            �           0    0    personal_access_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;
          public               postgres    false    224            �            1259    16807    post_tb    TABLE     �   CREATE TABLE public.post_tb (
    id bigint NOT NULL,
    image character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.post_tb;
       public         heap r       postgres    false            �            1259    16806    post_tb_id_seq    SEQUENCE     w   CREATE SEQUENCE public.post_tb_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.post_tb_id_seq;
       public               postgres    false    237            �           0    0    post_tb_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.post_tb_id_seq OWNED BY public.post_tb.id;
          public               postgres    false    236            �            1259    16761    shop_tb    TABLE       CREATE TABLE public.shop_tb (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    image character varying(255) NOT NULL,
    price numeric(10,2) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.shop_tb;
       public         heap r       postgres    false            �            1259    16760    shop_tb_id_seq    SEQUENCE     w   CREATE SEQUENCE public.shop_tb_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.shop_tb_id_seq;
       public               postgres    false    227            �           0    0    shop_tb_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.shop_tb_id_seq OWNED BY public.shop_tb.id;
          public               postgres    false    226            �            1259    16770    table_categories    TABLE       CREATE TABLE public.table_categories (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    image character varying(255) NOT NULL,
    description text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 $   DROP TABLE public.table_categories;
       public         heap r       postgres    false            �            1259    16769    table_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.table_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.table_categories_id_seq;
       public               postgres    false    229            �           0    0    table_categories_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.table_categories_id_seq OWNED BY public.table_categories.id;
          public               postgres    false    228            �            1259    16719    users    TABLE     x  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap r       postgres    false            �            1259    16718    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public               postgres    false    220            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public               postgres    false    219            �           2604    16782    arrival_tb id    DEFAULT     n   ALTER TABLE ONLY public.arrival_tb ALTER COLUMN id SET DEFAULT nextval('public.arrival_tb_id_seq'::regclass);
 <   ALTER TABLE public.arrival_tb ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    231    230    231            �           2604    16791    best_selling_tb id    DEFAULT     x   ALTER TABLE ONLY public.best_selling_tb ALTER COLUMN id SET DEFAULT nextval('public.best_selling_tb_id_seq'::regclass);
 A   ALTER TABLE public.best_selling_tb ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    232    233    233            �           2604    16800 
   blog_tb id    DEFAULT     h   ALTER TABLE ONLY public.blog_tb ALTER COLUMN id SET DEFAULT nextval('public.blog_tb_id_seq'::regclass);
 9   ALTER TABLE public.blog_tb ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    235    234    235            �           2604    16740    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    222    223    223            �           2604    16715    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    218    217    218            �           2604    16752    personal_access_tokens id    DEFAULT     �   ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);
 H   ALTER TABLE public.personal_access_tokens ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    224    225    225            �           2604    16810 
   post_tb id    DEFAULT     h   ALTER TABLE ONLY public.post_tb ALTER COLUMN id SET DEFAULT nextval('public.post_tb_id_seq'::regclass);
 9   ALTER TABLE public.post_tb ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    236    237    237            �           2604    16764 
   shop_tb id    DEFAULT     h   ALTER TABLE ONLY public.shop_tb ALTER COLUMN id SET DEFAULT nextval('public.shop_tb_id_seq'::regclass);
 9   ALTER TABLE public.shop_tb ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    227    226    227            �           2604    16773    table_categories id    DEFAULT     z   ALTER TABLE ONLY public.table_categories ALTER COLUMN id SET DEFAULT nextval('public.table_categories_id_seq'::regclass);
 B   ALTER TABLE public.table_categories ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    228    229    229            �           2604    16722    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    220    219    220            ~          0    16779 
   arrival_tb 
   TABLE DATA           ]   COPY public.arrival_tb (id, title, "desc", image, price, created_at, updated_at) FROM stdin;
    public               postgres    false    231   �`       �          0    16788    best_selling_tb 
   TABLE DATA           b   COPY public.best_selling_tb (id, title, "desc", image, price, created_at, updated_at) FROM stdin;
    public               postgres    false    233   "b       �          0    16797    blog_tb 
   TABLE DATA           X   COPY public.blog_tb (id, title, image, description, created_at, updated_at) FROM stdin;
    public               postgres    false    235   �c       v          0    16737    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public               postgres    false    223   {d       q          0    16712 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public               postgres    false    218   �d       t          0    16729    password_reset_tokens 
   TABLE DATA           I   COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
    public               postgres    false    221   ye       x          0    16749    personal_access_tokens 
   TABLE DATA           �   COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
    public               postgres    false    225   �e       �          0    16807    post_tb 
   TABLE DATA           D   COPY public.post_tb (id, image, created_at, updated_at) FROM stdin;
    public               postgres    false    237   �e       z          0    16761    shop_tb 
   TABLE DATA           Q   COPY public.shop_tb (id, name, image, price, created_at, updated_at) FROM stdin;
    public               postgres    false    227   �e       |          0    16770    table_categories 
   TABLE DATA           a   COPY public.table_categories (id, title, image, description, created_at, updated_at) FROM stdin;
    public               postgres    false    229   �f       s          0    16719    users 
   TABLE DATA           u   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public               postgres    false    220   �g       �           0    0    arrival_tb_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.arrival_tb_id_seq', 10, true);
          public               postgres    false    230            �           0    0    best_selling_tb_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.best_selling_tb_id_seq', 10, true);
          public               postgres    false    232            �           0    0    blog_tb_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.blog_tb_id_seq', 6, true);
          public               postgres    false    234            �           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public               postgres    false    222            �           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 10, true);
          public               postgres    false    217            �           0    0    personal_access_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);
          public               postgres    false    224            �           0    0    post_tb_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.post_tb_id_seq', 6, true);
          public               postgres    false    236            �           0    0    shop_tb_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.shop_tb_id_seq', 10, true);
          public               postgres    false    226            �           0    0    table_categories_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.table_categories_id_seq', 8, true);
          public               postgres    false    228            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public               postgres    false    219            �           2606    16786    arrival_tb arrival_tb_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.arrival_tb
    ADD CONSTRAINT arrival_tb_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.arrival_tb DROP CONSTRAINT arrival_tb_pkey;
       public                 postgres    false    231            �           2606    16795 $   best_selling_tb best_selling_tb_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.best_selling_tb
    ADD CONSTRAINT best_selling_tb_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.best_selling_tb DROP CONSTRAINT best_selling_tb_pkey;
       public                 postgres    false    233            �           2606    16804    blog_tb blog_tb_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.blog_tb
    ADD CONSTRAINT blog_tb_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.blog_tb DROP CONSTRAINT blog_tb_pkey;
       public                 postgres    false    235            �           2606    16745    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public                 postgres    false    223            �           2606    16747 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public                 postgres    false    223            �           2606    16717    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public                 postgres    false    218            �           2606    16735 0   password_reset_tokens password_reset_tokens_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);
 Z   ALTER TABLE ONLY public.password_reset_tokens DROP CONSTRAINT password_reset_tokens_pkey;
       public                 postgres    false    221            �           2606    16756 2   personal_access_tokens personal_access_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
       public                 postgres    false    225            �           2606    16759 :   personal_access_tokens personal_access_tokens_token_unique 
   CONSTRAINT     v   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);
 d   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_token_unique;
       public                 postgres    false    225            �           2606    16812    post_tb post_tb_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.post_tb
    ADD CONSTRAINT post_tb_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.post_tb DROP CONSTRAINT post_tb_pkey;
       public                 postgres    false    237            �           2606    16768    shop_tb shop_tb_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.shop_tb
    ADD CONSTRAINT shop_tb_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.shop_tb DROP CONSTRAINT shop_tb_pkey;
       public                 postgres    false    227            �           2606    16777 &   table_categories table_categories_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.table_categories
    ADD CONSTRAINT table_categories_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.table_categories DROP CONSTRAINT table_categories_pkey;
       public                 postgres    false    229            �           2606    16728    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public                 postgres    false    220            �           2606    16726    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    220            �           1259    16757 8   personal_access_tokens_tokenable_type_tokenable_id_index    INDEX     �   CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);
 L   DROP INDEX public.personal_access_tokens_tokenable_type_tokenable_id_index;
       public                 postgres    false    225    225            ~   \  x��ҿn�0��y�{ �B��U�b�R)�]��%X�_m���vhA�Cs�>���gl��o�9��[�z@�B�7��EO-�����0�:��q�=�'��Q<5cJ~)�Q=+�Պ��r�O������Z���fY��i\AmxCP�p�(z.�3����r1DЉ�=ğ��w 3�.&QU��/��.]v$�Gϵb�_
0h��MBg�2�$�I���('�1?�X�)}<$��g\�T7g[�z�����-
m�m<_;K�[eB"�}�\��l�PD�	�kzާ�d�?R��(��6hA@�MXmx/��$\����[�i�"]ڽ�[��x���v)>o���K�(�,����-      �   X  x���Mn�0�s�9 I!T�T�E[!u�͐L���JO_ۍ(]�U$�y��&3��J��
������@UA�UI�tT�m�]�ź&��ؐ}@c�	�C9�6�d�jX��V,��t�LgL��r������l�_$T�`Gx"(�d;C�j�����]a��i��ҎIi�"�����lO]GFr�`O�Ȟ?{Сq�Z4�uJO�\'��Z����>`����x��.W��y�wT6g2f��@���x���U��Zq��
d��b�C����=�-�+�X��o~�/��a�y�!��z���3�ޏ�e{���^<������>���>�$I�Qd�;      �   �   x�͏[j�0D��U�bh����2����	�GV�]�,9z�ۯ)m���a8�ya}yhqnЖG޴8������N�q$�;��9+��H&z�(���X�J�K(g�DXJ9S����"=�����];�^�IoL<����S@���QXgA	C6Rxl�Q*mt�!g�˖압����^�
Q�*�G�~e������Uş����PU�o�Ҳs�sk��,˾���      v      x������ � �      q   �   x�]�ݎ� �ky��S뻘L��v�K�aP__j#-r1��;�	pP�DP(��D.ޙcv>���Ch��1?c�b"��9�Ӽ�<��q�M��M������ʗ�r�=e�8��n���Ȗ��(;]��"��7̾Ү�'�Y��o�C��1M�E�Zm@W�R�e��뿜��<qF��y\�����V��dk���},W���(�x�C��      t      x������ � �      x      x������ � �      �   :   x�3��L�5�+�K��".#����1H�I�$`�$`
0E0	�!	��qqq �b�      z   �   x���A�0���� P�e	6���Xll��ԅ�WML�M��'�O&��d��s�-��3���V���6u��
R�2U�\�뢪��W�$tx'3��w�7�6�w�У#�{�����u�<D�!ܞ{z�h�A{�����UF�ǔ1� X�{�      |   �   x�Ő1NAE��S�lD�B��4�iF�G;3al��("��+������^�<�Ƴ�'T��!����]�����j,�M�%�����A�e!S*���J��T�B�5�dU)Z6\��o��_�آ�d��g؇�*��J���������C��X}n�G6�~�Y�/�5�r)76=��0����      s      x������ � �     