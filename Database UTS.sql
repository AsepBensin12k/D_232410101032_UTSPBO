PGDMP  9                
    |            Library    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    49152    Library    DATABASE     �   CREATE DATABASE "Library" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE "Library";
                postgres    false            �            1259    49170    admin    TABLE       CREATE TABLE public.admin (
    id integer NOT NULL,
    nama character varying(100) NOT NULL,
    username character varying(100) NOT NULL,
    password character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    no_hp character varying(50) NOT NULL
);
    DROP TABLE public.admin;
       public         heap    postgres    false            �            1259    49169    admin_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.admin_id_seq;
       public          postgres    false    218            �           0    0    admin_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.admin_id_seq OWNED BY public.admin.id;
          public          postgres    false    217            �            1259    49154    buku    TABLE     �   CREATE TABLE public.buku (
    id integer NOT NULL,
    nama_buku character varying(100) NOT NULL,
    jenis_buku character varying(20) NOT NULL,
    tahun_terbit integer NOT NULL,
    penulis character varying NOT NULL
);
    DROP TABLE public.buku;
       public         heap    postgres    false            �            1259    49153    buku_id_seq    SEQUENCE     �   CREATE SEQUENCE public.buku_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.buku_id_seq;
       public          postgres    false    216            �           0    0    buku_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.buku_id_seq OWNED BY public.buku.id;
          public          postgres    false    215            V           2604    49173    admin id    DEFAULT     d   ALTER TABLE ONLY public.admin ALTER COLUMN id SET DEFAULT nextval('public.admin_id_seq'::regclass);
 7   ALTER TABLE public.admin ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            U           2604    49157    buku id    DEFAULT     b   ALTER TABLE ONLY public.buku ALTER COLUMN id SET DEFAULT nextval('public.buku_id_seq'::regclass);
 6   ALTER TABLE public.buku ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �          0    49170    admin 
   TABLE DATA           K   COPY public.admin (id, nama, username, password, email, no_hp) FROM stdin;
    public          postgres    false    218   N       �          0    49154    buku 
   TABLE DATA           P   COPY public.buku (id, nama_buku, jenis_buku, tahun_terbit, penulis) FROM stdin;
    public          postgres    false    216   �       �           0    0    admin_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.admin_id_seq', 1, true);
          public          postgres    false    217            �           0    0    buku_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.buku_id_seq', 4, true);
          public          postgres    false    215            Z           2606    49175    admin admin_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.admin DROP CONSTRAINT admin_pkey;
       public            postgres    false    218            X           2606    49161    buku buku_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.buku
    ADD CONSTRAINT buku_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.buku DROP CONSTRAINT buku_pkey;
       public            postgres    false    216            �   8   x�3�L,N-HJ�+��Cbes����9��&f��%��rX����-�b���� |?�      �   �   x�E�9�0E��)�(4.#ѱ$��/�"nOR ���ޓ0L����9Y����m��ɓ�S��F�pf�A9v~�T��{A*����0b�,j�T(#-�i	w
%��8�)���΢c?���C-1Y�)��r��<��N���:�     