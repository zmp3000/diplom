PGDMP     *                    |            test_diplom    15.1    15.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    49624    test_diplom    DATABASE     �   CREATE DATABASE test_diplom WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Belarus.1252';
    DROP DATABASE test_diplom;
                postgres    false            �            1259    49796 
   filter_rek    TABLE     �   CREATE TABLE public.filter_rek (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text,
    link character varying(255) NOT NULL
);
    DROP TABLE public.filter_rek;
       public         heap    postgres    false            �            1259    49795    filter_rek_id_seq    SEQUENCE     �   CREATE SEQUENCE public.filter_rek_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.filter_rek_id_seq;
       public          postgres    false    215                       0    0    filter_rek_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.filter_rek_id_seq OWNED BY public.filter_rek.id;
          public          postgres    false    214            �            1259    49805    profile_rek    TABLE     �   CREATE TABLE public.profile_rek (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text,
    link character varying(255) NOT NULL
);
    DROP TABLE public.profile_rek;
       public         heap    postgres    false            �            1259    49804    profile_rek_id_seq    SEQUENCE     �   CREATE SEQUENCE public.profile_rek_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.profile_rek_id_seq;
       public          postgres    false    217                       0    0    profile_rek_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.profile_rek_id_seq OWNED BY public.profile_rek.id;
          public          postgres    false    216            �            1259    49815    users    TABLE     �  CREATE TABLE public.users (
    user_id integer NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    name character varying(255),
    age character varying(255),
    weight character varying(255),
    height character varying(255),
    martial_arts character varying(255),
    rank character varying(255),
    additional_details text
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    49814    users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          postgres    false    219                       0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
          public          postgres    false    218            o           2604    49799    filter_rek id    DEFAULT     n   ALTER TABLE ONLY public.filter_rek ALTER COLUMN id SET DEFAULT nextval('public.filter_rek_id_seq'::regclass);
 <   ALTER TABLE public.filter_rek ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            p           2604    49808    profile_rek id    DEFAULT     p   ALTER TABLE ONLY public.profile_rek ALTER COLUMN id SET DEFAULT nextval('public.profile_rek_id_seq'::regclass);
 =   ALTER TABLE public.profile_rek ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            q           2604    49818    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    219    218    219            	          0    49796 
   filter_rek 
   TABLE DATA           B   COPY public.filter_rek (id, title, description, link) FROM stdin;
    public          postgres    false    215   V                 0    49805    profile_rek 
   TABLE DATA           C   COPY public.profile_rek (id, title, description, link) FROM stdin;
    public          postgres    false    217   �                 0    49815    users 
   TABLE DATA           |   COPY public.users (user_id, email, password, name, age, weight, height, martial_arts, rank, additional_details) FROM stdin;
    public          postgres    false    219   �                  0    0    filter_rek_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.filter_rek_id_seq', 2, true);
          public          postgres    false    214                       0    0    profile_rek_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.profile_rek_id_seq', 1, false);
          public          postgres    false    216                       0    0    users_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.users_user_id_seq', 3, true);
          public          postgres    false    218            s           2606    49803    filter_rek filter_rek_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.filter_rek
    ADD CONSTRAINT filter_rek_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.filter_rek DROP CONSTRAINT filter_rek_pkey;
       public            postgres    false    215            u           2606    49812    profile_rek profile_rek_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.profile_rek
    ADD CONSTRAINT profile_rek_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.profile_rek DROP CONSTRAINT profile_rek_pkey;
       public            postgres    false    217            w           2606    49824    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    219            y           2606    49822    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    219            	   "   x�3�vq�����tqҜ9�Y\FX�b���� ��
�         -   x�3�N-JO�tO��)*M��J�J�2��d��!���qqq ���         G   x�3�LL���sH�M���K���t
p���D\F�^��E)�D�6���GW���������"�b���� �%"�     