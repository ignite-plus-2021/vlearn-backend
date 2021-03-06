PGDMP     +    4    
            y            vLearn    13.3    13.3 [               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16394    vLearn    DATABASE     d   CREATE DATABASE "vLearn" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_India.1252';
    DROP DATABASE "vLearn";
                postgres    false            ?            1259    16582    course    TABLE     U   CREATE TABLE public.course (
    course_id integer NOT NULL,
    course_name text
);
    DROP TABLE public.course;
       public         heap    postgres    false            ?            1259    16580    course_course_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.course_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.course_course_id_seq;
       public          postgres    false    201                       0    0    course_course_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.course_course_id_seq OWNED BY public.course.course_id;
          public          postgres    false    200            ?            1259    16606    mentee    TABLE     U   CREATE TABLE public.mentee (
    mentee_id integer NOT NULL,
    mentee_name text
);
    DROP TABLE public.mentee;
       public         heap    postgres    false            ?            1259    16604    mentee_mentee_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.mentee_mentee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.mentee_mentee_id_seq;
       public          postgres    false    205                       0    0    mentee_mentee_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.mentee_mentee_id_seq OWNED BY public.mentee.mentee_id;
          public          postgres    false    204            ?            1259    16595    mentor    TABLE     U   CREATE TABLE public.mentor (
    mentor_id integer NOT NULL,
    mentor_name text
);
    DROP TABLE public.mentor;
       public         heap    postgres    false            ?            1259    16593    mentor_mentor_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.mentor_mentor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.mentor_mentor_id_seq;
       public          postgres    false    203                       0    0    mentor_mentor_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.mentor_mentor_id_seq OWNED BY public.mentor.mentor_id;
          public          postgres    false    202            ?            1259    16619    module    TABLE     u   CREATE TABLE public.module (
    module_id integer NOT NULL,
    module_name text,
    course_id integer NOT NULL
);
    DROP TABLE public.module;
       public         heap    postgres    false            ?            1259    16617    module_course_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.module_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.module_course_id_seq;
       public          postgres    false    208                       0    0    module_course_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.module_course_id_seq OWNED BY public.module.course_id;
          public          postgres    false    207            ?            1259    16615    module_module_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.module_module_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.module_module_id_seq;
       public          postgres    false    208                        0    0    module_module_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.module_module_id_seq OWNED BY public.module.module_id;
          public          postgres    false    206            ?            1259    16659    sch_completion    TABLE     ?   CREATE TABLE public.sch_completion (
    schcompletion_id integer NOT NULL,
    schedule_id integer NOT NULL,
    teaching_material_id integer NOT NULL,
    completed integer,
    is_completed boolean
);
 "   DROP TABLE public.sch_completion;
       public         heap    postgres    false            ?            1259    16653 #   sch_completion_schcompletion_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.sch_completion_schcompletion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.sch_completion_schcompletion_id_seq;
       public          postgres    false    215            !           0    0 #   sch_completion_schcompletion_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.sch_completion_schcompletion_id_seq OWNED BY public.sch_completion.schcompletion_id;
          public          postgres    false    212            ?            1259    16655    sch_completion_schedule_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.sch_completion_schedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.sch_completion_schedule_id_seq;
       public          postgres    false    215            "           0    0    sch_completion_schedule_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.sch_completion_schedule_id_seq OWNED BY public.sch_completion.schedule_id;
          public          postgres    false    213            ?            1259    16657 '   sch_completion_teaching_material_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.sch_completion_teaching_material_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.sch_completion_teaching_material_id_seq;
       public          postgres    false    215            #           0    0 '   sch_completion_teaching_material_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.sch_completion_teaching_material_id_seq OWNED BY public.sch_completion.teaching_material_id;
          public          postgres    false    214            ?            1259    16680    schedule    TABLE     ?   CREATE TABLE public.schedule (
    schedule_id integer NOT NULL,
    course_id integer NOT NULL,
    mentee_id integer NOT NULL,
    mentor_id integer NOT NULL,
    start_date date,
    end_date date,
    mentor_verification boolean
);
    DROP TABLE public.schedule;
       public         heap    postgres    false            ?            1259    16674    schedule_course_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.schedule_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.schedule_course_id_seq;
       public          postgres    false    220            $           0    0    schedule_course_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.schedule_course_id_seq OWNED BY public.schedule.course_id;
          public          postgres    false    217            ?            1259    16676    schedule_mentee_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.schedule_mentee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.schedule_mentee_id_seq;
       public          postgres    false    220            %           0    0    schedule_mentee_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.schedule_mentee_id_seq OWNED BY public.schedule.mentee_id;
          public          postgres    false    218            ?            1259    16678    schedule_mentor_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.schedule_mentor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.schedule_mentor_id_seq;
       public          postgres    false    220            &           0    0    schedule_mentor_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.schedule_mentor_id_seq OWNED BY public.schedule.mentor_id;
          public          postgres    false    219            ?            1259    16672    schedule_schedule_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.schedule_schedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.schedule_schedule_id_seq;
       public          postgres    false    220            '           0    0    schedule_schedule_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.schedule_schedule_id_seq OWNED BY public.schedule.schedule_id;
          public          postgres    false    216            ?            1259    16638    teaching_material    TABLE     ?   CREATE TABLE public.teaching_material (
    teaching_material_id integer NOT NULL,
    module_id integer NOT NULL,
    video_url text,
    duration integer
);
 %   DROP TABLE public.teaching_material;
       public         heap    postgres    false            ?            1259    16636    teaching_material_module_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.teaching_material_module_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.teaching_material_module_id_seq;
       public          postgres    false    211            (           0    0    teaching_material_module_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.teaching_material_module_id_seq OWNED BY public.teaching_material.module_id;
          public          postgres    false    210            ?            1259    16634 *   teaching_material_teaching_material_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.teaching_material_teaching_material_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.teaching_material_teaching_material_id_seq;
       public          postgres    false    211            )           0    0 *   teaching_material_teaching_material_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.teaching_material_teaching_material_id_seq OWNED BY public.teaching_material.teaching_material_id;
          public          postgres    false    209            Y           2604    16585    course course_id    DEFAULT     t   ALTER TABLE ONLY public.course ALTER COLUMN course_id SET DEFAULT nextval('public.course_course_id_seq'::regclass);
 ?   ALTER TABLE public.course ALTER COLUMN course_id DROP DEFAULT;
       public          postgres    false    201    200    201            [           2604    16609    mentee mentee_id    DEFAULT     t   ALTER TABLE ONLY public.mentee ALTER COLUMN mentee_id SET DEFAULT nextval('public.mentee_mentee_id_seq'::regclass);
 ?   ALTER TABLE public.mentee ALTER COLUMN mentee_id DROP DEFAULT;
       public          postgres    false    204    205    205            Z           2604    16598    mentor mentor_id    DEFAULT     t   ALTER TABLE ONLY public.mentor ALTER COLUMN mentor_id SET DEFAULT nextval('public.mentor_mentor_id_seq'::regclass);
 ?   ALTER TABLE public.mentor ALTER COLUMN mentor_id DROP DEFAULT;
       public          postgres    false    203    202    203            \           2604    16622    module module_id    DEFAULT     t   ALTER TABLE ONLY public.module ALTER COLUMN module_id SET DEFAULT nextval('public.module_module_id_seq'::regclass);
 ?   ALTER TABLE public.module ALTER COLUMN module_id DROP DEFAULT;
       public          postgres    false    206    208    208            ]           2604    16623    module course_id    DEFAULT     t   ALTER TABLE ONLY public.module ALTER COLUMN course_id SET DEFAULT nextval('public.module_course_id_seq'::regclass);
 ?   ALTER TABLE public.module ALTER COLUMN course_id DROP DEFAULT;
       public          postgres    false    207    208    208            `           2604    16662    sch_completion schcompletion_id    DEFAULT     ?   ALTER TABLE ONLY public.sch_completion ALTER COLUMN schcompletion_id SET DEFAULT nextval('public.sch_completion_schcompletion_id_seq'::regclass);
 N   ALTER TABLE public.sch_completion ALTER COLUMN schcompletion_id DROP DEFAULT;
       public          postgres    false    215    212    215            a           2604    16663    sch_completion schedule_id    DEFAULT     ?   ALTER TABLE ONLY public.sch_completion ALTER COLUMN schedule_id SET DEFAULT nextval('public.sch_completion_schedule_id_seq'::regclass);
 I   ALTER TABLE public.sch_completion ALTER COLUMN schedule_id DROP DEFAULT;
       public          postgres    false    215    213    215            b           2604    16664 #   sch_completion teaching_material_id    DEFAULT     ?   ALTER TABLE ONLY public.sch_completion ALTER COLUMN teaching_material_id SET DEFAULT nextval('public.sch_completion_teaching_material_id_seq'::regclass);
 R   ALTER TABLE public.sch_completion ALTER COLUMN teaching_material_id DROP DEFAULT;
       public          postgres    false    215    214    215            c           2604    16683    schedule schedule_id    DEFAULT     |   ALTER TABLE ONLY public.schedule ALTER COLUMN schedule_id SET DEFAULT nextval('public.schedule_schedule_id_seq'::regclass);
 C   ALTER TABLE public.schedule ALTER COLUMN schedule_id DROP DEFAULT;
       public          postgres    false    220    216    220            d           2604    16684    schedule course_id    DEFAULT     x   ALTER TABLE ONLY public.schedule ALTER COLUMN course_id SET DEFAULT nextval('public.schedule_course_id_seq'::regclass);
 A   ALTER TABLE public.schedule ALTER COLUMN course_id DROP DEFAULT;
       public          postgres    false    220    217    220            e           2604    16685    schedule mentee_id    DEFAULT     x   ALTER TABLE ONLY public.schedule ALTER COLUMN mentee_id SET DEFAULT nextval('public.schedule_mentee_id_seq'::regclass);
 A   ALTER TABLE public.schedule ALTER COLUMN mentee_id DROP DEFAULT;
       public          postgres    false    220    218    220            f           2604    16686    schedule mentor_id    DEFAULT     x   ALTER TABLE ONLY public.schedule ALTER COLUMN mentor_id SET DEFAULT nextval('public.schedule_mentor_id_seq'::regclass);
 A   ALTER TABLE public.schedule ALTER COLUMN mentor_id DROP DEFAULT;
       public          postgres    false    219    220    220            ^           2604    16641 &   teaching_material teaching_material_id    DEFAULT     ?   ALTER TABLE ONLY public.teaching_material ALTER COLUMN teaching_material_id SET DEFAULT nextval('public.teaching_material_teaching_material_id_seq'::regclass);
 U   ALTER TABLE public.teaching_material ALTER COLUMN teaching_material_id DROP DEFAULT;
       public          postgres    false    209    211    211            _           2604    16642    teaching_material module_id    DEFAULT     ?   ALTER TABLE ONLY public.teaching_material ALTER COLUMN module_id SET DEFAULT nextval('public.teaching_material_module_id_seq'::regclass);
 J   ALTER TABLE public.teaching_material ALTER COLUMN module_id DROP DEFAULT;
       public          postgres    false    210    211    211                      0    16582    course 
   TABLE DATA           8   COPY public.course (course_id, course_name) FROM stdin;
    public          postgres    false    201   ?i                 0    16606    mentee 
   TABLE DATA           8   COPY public.mentee (mentee_id, mentee_name) FROM stdin;
    public          postgres    false    205   ?i                 0    16595    mentor 
   TABLE DATA           8   COPY public.mentor (mentor_id, mentor_name) FROM stdin;
    public          postgres    false    203   ?i       	          0    16619    module 
   TABLE DATA           C   COPY public.module (module_id, module_name, course_id) FROM stdin;
    public          postgres    false    208    j                 0    16659    sch_completion 
   TABLE DATA           v   COPY public.sch_completion (schcompletion_id, schedule_id, teaching_material_id, completed, is_completed) FROM stdin;
    public          postgres    false    215   vj                 0    16680    schedule 
   TABLE DATA           {   COPY public.schedule (schedule_id, course_id, mentee_id, mentor_id, start_date, end_date, mentor_verification) FROM stdin;
    public          postgres    false    220   ?j                 0    16638    teaching_material 
   TABLE DATA           a   COPY public.teaching_material (teaching_material_id, module_id, video_url, duration) FROM stdin;
    public          postgres    false    211   ?j       *           0    0    course_course_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.course_course_id_seq', 3, true);
          public          postgres    false    200            +           0    0    mentee_mentee_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.mentee_mentee_id_seq', 1, false);
          public          postgres    false    204            ,           0    0    mentor_mentor_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.mentor_mentor_id_seq', 1, false);
          public          postgres    false    202            -           0    0    module_course_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.module_course_id_seq', 1, false);
          public          postgres    false    207            .           0    0    module_module_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.module_module_id_seq', 4, true);
          public          postgres    false    206            /           0    0 #   sch_completion_schcompletion_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.sch_completion_schcompletion_id_seq', 2, true);
          public          postgres    false    212            0           0    0    sch_completion_schedule_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.sch_completion_schedule_id_seq', 1, false);
          public          postgres    false    213            1           0    0 '   sch_completion_teaching_material_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.sch_completion_teaching_material_id_seq', 1, true);
          public          postgres    false    214            2           0    0    schedule_course_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.schedule_course_id_seq', 1, false);
          public          postgres    false    217            3           0    0    schedule_mentee_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.schedule_mentee_id_seq', 1, false);
          public          postgres    false    218            4           0    0    schedule_mentor_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.schedule_mentor_id_seq', 1, false);
          public          postgres    false    219            5           0    0    schedule_schedule_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.schedule_schedule_id_seq', 3, true);
          public          postgres    false    216            6           0    0    teaching_material_module_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.teaching_material_module_id_seq', 1, false);
          public          postgres    false    210            7           0    0 *   teaching_material_teaching_material_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.teaching_material_teaching_material_id_seq', 4, true);
          public          postgres    false    209            h           2606    16592    course Course_id 
   CONSTRAINT     W   ALTER TABLE ONLY public.course
    ADD CONSTRAINT "Course_id" PRIMARY KEY (course_id);
 <   ALTER TABLE ONLY public.course DROP CONSTRAINT "Course_id";
       public            postgres    false    201            l           2606    16611    mentee mentee_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.mentee
    ADD CONSTRAINT mentee_pkey PRIMARY KEY (mentee_id);
 <   ALTER TABLE ONLY public.mentee DROP CONSTRAINT mentee_pkey;
       public            postgres    false    205            j           2606    16603    mentor mentor_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.mentor
    ADD CONSTRAINT mentor_pkey PRIMARY KEY (mentor_id);
 <   ALTER TABLE ONLY public.mentor DROP CONSTRAINT mentor_pkey;
       public            postgres    false    203            n           2606    16628    module module_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.module
    ADD CONSTRAINT module_pkey PRIMARY KEY (module_id);
 <   ALTER TABLE ONLY public.module DROP CONSTRAINT module_pkey;
       public            postgres    false    208            t           2606    16666 "   sch_completion sch_completion_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.sch_completion
    ADD CONSTRAINT sch_completion_pkey PRIMARY KEY (schcompletion_id);
 L   ALTER TABLE ONLY public.sch_completion DROP CONSTRAINT sch_completion_pkey;
       public            postgres    false    215            w           2606    16688    schedule schedule_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT schedule_id PRIMARY KEY (schedule_id);
 >   ALTER TABLE ONLY public.schedule DROP CONSTRAINT schedule_id;
       public            postgres    false    220            p           2606    16647 (   teaching_material teaching_material_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.teaching_material
    ADD CONSTRAINT teaching_material_pkey PRIMARY KEY (teaching_material_id);
 R   ALTER TABLE ONLY public.teaching_material DROP CONSTRAINT teaching_material_pkey;
       public            postgres    false    211            u           1259    16721    fki_mentor_id    INDEX     G   CREATE INDEX fki_mentor_id ON public.schedule USING btree (mentor_id);
 !   DROP INDEX public.fki_mentor_id;
       public            postgres    false    220            q           1259    16709    fki_schedule_id    INDEX     Q   CREATE INDEX fki_schedule_id ON public.sch_completion USING btree (schedule_id);
 #   DROP INDEX public.fki_schedule_id;
       public            postgres    false    215            r           1259    16715    fki_teaching_material_id    INDEX     c   CREATE INDEX fki_teaching_material_id ON public.sch_completion USING btree (teaching_material_id);
 ,   DROP INDEX public.fki_teaching_material_id;
       public            postgres    false    215            x           2606    16629    module course_id    FK CONSTRAINT     y   ALTER TABLE ONLY public.module
    ADD CONSTRAINT course_id FOREIGN KEY (course_id) REFERENCES public.course(course_id);
 :   ALTER TABLE ONLY public.module DROP CONSTRAINT course_id;
       public          postgres    false    201    2920    208            |           2606    16694    schedule course_id    FK CONSTRAINT     {   ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT course_id FOREIGN KEY (course_id) REFERENCES public.course(course_id);
 <   ALTER TABLE ONLY public.schedule DROP CONSTRAINT course_id;
       public          postgres    false    2920    220    201            }           2606    16699    schedule mentee_id    FK CONSTRAINT     {   ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT mentee_id FOREIGN KEY (mentee_id) REFERENCES public.mentee(mentee_id);
 <   ALTER TABLE ONLY public.schedule DROP CONSTRAINT mentee_id;
       public          postgres    false    205    220    2924            ~           2606    16716    schedule mentor_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT mentor_id FOREIGN KEY (mentor_id) REFERENCES public.mentor(mentor_id) NOT VALID;
 <   ALTER TABLE ONLY public.schedule DROP CONSTRAINT mentor_id;
       public          postgres    false    2922    203    220            y           2606    16648    teaching_material module_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.teaching_material
    ADD CONSTRAINT module_id FOREIGN KEY (module_id) REFERENCES public.module(module_id);
 E   ALTER TABLE ONLY public.teaching_material DROP CONSTRAINT module_id;
       public          postgres    false    2926    208    211            z           2606    16704    sch_completion schedule_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.sch_completion
    ADD CONSTRAINT schedule_id FOREIGN KEY (schedule_id) REFERENCES public.schedule(schedule_id) NOT VALID;
 D   ALTER TABLE ONLY public.sch_completion DROP CONSTRAINT schedule_id;
       public          postgres    false    215    2935    220            {           2606    16710 #   sch_completion teaching_material_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.sch_completion
    ADD CONSTRAINT teaching_material_id FOREIGN KEY (teaching_material_id) REFERENCES public.teaching_material(teaching_material_id) NOT VALID;
 M   ALTER TABLE ONLY public.sch_completion DROP CONSTRAINT teaching_material_id;
       public          postgres    false    211    215    2928               '   x?3??J,K?2??,????2?OMRpI-?????? ?
?         &   x?3?(-*??2?t?,?H?2??H,2r?b???? ??            x?3?I??M??2?J,???????? F??      	   F   x?3??J,KTp?/J?4?2??S???SS?"ƜA???%??\&?????y?
>??Ey?y??F\1z\\\ ?F?         %   x?3?4A?4.#Nc 42?,?2?4q@?=... h?l         A   x?3?4C##C]#]?Ȃ3?ˈ?I?!o?kl?Y?e?i?	R?E????"?S? ???         <   x?3?4?t?/J?7?42?2?4?JML.?pM8M8}}?l.#N#Nǔ2 ?܀+F??? wV?     