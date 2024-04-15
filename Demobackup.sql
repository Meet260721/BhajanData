PGDMP  -                    |           Demo    16.2    16.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            !           1262    16398    Demo    DATABASE     h   CREATE DATABASE "Demo" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE "Demo";
                postgres    false            �            1259    16423    genre    TABLE     d   CREATE TABLE public.genre (
    genre_id integer NOT NULL,
    genre_name character varying(255)
);
    DROP TABLE public.genre;
       public         heap    postgres    false            �            1259    16422    genre_genre_id_seq    SEQUENCE     �   CREATE SEQUENCE public.genre_genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.genre_genre_id_seq;
       public          postgres    false    220            "           0    0    genre_genre_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.genre_genre_id_seq OWNED BY public.genre.genre_id;
          public          postgres    false    219            �            1259    16400    playlist    TABLE     �   CREATE TABLE public.playlist (
    playlist_id integer NOT NULL,
    playlist_name character varying(255),
    description text,
    creator_username character varying(255),
    creator_email character varying(255)
);
    DROP TABLE public.playlist;
       public         heap    postgres    false            �            1259    16399    playlist_playlist_id_seq    SEQUENCE     �   CREATE SEQUENCE public.playlist_playlist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.playlist_playlist_id_seq;
       public          postgres    false    216            #           0    0    playlist_playlist_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.playlist_playlist_id_seq OWNED BY public.playlist.playlist_id;
          public          postgres    false    215            �            1259    16409    track    TABLE     H  CREATE TABLE public.track (
    track_id integer NOT NULL,
    playlist_id integer,
    track_name character varying(255),
    artist character varying(255),
    album_name character varying(255),
    release_date date,
    duration_min integer,
    popularity integer,
    explicit_content boolean,
    duration_sec integer
);
    DROP TABLE public.track;
       public         heap    postgres    false            �            1259    16408    track_track_id_seq    SEQUENCE     �   CREATE SEQUENCE public.track_track_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.track_track_id_seq;
       public          postgres    false    218            $           0    0    track_track_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.track_track_id_seq OWNED BY public.track.track_id;
          public          postgres    false    217                       2604    16426    genre genre_id    DEFAULT     p   ALTER TABLE ONLY public.genre ALTER COLUMN genre_id SET DEFAULT nextval('public.genre_genre_id_seq'::regclass);
 =   ALTER TABLE public.genre ALTER COLUMN genre_id DROP DEFAULT;
       public          postgres    false    219    220    220            }           2604    16403    playlist playlist_id    DEFAULT     |   ALTER TABLE ONLY public.playlist ALTER COLUMN playlist_id SET DEFAULT nextval('public.playlist_playlist_id_seq'::regclass);
 C   ALTER TABLE public.playlist ALTER COLUMN playlist_id DROP DEFAULT;
       public          postgres    false    216    215    216            ~           2604    16412    track track_id    DEFAULT     p   ALTER TABLE ONLY public.track ALTER COLUMN track_id SET DEFAULT nextval('public.track_track_id_seq'::regclass);
 =   ALTER TABLE public.track ALTER COLUMN track_id DROP DEFAULT;
       public          postgres    false    218    217    218                      0    16423    genre 
   TABLE DATA           5   COPY public.genre (genre_id, genre_name) FROM stdin;
    public          postgres    false    220   �                 0    16400    playlist 
   TABLE DATA           l   COPY public.playlist (playlist_id, playlist_name, description, creator_username, creator_email) FROM stdin;
    public          postgres    false    216                    0    16409    track 
   TABLE DATA           �   COPY public.track (track_id, playlist_id, track_name, artist, album_name, release_date, duration_min, popularity, explicit_content, duration_sec) FROM stdin;
    public          postgres    false    218   r       %           0    0    genre_genre_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.genre_genre_id_seq', 8, true);
          public          postgres    false    219            &           0    0    playlist_playlist_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.playlist_playlist_id_seq', 1, true);
          public          postgres    false    215            '           0    0    track_track_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.track_track_id_seq', 10, true);
          public          postgres    false    217            �           2606    16428    genre genre_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (genre_id);
 :   ALTER TABLE ONLY public.genre DROP CONSTRAINT genre_pkey;
       public            postgres    false    220            �           2606    16407    playlist playlist_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.playlist
    ADD CONSTRAINT playlist_pkey PRIMARY KEY (playlist_id);
 @   ALTER TABLE ONLY public.playlist DROP CONSTRAINT playlist_pkey;
       public            postgres    false    216            �           2606    16416    track track_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.track
    ADD CONSTRAINT track_pkey PRIMARY KEY (track_id);
 :   ALTER TABLE ONLY public.track DROP CONSTRAINT track_pkey;
       public            postgres    false    218            �           2606    16417    track track_playlist_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.track
    ADD CONSTRAINT track_playlist_id_fkey FOREIGN KEY (playlist_id) REFERENCES public.playlist(playlist_id);
 F   ALTER TABLE ONLY public.track DROP CONSTRAINT track_playlist_id_fkey;
       public          postgres    false    218    3457    216               Y   x�3�t�IM.)���L�2�q
���9�Ԝ�L8s�2S�J�L9�32sr�KK��8�
�9�R���Ks�,8sJR��K2�R�b���� ��[         \   x�3�t����Q�LJ-�J�I�PH�KQ(�+�R�%
%�ũ
���%�y�
%E����z��ũE�F�0�!�"1� 'U/9?�+F��� �~�           x����N1@�ӯ�#$.i��[�`8�J"jL��e`')m�-&��n�΢��̼��S�}�瓏�p>��5%N8�؜8���H�!(��Jj��PIQfzbB��<���F:X���Ƞ)䴐5�AO2��8�GM����lᲵ�wC�9�綳_�i	��=��ӏ�*��u��uFT��F|h����&x���_-p0;~0�����x���;|n��0��B�Bi0P�{��OY��3E��sL�`Ǳ�^���2��i�R��ֿ�k�4���*yS��H��q�1     