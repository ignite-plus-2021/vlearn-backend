PGDMP         %    
            y            vlearndatabase    13.3    13.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16627    vlearndatabase    DATABASE     r   CREATE DATABASE vlearndatabase WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE vlearndatabase;
                postgres    false            �            1259    16628    course    TABLE     U   CREATE TABLE public.course (
    course_id integer NOT NULL,
    course_name text
);
    DROP TABLE public.course;
       public         heap    postgres    false            �            1259    16634    course_course_id_seq    SEQUENCE     �   CREATE SEQUENCE public.course_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.course_course_id_seq;
       public          postgres    false    200            �           0    0    course_course_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.course_course_id_seq OWNED BY public.course.course_id;
          public          postgres    false    201            R           2604    16692    course course_id    DEFAULT     t   ALTER TABLE ONLY public.course ALTER COLUMN course_id SET DEFAULT nextval('public.course_course_id_seq'::regclass);
 ?   ALTER TABLE public.course ALTER COLUMN course_id DROP DEFAULT;
       public          postgres    false    201    200            �          0    16628    course 
   TABLE DATA           8   COPY public.course (course_id, course_name) FROM stdin;
    public          postgres    false    200   �
       �           0    0    course_course_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.course_course_id_seq', 3, true);
          public          postgres    false    201            T           2606    16707    course Course_id 
   CONSTRAINT     W   ALTER TABLE ONLY public.course
    ADD CONSTRAINT "Course_id" PRIMARY KEY (course_id);
 <   ALTER TABLE ONLY public.course DROP CONSTRAINT "Course_id";
       public            postgres    false    200            �   '   x�3��J,K�2��,����2�OMRpI-����� �
�     