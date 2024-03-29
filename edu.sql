PGDMP                         y            edu_bd    14.0    14.0 .    1           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            2           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            3           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            4           1262    17856    edu_bd    DATABASE     f   CREATE DATABASE edu_bd WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Kyrgyz_Kyrgyzstan.1251';
    DROP DATABASE edu_bd;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            5           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            �            1259    17932 	   exam_term    TABLE     d   CREATE TABLE public.exam_term (
    id bigint NOT NULL,
    name character varying(450) NOT NULL
);
    DROP TABLE public.exam_term;
       public         heap    postgres    false    3            �            1259    17931    exam_term_id_seq    SEQUENCE     y   CREATE SEQUENCE public.exam_term_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.exam_term_id_seq;
       public          postgres    false    3    210            6           0    0    exam_term_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.exam_term_id_seq OWNED BY public.exam_term.id;
          public          postgres    false    209            �            1259    17939    general_setting    TABLE     �  CREATE TABLE public.general_setting (
    id bigint NOT NULL,
    website_name character varying(400) NOT NULL,
    website_address character varying(500) NOT NULL,
    website_phone1 character varying(30) NOT NULL,
    website_phone2 character varying(30) NOT NULL,
    website_email1 character varying(200) NOT NULL,
    website_email2 character varying(200) NOT NULL,
    website_start character varying(25) NOT NULL,
    web_about text NOT NULL
);
 #   DROP TABLE public.general_setting;
       public         heap    postgres    false    3            �            1259    17938    general_setting_id_seq    SEQUENCE        CREATE SEQUENCE public.general_setting_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.general_setting_id_seq;
       public          postgres    false    3    212            7           0    0    general_setting_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.general_setting_id_seq OWNED BY public.general_setting.id;
          public          postgres    false    211            �            1259    17948    meadmin    TABLE     �   CREATE TABLE public.meadmin (
    id bigint NOT NULL,
    admin_username character varying(150) NOT NULL,
    admin_password character varying(100) NOT NULL,
    t_staff_type character varying(150) NOT NULL
);
    DROP TABLE public.meadmin;
       public         heap    postgres    false    3            �            1259    17947    meadmin_id_seq    SEQUENCE     w   CREATE SEQUENCE public.meadmin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.meadmin_id_seq;
       public          postgres    false    214    3            8           0    0    meadmin_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.meadmin_id_seq OWNED BY public.meadmin.id;
          public          postgres    false    213            �            1259    17955    result    TABLE     �  CREATE TABLE public.result (
    id bigint NOT NULL,
    student_name character varying(250) DEFAULT NULL::character varying,
    student_grade character varying(10) DEFAULT NULL::character varying,
    english character varying(250) DEFAULT NULL::character varying,
    english2 character varying(250) DEFAULT NULL::character varying,
    math character varying(250) DEFAULT NULL::character varying,
    math2 character varying(250) DEFAULT NULL::character varying,
    social character varying(250) DEFAULT NULL::character varying,
    health character varying(250) DEFAULT NULL::character varying,
    gk character varying(250) DEFAULT NULL::character varying,
    computer character varying(250) DEFAULT NULL::character varying,
    science character varying(250) DEFAULT NULL::character varying,
    web character varying(250) DEFAULT NULL::character varying,
    first_term character varying(250) DEFAULT NULL::character varying
);
    DROP TABLE public.result;
       public         heap    postgres    false    3            �            1259    17954    result_id_seq    SEQUENCE     v   CREATE SEQUENCE public.result_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.result_id_seq;
       public          postgres    false    216    3            9           0    0    result_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.result_id_seq OWNED BY public.result.id;
          public          postgres    false    215            �            1259    17977    st_info    TABLE     Y  CREATE TABLE public.st_info (
    st_id bigint NOT NULL,
    st_fullname character varying(100) NOT NULL,
    st_username character varying(30) NOT NULL,
    st_password character varying(100) NOT NULL,
    st_grade integer NOT NULL,
    roll_no integer NOT NULL,
    st_dob character varying(20) NOT NULL,
    st_address character varying(100) NOT NULL,
    st_district character varying(100) NOT NULL,
    st_gender character varying(12) NOT NULL,
    st_father character varying(100) NOT NULL,
    st_mother character varying(100) NOT NULL,
    st_parents_contact character varying(15) NOT NULL
);
    DROP TABLE public.st_info;
       public         heap    postgres    false    3            �            1259    17976    st_info_st_id_seq    SEQUENCE     z   CREATE SEQUENCE public.st_info_st_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.st_info_st_id_seq;
       public          postgres    false    218    3            :           0    0    st_info_st_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.st_info_st_id_seq OWNED BY public.st_info.st_id;
          public          postgres    false    217            �            1259    17995    sub_class_name    TABLE     �   CREATE TABLE public.sub_class_name (
    id bigint NOT NULL,
    subject character varying(100) NOT NULL,
    class character varying(50) NOT NULL
);
 "   DROP TABLE public.sub_class_name;
       public         heap    postgres    false    3            �            1259    17994    sub_class_name_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.sub_class_name_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.sub_class_name_id_seq;
       public          postgres    false    3    222            ;           0    0    sub_class_name_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.sub_class_name_id_seq OWNED BY public.sub_class_name.id;
          public          postgres    false    221            �            1259    17986    subjects_info    TABLE     "  CREATE TABLE public.subjects_info (
    id bigint NOT NULL,
    subject_name character varying(200) NOT NULL,
    t_fullname character varying(200) NOT NULL,
    t_email character varying(200) NOT NULL,
    grade character varying(10) NOT NULL,
    "time" character varying(80) NOT NULL
);
 !   DROP TABLE public.subjects_info;
       public         heap    postgres    false    3            �            1259    17985    subjects_info_id_seq    SEQUENCE     }   CREATE SEQUENCE public.subjects_info_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.subjects_info_id_seq;
       public          postgres    false    220    3            <           0    0    subjects_info_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.subjects_info_id_seq OWNED BY public.subjects_info.id;
          public          postgres    false    219            �            1259    18002    teacher_info    TABLE     `  CREATE TABLE public.teacher_info (
    t_id bigint NOT NULL,
    t_fullname character varying(150) NOT NULL,
    t_address character varying(200) NOT NULL,
    t_email character varying(100) NOT NULL,
    t_username character varying(150) NOT NULL,
    t_pass character varying(50) NOT NULL,
    t_father character varying(150) NOT NULL,
    t_mother character varying(150) NOT NULL,
    t_dob character varying(50) NOT NULL,
    t_qualification character varying(800) NOT NULL,
    t_contact integer NOT NULL,
    t_staff_type character varying(200) NOT NULL,
    t_gender character varying(25) NOT NULL
);
     DROP TABLE public.teacher_info;
       public         heap    postgres    false    3            �            1259    18001    teacher_info_t_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.teacher_info_t_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.teacher_info_t_id_seq;
       public          postgres    false    224    3            =           0    0    teacher_info_t_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.teacher_info_t_id_seq OWNED BY public.teacher_info.t_id;
          public          postgres    false    223                       2604    17935    exam_term id    DEFAULT     l   ALTER TABLE ONLY public.exam_term ALTER COLUMN id SET DEFAULT nextval('public.exam_term_id_seq'::regclass);
 ;   ALTER TABLE public.exam_term ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            �           2604    17942    general_setting id    DEFAULT     x   ALTER TABLE ONLY public.general_setting ALTER COLUMN id SET DEFAULT nextval('public.general_setting_id_seq'::regclass);
 A   ALTER TABLE public.general_setting ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            �           2604    17951 
   meadmin id    DEFAULT     h   ALTER TABLE ONLY public.meadmin ALTER COLUMN id SET DEFAULT nextval('public.meadmin_id_seq'::regclass);
 9   ALTER TABLE public.meadmin ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            �           2604    17958 	   result id    DEFAULT     f   ALTER TABLE ONLY public.result ALTER COLUMN id SET DEFAULT nextval('public.result_id_seq'::regclass);
 8   ALTER TABLE public.result ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    17980    st_info st_id    DEFAULT     n   ALTER TABLE ONLY public.st_info ALTER COLUMN st_id SET DEFAULT nextval('public.st_info_st_id_seq'::regclass);
 <   ALTER TABLE public.st_info ALTER COLUMN st_id DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    17998    sub_class_name id    DEFAULT     v   ALTER TABLE ONLY public.sub_class_name ALTER COLUMN id SET DEFAULT nextval('public.sub_class_name_id_seq'::regclass);
 @   ALTER TABLE public.sub_class_name ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    17989    subjects_info id    DEFAULT     t   ALTER TABLE ONLY public.subjects_info ALTER COLUMN id SET DEFAULT nextval('public.subjects_info_id_seq'::regclass);
 ?   ALTER TABLE public.subjects_info ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    18005    teacher_info t_id    DEFAULT     v   ALTER TABLE ONLY public.teacher_info ALTER COLUMN t_id SET DEFAULT nextval('public.teacher_info_t_id_seq'::regclass);
 @   ALTER TABLE public.teacher_info ALTER COLUMN t_id DROP DEFAULT;
       public          postgres    false    223    224    224            �           2606    17937    exam_term exam_term_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.exam_term
    ADD CONSTRAINT exam_term_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.exam_term DROP CONSTRAINT exam_term_pkey;
       public            postgres    false    210            �           2606    17946 $   general_setting general_setting_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.general_setting
    ADD CONSTRAINT general_setting_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.general_setting DROP CONSTRAINT general_setting_pkey;
       public            postgres    false    212            �           2606    17953    meadmin meadmin_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.meadmin
    ADD CONSTRAINT meadmin_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.meadmin DROP CONSTRAINT meadmin_pkey;
       public            postgres    false    214            �           2606    17975    result result_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.result
    ADD CONSTRAINT result_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.result DROP CONSTRAINT result_pkey;
       public            postgres    false    216            �           2606    17984    st_info st_info_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.st_info
    ADD CONSTRAINT st_info_pkey PRIMARY KEY (st_id);
 >   ALTER TABLE ONLY public.st_info DROP CONSTRAINT st_info_pkey;
       public            postgres    false    218            �           2606    18000 "   sub_class_name sub_class_name_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.sub_class_name
    ADD CONSTRAINT sub_class_name_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.sub_class_name DROP CONSTRAINT sub_class_name_pkey;
       public            postgres    false    222            �           2606    17993     subjects_info subjects_info_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.subjects_info
    ADD CONSTRAINT subjects_info_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.subjects_info DROP CONSTRAINT subjects_info_pkey;
       public            postgres    false    220            �           2606    18009    teacher_info teacher_info_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.teacher_info
    ADD CONSTRAINT teacher_info_pkey PRIMARY KEY (t_id);
 H   ALTER TABLE ONLY public.teacher_info DROP CONSTRAINT teacher_info_pkey;
       public            postgres    false    224           