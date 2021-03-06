PGDMP                          y            vLearn    13.4    13.4 [               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16919    vLearn    DATABASE     d   CREATE DATABASE "vLearn" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_India.1252';
    DROP DATABASE "vLearn";
                postgres    false            ?            1259    16920    course    TABLE     U   CREATE TABLE public.course (
    course_id integer NOT NULL,
    course_name text
);
    DROP TABLE public.course;
       public         heap    postgres    false            ?            1259    16926    course_course_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.course_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.course_course_id_seq;
       public          postgres    false    200                       0    0    course_course_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.course_course_id_seq OWNED BY public.course.course_id;
          public          postgres    false    201            ?            1259    16928    mentee    TABLE     l   CREATE TABLE public.mentee (
    mentee_id integer NOT NULL,
    mentee_name text,
    mentee_email text
);
    DROP TABLE public.mentee;
       public         heap    postgres    false            ?            1259    16934    mentee_mentee_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.mentee_mentee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.mentee_mentee_id_seq;
       public          postgres    false    202                       0    0    mentee_mentee_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.mentee_mentee_id_seq OWNED BY public.mentee.mentee_id;
          public          postgres    false    203            ?            1259    16936    mentor    TABLE     l   CREATE TABLE public.mentor (
    mentor_id integer NOT NULL,
    mentor_name text,
    mentor_email text
);
    DROP TABLE public.mentor;
       public         heap    postgres    false            ?            1259    16942    mentor_mentor_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.mentor_mentor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.mentor_mentor_id_seq;
       public          postgres    false    204                       0    0    mentor_mentor_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.mentor_mentor_id_seq OWNED BY public.mentor.mentor_id;
          public          postgres    false    205            ?            1259    16944    module    TABLE     u   CREATE TABLE public.module (
    module_id integer NOT NULL,
    module_name text,
    course_id integer NOT NULL
);
    DROP TABLE public.module;
       public         heap    postgres    false            ?            1259    16950    module_course_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.module_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.module_course_id_seq;
       public          postgres    false    206                       0    0    module_course_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.module_course_id_seq OWNED BY public.module.course_id;
          public          postgres    false    207            ?            1259    16952    module_module_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.module_module_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.module_module_id_seq;
       public          postgres    false    206                        0    0    module_module_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.module_module_id_seq OWNED BY public.module.module_id;
          public          postgres    false    208            ?            1259    16954    sch_completion    TABLE     ?   CREATE TABLE public.sch_completion (
    schcompletion_id integer NOT NULL,
    schedule_id integer NOT NULL,
    teaching_material_id integer NOT NULL,
    completed integer,
    is_completed boolean
);
 "   DROP TABLE public.sch_completion;
       public         heap    postgres    false            ?            1259    16957 #   sch_completion_schcompletion_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.sch_completion_schcompletion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.sch_completion_schcompletion_id_seq;
       public          postgres    false    209            !           0    0 #   sch_completion_schcompletion_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.sch_completion_schcompletion_id_seq OWNED BY public.sch_completion.schcompletion_id;
          public          postgres    false    210            ?            1259    16959    sch_completion_schedule_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.sch_completion_schedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.sch_completion_schedule_id_seq;
       public          postgres    false    209            "           0    0    sch_completion_schedule_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.sch_completion_schedule_id_seq OWNED BY public.sch_completion.schedule_id;
          public          postgres    false    211            ?            1259    16961 '   sch_completion_teaching_material_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.sch_completion_teaching_material_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.sch_completion_teaching_material_id_seq;
       public          postgres    false    209            #           0    0 '   sch_completion_teaching_material_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.sch_completion_teaching_material_id_seq OWNED BY public.sch_completion.teaching_material_id;
          public          postgres    false    212            ?            1259    16963    schedule    TABLE     ?   CREATE TABLE public.schedule (
    schedule_id integer NOT NULL,
    course_id integer NOT NULL,
    mentee_id integer NOT NULL,
    mentor_id integer NOT NULL,
    start_date date,
    end_date date,
    mentor_verification boolean
);
    DROP TABLE public.schedule;
       public         heap    postgres    false            ?            1259    16966    schedule_course_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.schedule_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.schedule_course_id_seq;
       public          postgres    false    213            $           0    0    schedule_course_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.schedule_course_id_seq OWNED BY public.schedule.course_id;
          public          postgres    false    214            ?            1259    16968    schedule_mentee_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.schedule_mentee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.schedule_mentee_id_seq;
       public          postgres    false    213            %           0    0    schedule_mentee_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.schedule_mentee_id_seq OWNED BY public.schedule.mentee_id;
          public          postgres    false    215            ?            1259    16970    schedule_mentor_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.schedule_mentor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.schedule_mentor_id_seq;
       public          postgres    false    213            &           0    0    schedule_mentor_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.schedule_mentor_id_seq OWNED BY public.schedule.mentor_id;
          public          postgres    false    216            ?            1259    16972    schedule_schedule_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.schedule_schedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.schedule_schedule_id_seq;
       public          postgres    false    213            '           0    0    schedule_schedule_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.schedule_schedule_id_seq OWNED BY public.schedule.schedule_id;
          public          postgres    false    217            ?            1259    16974    teaching_material    TABLE     ?   CREATE TABLE public.teaching_material (
    teaching_material_id integer NOT NULL,
    module_id integer NOT NULL,
    video_url text,
    duration integer
);
 %   DROP TABLE public.teaching_material;
       public         heap    postgres    false            ?            1259    16980    teaching_material_module_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.teaching_material_module_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.teaching_material_module_id_seq;
       public          postgres    false    218            (           0    0    teaching_material_module_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.teaching_material_module_id_seq OWNED BY public.teaching_material.module_id;
          public          postgres    false    219            ?            1259    16982 *   teaching_material_teaching_material_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.teaching_material_teaching_material_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.teaching_material_teaching_material_id_seq;
       public          postgres    false    218            )           0    0 *   teaching_material_teaching_material_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.teaching_material_teaching_material_id_seq OWNED BY public.teaching_material.teaching_material_id;
          public          postgres    false    220            Y           2604    16984    course course_id    DEFAULT     t   ALTER TABLE ONLY public.course ALTER COLUMN course_id SET DEFAULT nextval('public.course_course_id_seq'::regclass);
 ?   ALTER TABLE public.course ALTER COLUMN course_id DROP DEFAULT;
       public          postgres    false    201    200            Z           2604    16985    mentee mentee_id    DEFAULT     t   ALTER TABLE ONLY public.mentee ALTER COLUMN mentee_id SET DEFAULT nextval('public.mentee_mentee_id_seq'::regclass);
 ?   ALTER TABLE public.mentee ALTER COLUMN mentee_id DROP DEFAULT;
       public          postgres    false    203    202            [           2604    16986    mentor mentor_id    DEFAULT     t   ALTER TABLE ONLY public.mentor ALTER COLUMN mentor_id SET DEFAULT nextval('public.mentor_mentor_id_seq'::regclass);
 ?   ALTER TABLE public.mentor ALTER COLUMN mentor_id DROP DEFAULT;
       public          postgres    false    205    204            \           2604    16987    module module_id    DEFAULT     t   ALTER TABLE ONLY public.module ALTER COLUMN module_id SET DEFAULT nextval('public.module_module_id_seq'::regclass);
 ?   ALTER TABLE public.module ALTER COLUMN module_id DROP DEFAULT;
       public          postgres    false    208    206            ]           2604    16988    module course_id    DEFAULT     t   ALTER TABLE ONLY public.module ALTER COLUMN course_id SET DEFAULT nextval('public.module_course_id_seq'::regclass);
 ?   ALTER TABLE public.module ALTER COLUMN course_id DROP DEFAULT;
       public          postgres    false    207    206            ^           2604    16989    sch_completion schcompletion_id    DEFAULT     ?   ALTER TABLE ONLY public.sch_completion ALTER COLUMN schcompletion_id SET DEFAULT nextval('public.sch_completion_schcompletion_id_seq'::regclass);
 N   ALTER TABLE public.sch_completion ALTER COLUMN schcompletion_id DROP DEFAULT;
       public          postgres    false    210    209            _           2604    16990    sch_completion schedule_id    DEFAULT     ?   ALTER TABLE ONLY public.sch_completion ALTER COLUMN schedule_id SET DEFAULT nextval('public.sch_completion_schedule_id_seq'::regclass);
 I   ALTER TABLE public.sch_completion ALTER COLUMN schedule_id DROP DEFAULT;
       public          postgres    false    211    209            `           2604    16991 #   sch_completion teaching_material_id    DEFAULT     ?   ALTER TABLE ONLY public.sch_completion ALTER COLUMN teaching_material_id SET DEFAULT nextval('public.sch_completion_teaching_material_id_seq'::regclass);
 R   ALTER TABLE public.sch_completion ALTER COLUMN teaching_material_id DROP DEFAULT;
       public          postgres    false    212    209            a           2604    16992    schedule schedule_id    DEFAULT     |   ALTER TABLE ONLY public.schedule ALTER COLUMN schedule_id SET DEFAULT nextval('public.schedule_schedule_id_seq'::regclass);
 C   ALTER TABLE public.schedule ALTER COLUMN schedule_id DROP DEFAULT;
       public          postgres    false    217    213            b           2604    16993    schedule course_id    DEFAULT     x   ALTER TABLE ONLY public.schedule ALTER COLUMN course_id SET DEFAULT nextval('public.schedule_course_id_seq'::regclass);
 A   ALTER TABLE public.schedule ALTER COLUMN course_id DROP DEFAULT;
       public          postgres    false    214    213            c           2604    16994    schedule mentee_id    DEFAULT     x   ALTER TABLE ONLY public.schedule ALTER COLUMN mentee_id SET DEFAULT nextval('public.schedule_mentee_id_seq'::regclass);
 A   ALTER TABLE public.schedule ALTER COLUMN mentee_id DROP DEFAULT;
       public          postgres    false    215    213            d           2604    16995    schedule mentor_id    DEFAULT     x   ALTER TABLE ONLY public.schedule ALTER COLUMN mentor_id SET DEFAULT nextval('public.schedule_mentor_id_seq'::regclass);
 A   ALTER TABLE public.schedule ALTER COLUMN mentor_id DROP DEFAULT;
       public          postgres    false    216    213            e           2604    16996 &   teaching_material teaching_material_id    DEFAULT     ?   ALTER TABLE ONLY public.teaching_material ALTER COLUMN teaching_material_id SET DEFAULT nextval('public.teaching_material_teaching_material_id_seq'::regclass);
 U   ALTER TABLE public.teaching_material ALTER COLUMN teaching_material_id DROP DEFAULT;
       public          postgres    false    220    218            f           2604    16997    teaching_material module_id    DEFAULT     ?   ALTER TABLE ONLY public.teaching_material ALTER COLUMN module_id SET DEFAULT nextval('public.teaching_material_module_id_seq'::regclass);
 J   ALTER TABLE public.teaching_material ALTER COLUMN module_id DROP DEFAULT;
       public          postgres    false    219    218                      0    16920    course 
   TABLE DATA           8   COPY public.course (course_id, course_name) FROM stdin;
    public          postgres    false    200   Zi                 0    16928    mentee 
   TABLE DATA           F   COPY public.mentee (mentee_id, mentee_name, mentee_email) FROM stdin;
    public          postgres    false    202   ?i                 0    16936    mentor 
   TABLE DATA           F   COPY public.mentor (mentor_id, mentor_name, mentor_email) FROM stdin;
    public          postgres    false    204   ?j                 0    16944    module 
   TABLE DATA           C   COPY public.module (module_id, module_name, course_id) FROM stdin;
    public          postgres    false    206   ?j       
          0    16954    sch_completion 
   TABLE DATA           v   COPY public.sch_completion (schcompletion_id, schedule_id, teaching_material_id, completed, is_completed) FROM stdin;
    public          postgres    false    209   ?k                 0    16963    schedule 
   TABLE DATA           {   COPY public.schedule (schedule_id, course_id, mentee_id, mentor_id, start_date, end_date, mentor_verification) FROM stdin;
    public          postgres    false    213   ?l                 0    16974    teaching_material 
   TABLE DATA           a   COPY public.teaching_material (teaching_material_id, module_id, video_url, duration) FROM stdin;
    public          postgres    false    218   ?m       *           0    0    course_course_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.course_course_id_seq', 3, true);
          public          postgres    false    201            +           0    0    mentee_mentee_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.mentee_mentee_id_seq', 1, true);
          public          postgres    false    203            ,           0    0    mentor_mentor_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.mentor_mentor_id_seq', 1, false);
          public          postgres    false    205            -           0    0    module_course_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.module_course_id_seq', 1, true);
          public          postgres    false    207            .           0    0    module_module_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.module_module_id_seq', 4, true);
          public          postgres    false    208            /           0    0 #   sch_completion_schcompletion_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.sch_completion_schcompletion_id_seq', 3, true);
          public          postgres    false    210            0           0    0    sch_completion_schedule_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.sch_completion_schedule_id_seq', 1, false);
          public          postgres    false    211            1           0    0 '   sch_completion_teaching_material_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.sch_completion_teaching_material_id_seq', 5, true);
          public          postgres    false    212            2           0    0    schedule_course_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.schedule_course_id_seq', 2, true);
          public          postgres    false    214            3           0    0    schedule_mentee_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.schedule_mentee_id_seq', 1, true);
          public          postgres    false    215            4           0    0    schedule_mentor_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.schedule_mentor_id_seq', 2, true);
          public          postgres    false    216            5           0    0    schedule_schedule_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.schedule_schedule_id_seq', 4, true);
          public          postgres    false    217            6           0    0    teaching_material_module_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.teaching_material_module_id_seq', 1, false);
          public          postgres    false    219            7           0    0 *   teaching_material_teaching_material_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.teaching_material_teaching_material_id_seq', 4, true);
          public          postgres    false    220            h           2606    16999    course Course_id 
   CONSTRAINT     W   ALTER TABLE ONLY public.course
    ADD CONSTRAINT "Course_id" PRIMARY KEY (course_id);
 <   ALTER TABLE ONLY public.course DROP CONSTRAINT "Course_id";
       public            postgres    false    200            j           2606    17001    mentee mentee_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.mentee
    ADD CONSTRAINT mentee_pkey PRIMARY KEY (mentee_id);
 <   ALTER TABLE ONLY public.mentee DROP CONSTRAINT mentee_pkey;
       public            postgres    false    202            l           2606    17003    mentor mentor_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.mentor
    ADD CONSTRAINT mentor_pkey PRIMARY KEY (mentor_id);
 <   ALTER TABLE ONLY public.mentor DROP CONSTRAINT mentor_pkey;
       public            postgres    false    204            n           2606    17005    module module_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.module
    ADD CONSTRAINT module_pkey PRIMARY KEY (module_id);
 <   ALTER TABLE ONLY public.module DROP CONSTRAINT module_pkey;
       public            postgres    false    206            r           2606    17007 "   sch_completion sch_completion_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.sch_completion
    ADD CONSTRAINT sch_completion_pkey PRIMARY KEY (schcompletion_id);
 L   ALTER TABLE ONLY public.sch_completion DROP CONSTRAINT sch_completion_pkey;
       public            postgres    false    209            u           2606    17009    schedule schedule_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT schedule_id PRIMARY KEY (schedule_id);
 >   ALTER TABLE ONLY public.schedule DROP CONSTRAINT schedule_id;
       public            postgres    false    213            w           2606    17011 (   teaching_material teaching_material_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.teaching_material
    ADD CONSTRAINT teaching_material_pkey PRIMARY KEY (teaching_material_id);
 R   ALTER TABLE ONLY public.teaching_material DROP CONSTRAINT teaching_material_pkey;
       public            postgres    false    218            s           1259    17012    fki_mentor_id    INDEX     G   CREATE INDEX fki_mentor_id ON public.schedule USING btree (mentor_id);
 !   DROP INDEX public.fki_mentor_id;
       public            postgres    false    213            o           1259    17013    fki_schedule_id    INDEX     Q   CREATE INDEX fki_schedule_id ON public.sch_completion USING btree (schedule_id);
 #   DROP INDEX public.fki_schedule_id;
       public            postgres    false    209            p           1259    17014    fki_teaching_material_id    INDEX     c   CREATE INDEX fki_teaching_material_id ON public.sch_completion USING btree (teaching_material_id);
 ,   DROP INDEX public.fki_teaching_material_id;
       public            postgres    false    209            x           2606    17015    module course_id    FK CONSTRAINT     y   ALTER TABLE ONLY public.module
    ADD CONSTRAINT course_id FOREIGN KEY (course_id) REFERENCES public.course(course_id);
 :   ALTER TABLE ONLY public.module DROP CONSTRAINT course_id;
       public          postgres    false    206    200    2920            {           2606    17020    schedule course_id    FK CONSTRAINT     {   ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT course_id FOREIGN KEY (course_id) REFERENCES public.course(course_id);
 <   ALTER TABLE ONLY public.schedule DROP CONSTRAINT course_id;
       public          postgres    false    213    2920    200            |           2606    17025    schedule mentee_id    FK CONSTRAINT     {   ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT mentee_id FOREIGN KEY (mentee_id) REFERENCES public.mentee(mentee_id);
 <   ALTER TABLE ONLY public.schedule DROP CONSTRAINT mentee_id;
       public          postgres    false    202    2922    213            }           2606    17030    schedule mentor_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT mentor_id FOREIGN KEY (mentor_id) REFERENCES public.mentor(mentor_id) NOT VALID;
 <   ALTER TABLE ONLY public.schedule DROP CONSTRAINT mentor_id;
       public          postgres    false    204    213    2924            ~           2606    17035    teaching_material module_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.teaching_material
    ADD CONSTRAINT module_id FOREIGN KEY (module_id) REFERENCES public.module(module_id);
 E   ALTER TABLE ONLY public.teaching_material DROP CONSTRAINT module_id;
       public          postgres    false    206    2926    218            y           2606    17040    sch_completion schedule_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.sch_completion
    ADD CONSTRAINT schedule_id FOREIGN KEY (schedule_id) REFERENCES public.schedule(schedule_id) NOT VALID;
 D   ALTER TABLE ONLY public.sch_completion DROP CONSTRAINT schedule_id;
       public          postgres    false    213    2933    209            z           2606    17045 #   sch_completion teaching_material_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.sch_completion
    ADD CONSTRAINT teaching_material_id FOREIGN KEY (teaching_material_id) REFERENCES public.teaching_material(teaching_material_id) NOT VALID;
 M   ALTER TABLE ONLY public.sch_completion DROP CONSTRAINT teaching_material_id;
       public          postgres    false    218    2935    209               ?   x?ͻ
?@@?z?+??|k??#??l?$.???I??w?{???%52???KP??sr?e<?????qP??u???WT<-?j?3u?Nن?.1*??.y?ٛ?KE)Z#?1j?{+5?	??M???h??{??/?+         ?   x?M??
?0?ϛ???4??у??B?^?J?-)*}{ ?e?ُ)???,?8?/I?r?w#??iT???-|?<?O<??c2??B?{???Bï?y?`??8??4~ . n????-u??cq-?.????kj????S??TWe?\??"?T?         /   x?3?J,??TpJ?+N?????2?I??M?Tp??/? ???qqq |?         ?   x?M??n?@E??W̪ˊI?kY??
??:+6&uè?4q???5t???{?????d޼???1B?3?}`??H-????9?RC??O?8;?5X?a???ik???5	?x??[?-a????WZ???????g9??ԥv?????r ?G5??c??+p??pJI??X(q??????Еn]?????J?^??zx?X,?????)?o????ψ???O?      
   ?   x?M??m?0C??a??a;ޥߝ??????#???`|փ??G'???*ڤ]???[dN?Q8?Q??l?????K?z?no7q?????=??S|?=???<??? oqTLxu'4????N??Fo?l8wZ4?9ŭ??Gs??ޚɽu2?}{??1=_t???5?>?F?p?B??L)U???????|Kq??,????Td?h?5??????m	?????X???*?
fE%???c??5??cS         ?   x?}?]
?0????t??m????`?g?
͠XB@_m?u'&
%????u???c_??[???t???eo?`W??!??^C?\?V?hxx$??5?i??!??y,????+@l?1A???3??!۠?T ߂?Fp??J??45CՀϨ??x?(????s?4)???[L?C;=??????'W8?)+?_)?/?Ѣ?         "  x???ɒ?@?3?.?;sc??U?Y??0X?ED?@?~<?????3?LH@?????\渾???|.??+;?ˢ>?e??A?oo?s??@q8??%`?V\???F???X@Լ?HTTn?&Tbtf}?????uj??mS?/???&?y0?ʭ?ֹ/-?]&'??? ?????;?? ?`?Ł➘?Nk?Q?D?? Q??slzK??%?,`	v?t;=?<???N?????]"?1޹????#?y? ??c?R??>?tɽ??:7???L??Ν_?@????[??=?ćA+-33??J?q?}?E?0???P??G5]???~{????9>>$??????H??"W|ôR?S*R?Z??????ޔ}?*??Kd( ɧ?A1???Aq?????6??NFICi??J?? ᳟y?j׳O? ?.9q?\	^N9?*?to??????y52M6??Q??ܭ??ߩ??w?????2!??3??yd/????{fo7??n,?'?k?'????h ~?8Pߩ|???Q?
F?u????gk?d??{y?,?? ?y?     