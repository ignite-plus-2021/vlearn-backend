PGDMP                          y            vlearn    13.4    13.4 [               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16526    vlearn    DATABASE     b   CREATE DATABASE vlearn WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_India.1252';
    DROP DATABASE vlearn;
                postgres    false            �            1259    16527    course    TABLE     U   CREATE TABLE public.course (
    course_id integer NOT NULL,
    course_name text
);
    DROP TABLE public.course;
       public         heap    postgres    false            �            1259    16533    course_course_id_seq    SEQUENCE     �   CREATE SEQUENCE public.course_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.course_course_id_seq;
       public          postgres    false    200                       0    0    course_course_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.course_course_id_seq OWNED BY public.course.course_id;
          public          postgres    false    201            �            1259    16535    mentee    TABLE     U   CREATE TABLE public.mentee (
    mentee_id integer NOT NULL,
    mentee_name text
);
    DROP TABLE public.mentee;
       public         heap    postgres    false            �            1259    16541    mentee_mentee_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mentee_mentee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.mentee_mentee_id_seq;
       public          postgres    false    202                       0    0    mentee_mentee_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.mentee_mentee_id_seq OWNED BY public.mentee.mentee_id;
          public          postgres    false    203            �            1259    16543    mentor    TABLE     U   CREATE TABLE public.mentor (
    mentor_id integer NOT NULL,
    mentor_name text
);
    DROP TABLE public.mentor;
       public         heap    postgres    false            �            1259    16549    mentor_mentor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mentor_mentor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.mentor_mentor_id_seq;
       public          postgres    false    204                       0    0    mentor_mentor_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.mentor_mentor_id_seq OWNED BY public.mentor.mentor_id;
          public          postgres    false    205            �            1259    16551    module    TABLE     u   CREATE TABLE public.module (
    module_id integer NOT NULL,
    module_name text,
    course_id integer NOT NULL
);
    DROP TABLE public.module;
       public         heap    postgres    false            �            1259    16557    module_course_id_seq    SEQUENCE     �   CREATE SEQUENCE public.module_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.module_course_id_seq;
       public          postgres    false    206                       0    0    module_course_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.module_course_id_seq OWNED BY public.module.course_id;
          public          postgres    false    207            �            1259    16559    module_module_id_seq    SEQUENCE     �   CREATE SEQUENCE public.module_module_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.module_module_id_seq;
       public          postgres    false    206                        0    0    module_module_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.module_module_id_seq OWNED BY public.module.module_id;
          public          postgres    false    208            �            1259    16561    sch_completion    TABLE     �   CREATE TABLE public.sch_completion (
    schcompletion_id integer NOT NULL,
    schedule_id integer NOT NULL,
    teaching_material_id integer NOT NULL,
    completed integer,
    is_completed boolean
);
 "   DROP TABLE public.sch_completion;
       public         heap    postgres    false            �            1259    16564 #   sch_completion_schcompletion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sch_completion_schcompletion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.sch_completion_schcompletion_id_seq;
       public          postgres    false    209            !           0    0 #   sch_completion_schcompletion_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.sch_completion_schcompletion_id_seq OWNED BY public.sch_completion.schcompletion_id;
          public          postgres    false    210            �            1259    16566    sch_completion_schedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sch_completion_schedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.sch_completion_schedule_id_seq;
       public          postgres    false    209            "           0    0    sch_completion_schedule_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.sch_completion_schedule_id_seq OWNED BY public.sch_completion.schedule_id;
          public          postgres    false    211            �            1259    16568 '   sch_completion_teaching_material_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sch_completion_teaching_material_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.sch_completion_teaching_material_id_seq;
       public          postgres    false    209            #           0    0 '   sch_completion_teaching_material_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.sch_completion_teaching_material_id_seq OWNED BY public.sch_completion.teaching_material_id;
          public          postgres    false    212            �            1259    16570    schedule    TABLE     �   CREATE TABLE public.schedule (
    schedule_id integer NOT NULL,
    course_id integer NOT NULL,
    mentee_id integer NOT NULL,
    mentor_id integer NOT NULL,
    start_date date,
    end_date date,
    mentor_verification boolean
);
    DROP TABLE public.schedule;
       public         heap    postgres    false            �            1259    16573    schedule_course_id_seq    SEQUENCE     �   CREATE SEQUENCE public.schedule_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.schedule_course_id_seq;
       public          postgres    false    213            $           0    0    schedule_course_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.schedule_course_id_seq OWNED BY public.schedule.course_id;
          public          postgres    false    214            �            1259    16575    schedule_mentee_id_seq    SEQUENCE     �   CREATE SEQUENCE public.schedule_mentee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.schedule_mentee_id_seq;
       public          postgres    false    213            %           0    0    schedule_mentee_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.schedule_mentee_id_seq OWNED BY public.schedule.mentee_id;
          public          postgres    false    215            �            1259    16577    schedule_mentor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.schedule_mentor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.schedule_mentor_id_seq;
       public          postgres    false    213            &           0    0    schedule_mentor_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.schedule_mentor_id_seq OWNED BY public.schedule.mentor_id;
          public          postgres    false    216            �            1259    16579    schedule_schedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.schedule_schedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.schedule_schedule_id_seq;
       public          postgres    false    213            '           0    0    schedule_schedule_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.schedule_schedule_id_seq OWNED BY public.schedule.schedule_id;
          public          postgres    false    217            �            1259    16581    teaching_material    TABLE     �   CREATE TABLE public.teaching_material (
    teaching_material_id integer NOT NULL,
    module_id integer NOT NULL,
    video_url text,
    duration integer
);
 %   DROP TABLE public.teaching_material;
       public         heap    postgres    false            �            1259    16587    teaching_material_module_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teaching_material_module_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.teaching_material_module_id_seq;
       public          postgres    false    218            (           0    0    teaching_material_module_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.teaching_material_module_id_seq OWNED BY public.teaching_material.module_id;
          public          postgres    false    219            �            1259    16589 *   teaching_material_teaching_material_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teaching_material_teaching_material_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.teaching_material_teaching_material_id_seq;
       public          postgres    false    218            )           0    0 *   teaching_material_teaching_material_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.teaching_material_teaching_material_id_seq OWNED BY public.teaching_material.teaching_material_id;
          public          postgres    false    220            Y           2604    16591    course course_id    DEFAULT     t   ALTER TABLE ONLY public.course ALTER COLUMN course_id SET DEFAULT nextval('public.course_course_id_seq'::regclass);
 ?   ALTER TABLE public.course ALTER COLUMN course_id DROP DEFAULT;
       public          postgres    false    201    200            Z           2604    16592    mentee mentee_id    DEFAULT     t   ALTER TABLE ONLY public.mentee ALTER COLUMN mentee_id SET DEFAULT nextval('public.mentee_mentee_id_seq'::regclass);
 ?   ALTER TABLE public.mentee ALTER COLUMN mentee_id DROP DEFAULT;
       public          postgres    false    203    202            [           2604    16593    mentor mentor_id    DEFAULT     t   ALTER TABLE ONLY public.mentor ALTER COLUMN mentor_id SET DEFAULT nextval('public.mentor_mentor_id_seq'::regclass);
 ?   ALTER TABLE public.mentor ALTER COLUMN mentor_id DROP DEFAULT;
       public          postgres    false    205    204            \           2604    16594    module module_id    DEFAULT     t   ALTER TABLE ONLY public.module ALTER COLUMN module_id SET DEFAULT nextval('public.module_module_id_seq'::regclass);
 ?   ALTER TABLE public.module ALTER COLUMN module_id DROP DEFAULT;
       public          postgres    false    208    206            ]           2604    16595    module course_id    DEFAULT     t   ALTER TABLE ONLY public.module ALTER COLUMN course_id SET DEFAULT nextval('public.module_course_id_seq'::regclass);
 ?   ALTER TABLE public.module ALTER COLUMN course_id DROP DEFAULT;
       public          postgres    false    207    206            ^           2604    16596    sch_completion schcompletion_id    DEFAULT     �   ALTER TABLE ONLY public.sch_completion ALTER COLUMN schcompletion_id SET DEFAULT nextval('public.sch_completion_schcompletion_id_seq'::regclass);
 N   ALTER TABLE public.sch_completion ALTER COLUMN schcompletion_id DROP DEFAULT;
       public          postgres    false    210    209            _           2604    16597    sch_completion schedule_id    DEFAULT     �   ALTER TABLE ONLY public.sch_completion ALTER COLUMN schedule_id SET DEFAULT nextval('public.sch_completion_schedule_id_seq'::regclass);
 I   ALTER TABLE public.sch_completion ALTER COLUMN schedule_id DROP DEFAULT;
       public          postgres    false    211    209            `           2604    16598 #   sch_completion teaching_material_id    DEFAULT     �   ALTER TABLE ONLY public.sch_completion ALTER COLUMN teaching_material_id SET DEFAULT nextval('public.sch_completion_teaching_material_id_seq'::regclass);
 R   ALTER TABLE public.sch_completion ALTER COLUMN teaching_material_id DROP DEFAULT;
       public          postgres    false    212    209            a           2604    16599    schedule schedule_id    DEFAULT     |   ALTER TABLE ONLY public.schedule ALTER COLUMN schedule_id SET DEFAULT nextval('public.schedule_schedule_id_seq'::regclass);
 C   ALTER TABLE public.schedule ALTER COLUMN schedule_id DROP DEFAULT;
       public          postgres    false    217    213            b           2604    16600    schedule course_id    DEFAULT     x   ALTER TABLE ONLY public.schedule ALTER COLUMN course_id SET DEFAULT nextval('public.schedule_course_id_seq'::regclass);
 A   ALTER TABLE public.schedule ALTER COLUMN course_id DROP DEFAULT;
       public          postgres    false    214    213            c           2604    16601    schedule mentee_id    DEFAULT     x   ALTER TABLE ONLY public.schedule ALTER COLUMN mentee_id SET DEFAULT nextval('public.schedule_mentee_id_seq'::regclass);
 A   ALTER TABLE public.schedule ALTER COLUMN mentee_id DROP DEFAULT;
       public          postgres    false    215    213            d           2604    16602    schedule mentor_id    DEFAULT     x   ALTER TABLE ONLY public.schedule ALTER COLUMN mentor_id SET DEFAULT nextval('public.schedule_mentor_id_seq'::regclass);
 A   ALTER TABLE public.schedule ALTER COLUMN mentor_id DROP DEFAULT;
       public          postgres    false    216    213            e           2604    16603 &   teaching_material teaching_material_id    DEFAULT     �   ALTER TABLE ONLY public.teaching_material ALTER COLUMN teaching_material_id SET DEFAULT nextval('public.teaching_material_teaching_material_id_seq'::regclass);
 U   ALTER TABLE public.teaching_material ALTER COLUMN teaching_material_id DROP DEFAULT;
       public          postgres    false    220    218            f           2604    16604    teaching_material module_id    DEFAULT     �   ALTER TABLE ONLY public.teaching_material ALTER COLUMN module_id SET DEFAULT nextval('public.teaching_material_module_id_seq'::regclass);
 J   ALTER TABLE public.teaching_material ALTER COLUMN module_id DROP DEFAULT;
       public          postgres    false    219    218                      0    16527    course 
   TABLE DATA           8   COPY public.course (course_id, course_name) FROM stdin;
    public          postgres    false    200   i                 0    16535    mentee 
   TABLE DATA           8   COPY public.mentee (mentee_id, mentee_name) FROM stdin;
    public          postgres    false    202   �i                 0    16543    mentor 
   TABLE DATA           8   COPY public.mentor (mentor_id, mentor_name) FROM stdin;
    public          postgres    false    204   �i                 0    16551    module 
   TABLE DATA           C   COPY public.module (module_id, module_name, course_id) FROM stdin;
    public          postgres    false    206   6j       
          0    16561    sch_completion 
   TABLE DATA           v   COPY public.sch_completion (schcompletion_id, schedule_id, teaching_material_id, completed, is_completed) FROM stdin;
    public          postgres    false    209   $k                 0    16570    schedule 
   TABLE DATA           {   COPY public.schedule (schedule_id, course_id, mentee_id, mentor_id, start_date, end_date, mentor_verification) FROM stdin;
    public          postgres    false    213   �k                 0    16581    teaching_material 
   TABLE DATA           a   COPY public.teaching_material (teaching_material_id, module_id, video_url, duration) FROM stdin;
    public          postgres    false    218   8l       *           0    0    course_course_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.course_course_id_seq', 3, true);
          public          postgres    false    201            +           0    0    mentee_mentee_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.mentee_mentee_id_seq', 1, true);
          public          postgres    false    203            ,           0    0    mentor_mentor_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.mentor_mentor_id_seq', 1, false);
          public          postgres    false    205            -           0    0    module_course_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.module_course_id_seq', 1, true);
          public          postgres    false    207            .           0    0    module_module_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.module_module_id_seq', 4, true);
          public          postgres    false    208            /           0    0 #   sch_completion_schcompletion_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.sch_completion_schcompletion_id_seq', 2, true);
          public          postgres    false    210            0           0    0    sch_completion_schedule_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.sch_completion_schedule_id_seq', 1, false);
          public          postgres    false    211            1           0    0 '   sch_completion_teaching_material_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.sch_completion_teaching_material_id_seq', 5, true);
          public          postgres    false    212            2           0    0    schedule_course_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.schedule_course_id_seq', 1, false);
          public          postgres    false    214            3           0    0    schedule_mentee_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.schedule_mentee_id_seq', 1, false);
          public          postgres    false    215            4           0    0    schedule_mentor_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.schedule_mentor_id_seq', 1, false);
          public          postgres    false    216            5           0    0    schedule_schedule_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.schedule_schedule_id_seq', 3, true);
          public          postgres    false    217            6           0    0    teaching_material_module_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.teaching_material_module_id_seq', 1, false);
          public          postgres    false    219            7           0    0 *   teaching_material_teaching_material_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.teaching_material_teaching_material_id_seq', 4, true);
          public          postgres    false    220            h           2606    16606    course Course_id 
   CONSTRAINT     W   ALTER TABLE ONLY public.course
    ADD CONSTRAINT "Course_id" PRIMARY KEY (course_id);
 <   ALTER TABLE ONLY public.course DROP CONSTRAINT "Course_id";
       public            postgres    false    200            j           2606    16608    mentee mentee_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.mentee
    ADD CONSTRAINT mentee_pkey PRIMARY KEY (mentee_id);
 <   ALTER TABLE ONLY public.mentee DROP CONSTRAINT mentee_pkey;
       public            postgres    false    202            l           2606    16610    mentor mentor_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.mentor
    ADD CONSTRAINT mentor_pkey PRIMARY KEY (mentor_id);
 <   ALTER TABLE ONLY public.mentor DROP CONSTRAINT mentor_pkey;
       public            postgres    false    204            n           2606    16612    module module_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.module
    ADD CONSTRAINT module_pkey PRIMARY KEY (module_id);
 <   ALTER TABLE ONLY public.module DROP CONSTRAINT module_pkey;
       public            postgres    false    206            r           2606    16614 "   sch_completion sch_completion_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.sch_completion
    ADD CONSTRAINT sch_completion_pkey PRIMARY KEY (schcompletion_id);
 L   ALTER TABLE ONLY public.sch_completion DROP CONSTRAINT sch_completion_pkey;
       public            postgres    false    209            u           2606    16616    schedule schedule_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT schedule_id PRIMARY KEY (schedule_id);
 >   ALTER TABLE ONLY public.schedule DROP CONSTRAINT schedule_id;
       public            postgres    false    213            w           2606    16618 (   teaching_material teaching_material_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.teaching_material
    ADD CONSTRAINT teaching_material_pkey PRIMARY KEY (teaching_material_id);
 R   ALTER TABLE ONLY public.teaching_material DROP CONSTRAINT teaching_material_pkey;
       public            postgres    false    218            s           1259    16619    fki_mentor_id    INDEX     G   CREATE INDEX fki_mentor_id ON public.schedule USING btree (mentor_id);
 !   DROP INDEX public.fki_mentor_id;
       public            postgres    false    213            o           1259    16620    fki_schedule_id    INDEX     Q   CREATE INDEX fki_schedule_id ON public.sch_completion USING btree (schedule_id);
 #   DROP INDEX public.fki_schedule_id;
       public            postgres    false    209            p           1259    16621    fki_teaching_material_id    INDEX     c   CREATE INDEX fki_teaching_material_id ON public.sch_completion USING btree (teaching_material_id);
 ,   DROP INDEX public.fki_teaching_material_id;
       public            postgres    false    209            x           2606    16622    module course_id    FK CONSTRAINT     y   ALTER TABLE ONLY public.module
    ADD CONSTRAINT course_id FOREIGN KEY (course_id) REFERENCES public.course(course_id);
 :   ALTER TABLE ONLY public.module DROP CONSTRAINT course_id;
       public          postgres    false    206    200    2920            {           2606    16627    schedule course_id    FK CONSTRAINT     {   ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT course_id FOREIGN KEY (course_id) REFERENCES public.course(course_id);
 <   ALTER TABLE ONLY public.schedule DROP CONSTRAINT course_id;
       public          postgres    false    213    2920    200            |           2606    16632    schedule mentee_id    FK CONSTRAINT     {   ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT mentee_id FOREIGN KEY (mentee_id) REFERENCES public.mentee(mentee_id);
 <   ALTER TABLE ONLY public.schedule DROP CONSTRAINT mentee_id;
       public          postgres    false    202    2922    213            }           2606    16637    schedule mentor_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT mentor_id FOREIGN KEY (mentor_id) REFERENCES public.mentor(mentor_id) NOT VALID;
 <   ALTER TABLE ONLY public.schedule DROP CONSTRAINT mentor_id;
       public          postgres    false    204    213    2924            ~           2606    16642    teaching_material module_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.teaching_material
    ADD CONSTRAINT module_id FOREIGN KEY (module_id) REFERENCES public.module(module_id);
 E   ALTER TABLE ONLY public.teaching_material DROP CONSTRAINT module_id;
       public          postgres    false    206    2926    218            y           2606    16647    sch_completion schedule_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.sch_completion
    ADD CONSTRAINT schedule_id FOREIGN KEY (schedule_id) REFERENCES public.schedule(schedule_id) NOT VALID;
 D   ALTER TABLE ONLY public.sch_completion DROP CONSTRAINT schedule_id;
       public          postgres    false    213    2933    209            z           2606    16652 #   sch_completion teaching_material_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.sch_completion
    ADD CONSTRAINT teaching_material_id FOREIGN KEY (teaching_material_id) REFERENCES public.teaching_material(teaching_material_id) NOT VALID;
 M   ALTER TABLE ONLY public.sch_completion DROP CONSTRAINT teaching_material_id;
       public          postgres    false    218    2935    209               �   x���
�@E뙯��R�l"�h�f&qqaw���{����-U<�Oc�(��-tu��&�̘]蒒���s�6x���-��b�t�c�*�@��X4r����9�)���Ѥ>[0�2�}�f��?&�.�         A   x�3�(-*��2�t�,�H�2��H,2r�L8}32s�L9��R2�2��8��*�b����  �}         +   x�3�I��M�Tp��/��2�J,��TpJ�+N������ 
         �   x�M��N�0�ϻO�S�;�߱�*	�
.�8�Z������Y���|;M~�����(�9fpX������Y��
����1�y	9t�(��j\��4��������A���>�~-���s�cU-�ڛr���m�`|)��|���-]��A�m�.��Lr���M7 OY
����Y�|Pc4	�Qh��JH���KW�J�K
Z��4�NT6��"� JT�      
   �   x�-���@CϞbV�^r�
���DQ�3Ɛ����6'8�p��I����G���ǯ�A��0i��Z��RG�$x�$��g���"Xbș�a[�3�Km)�1��6~N9���%R�����%sQ=���jp%�         p   x�}л	�0�����>�e�ԙ ����F����$�B|�U[��4�C	��5iw7X�<<'c�$�h����UXyA	>�����X�w��s��3�ς�l��7�M�u�_W@�         "  x���ɒ�@�3�.�;sc��U�Y��0X�ED�@�~<�����3�LH@�����\渾���|.��+;�ˢ>�e��A�oo�s��@q8��%`�V\���F���X@Լ�HTTn�&Tbtf}����uj��mS�/���&�y0�ʭ�ֹ/-�]&'��� �����;�� �`�Ł➘�Nk�Q�D� Q��slzK��%�,`	v�t;=�<��N�����]"�1޹����#�y� ��c�R��>�tɽ��:7���L��Ν_�@����[��=�ćA+-33��J�q�}�E�0���P��G5]���~{����9>>$������H��"W|ôR�S*R�Z������ޔ}�*��Kd( ɧ�A1���Aq�����6��NFICi��J�� ᳟y�j׳O� �.9q�\	^N9�*�to�����y52M6��Q��ܭ��ߩ��w�����2!��3�yd/��{fo7��n,�'�k�'����h ~�8Pߩ|��Q�
F�u����gk�d�{y�,�� �y�     