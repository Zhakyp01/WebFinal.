PGDMP         -                y            postgres    14.0    14.0 0    $           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            %           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            &           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            '           1262    13754    postgres    DATABASE     h   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Kyrgyz_Kyrgyzstan.1251';
    DROP DATABASE postgres;
                postgres    false            (           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3367                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            )           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    4            �            1259    17770    booking    TABLE     N  CREATE TABLE public.booking (
    booking_id integer NOT NULL,
    reservation_date date NOT NULL,
    checkout_date date,
    status character varying(30) NOT NULL,
    room_type character varying(30) NOT NULL,
    booking_date date NOT NULL,
    room_id integer,
    customer_id integer NOT NULL,
    payment_id integer NOT NULL
);
    DROP TABLE public.booking;
       public         heap    postgres    false    4            �            1259    17769    booking_booking_id_seq    SEQUENCE     �   CREATE SEQUENCE public.booking_booking_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.booking_booking_id_seq;
       public          postgres    false    4    221            *           0    0    booking_booking_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.booking_booking_id_seq OWNED BY public.booking.booking_id;
          public          postgres    false    220            �            1259    17740    customer    TABLE     �   CREATE TABLE public.customer (
    customer_id integer NOT NULL,
    full_name character varying(80) NOT NULL,
    email character varying(80) NOT NULL
);
    DROP TABLE public.customer;
       public         heap    postgres    false    4            �            1259    17739    customer_customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.customer_customer_id_seq;
       public          postgres    false    213    4            +           0    0    customer_customer_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.customer_customer_id_seq OWNED BY public.customer.customer_id;
          public          postgres    false    212            �            1259    17729    management_user    TABLE     �   CREATE TABLE public.management_user (
    account_id integer NOT NULL,
    username character varying(30) NOT NULL,
    password text NOT NULL
);
 #   DROP TABLE public.management_user;
       public         heap    postgres    false    4            �            1259    17728    management_user_account_id_seq    SEQUENCE     �   CREATE SEQUENCE public.management_user_account_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.management_user_account_id_seq;
       public          postgres    false    4    211            ,           0    0    management_user_account_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.management_user_account_id_seq OWNED BY public.management_user.account_id;
          public          postgres    false    210            �            1259    17763    payment    TABLE     �   CREATE TABLE public.payment (
    payment_id integer NOT NULL,
    date date,
    ispaid boolean NOT NULL,
    payment_method character varying(30) NOT NULL,
    total_price double precision NOT NULL
);
    DROP TABLE public.payment;
       public         heap    postgres    false    4            �            1259    17762    payment_payment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.payment_payment_id_seq;
       public          postgres    false    219    4            -           0    0    payment_payment_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.payment_payment_id_seq OWNED BY public.payment.payment_id;
          public          postgres    false    218            �            1259    17747    room    TABLE     �   CREATE TABLE public.room (
    room_id integer NOT NULL,
    room_number character varying(5) NOT NULL,
    type character varying(30) NOT NULL,
    availability character varying(30) NOT NULL,
    price numeric NOT NULL
);
    DROP TABLE public.room;
       public         heap    postgres    false    4            �            1259    17746    room_room_id_seq    SEQUENCE     �   CREATE SEQUENCE public.room_room_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.room_room_id_seq;
       public          postgres    false    215    4            .           0    0    room_room_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.room_room_id_seq OWNED BY public.room.room_id;
          public          postgres    false    214            �            1259    17756    service    TABLE     �   CREATE TABLE public.service (
    service_id integer NOT NULL,
    type character varying(30) NOT NULL,
    price double precision NOT NULL
);
    DROP TABLE public.service;
       public         heap    postgres    false    4            �            1259    17792    service_list    TABLE     �   CREATE TABLE public.service_list (
    service_list_id integer NOT NULL,
    service_id integer NOT NULL,
    booking_id integer NOT NULL
);
     DROP TABLE public.service_list;
       public         heap    postgres    false    4            �            1259    17791     service_list_service_list_id_seq    SEQUENCE     �   CREATE SEQUENCE public.service_list_service_list_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.service_list_service_list_id_seq;
       public          postgres    false    223    4            /           0    0     service_list_service_list_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.service_list_service_list_id_seq OWNED BY public.service_list.service_list_id;
          public          postgres    false    222            �            1259    17755    service_service_id_seq    SEQUENCE     �   CREATE SEQUENCE public.service_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.service_service_id_seq;
       public          postgres    false    217    4            0           0    0    service_service_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.service_service_id_seq OWNED BY public.service.service_id;
          public          postgres    false    216            �           2604    17773    booking booking_id    DEFAULT     x   ALTER TABLE ONLY public.booking ALTER COLUMN booking_id SET DEFAULT nextval('public.booking_booking_id_seq'::regclass);
 A   ALTER TABLE public.booking ALTER COLUMN booking_id DROP DEFAULT;
       public          postgres    false    220    221    221            |           2604    17743    customer customer_id    DEFAULT     |   ALTER TABLE ONLY public.customer ALTER COLUMN customer_id SET DEFAULT nextval('public.customer_customer_id_seq'::regclass);
 C   ALTER TABLE public.customer ALTER COLUMN customer_id DROP DEFAULT;
       public          postgres    false    213    212    213            {           2604    17732    management_user account_id    DEFAULT     �   ALTER TABLE ONLY public.management_user ALTER COLUMN account_id SET DEFAULT nextval('public.management_user_account_id_seq'::regclass);
 I   ALTER TABLE public.management_user ALTER COLUMN account_id DROP DEFAULT;
       public          postgres    false    211    210    211                       2604    17766    payment payment_id    DEFAULT     x   ALTER TABLE ONLY public.payment ALTER COLUMN payment_id SET DEFAULT nextval('public.payment_payment_id_seq'::regclass);
 A   ALTER TABLE public.payment ALTER COLUMN payment_id DROP DEFAULT;
       public          postgres    false    218    219    219            }           2604    17750    room room_id    DEFAULT     l   ALTER TABLE ONLY public.room ALTER COLUMN room_id SET DEFAULT nextval('public.room_room_id_seq'::regclass);
 ;   ALTER TABLE public.room ALTER COLUMN room_id DROP DEFAULT;
       public          postgres    false    215    214    215            ~           2604    17759    service service_id    DEFAULT     x   ALTER TABLE ONLY public.service ALTER COLUMN service_id SET DEFAULT nextval('public.service_service_id_seq'::regclass);
 A   ALTER TABLE public.service ALTER COLUMN service_id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    17795    service_list service_list_id    DEFAULT     �   ALTER TABLE ONLY public.service_list ALTER COLUMN service_list_id SET DEFAULT nextval('public.service_list_service_list_id_seq'::regclass);
 K   ALTER TABLE public.service_list ALTER COLUMN service_list_id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2606    17775    booking booking_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.booking
    ADD CONSTRAINT booking_pkey PRIMARY KEY (booking_id);
 >   ALTER TABLE ONLY public.booking DROP CONSTRAINT booking_pkey;
       public            postgres    false    221            �           2606    17745    customer customer_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    213            �           2606    17736 $   management_user management_user_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.management_user
    ADD CONSTRAINT management_user_pkey PRIMARY KEY (account_id);
 N   ALTER TABLE ONLY public.management_user DROP CONSTRAINT management_user_pkey;
       public            postgres    false    211            �           2606    17768    payment payment_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (payment_id);
 >   ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_pkey;
       public            postgres    false    219            �           2606    17754    room room_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.room
    ADD CONSTRAINT room_pkey PRIMARY KEY (room_id);
 8   ALTER TABLE ONLY public.room DROP CONSTRAINT room_pkey;
       public            postgres    false    215            �           2606    17797    service_list service_list_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.service_list
    ADD CONSTRAINT service_list_pkey PRIMARY KEY (service_list_id);
 H   ALTER TABLE ONLY public.service_list DROP CONSTRAINT service_list_pkey;
       public            postgres    false    223            �           2606    17761    service service_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.service
    ADD CONSTRAINT service_pkey PRIMARY KEY (service_id);
 >   ALTER TABLE ONLY public.service DROP CONSTRAINT service_pkey;
       public            postgres    false    217            �           2606    17738    management_user username_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.management_user
    ADD CONSTRAINT username_unique UNIQUE (username);
 I   ALTER TABLE ONLY public.management_user DROP CONSTRAINT username_unique;
       public            postgres    false    211            �           2606    17781     booking booking_customer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.booking
    ADD CONSTRAINT booking_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 J   ALTER TABLE ONLY public.booking DROP CONSTRAINT booking_customer_id_fkey;
       public          postgres    false    213    221    3207            �           2606    17786    booking booking_payment_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.booking
    ADD CONSTRAINT booking_payment_id_fkey FOREIGN KEY (payment_id) REFERENCES public.payment(payment_id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.booking DROP CONSTRAINT booking_payment_id_fkey;
       public          postgres    false    221    3213    219            �           2606    17776    booking booking_room_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.booking
    ADD CONSTRAINT booking_room_id_fkey FOREIGN KEY (room_id) REFERENCES public.room(room_id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.booking DROP CONSTRAINT booking_room_id_fkey;
       public          postgres    false    215    3209    221            �           2606    17803 )   service_list service_list_booking_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.service_list
    ADD CONSTRAINT service_list_booking_id_fkey FOREIGN KEY (booking_id) REFERENCES public.booking(booking_id) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.service_list DROP CONSTRAINT service_list_booking_id_fkey;
       public          postgres    false    3215    221    223            �           2606    17798 )   service_list service_list_service_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.service_list
    ADD CONSTRAINT service_list_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.service(service_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 S   ALTER TABLE ONLY public.service_list DROP CONSTRAINT service_list_service_id_fkey;
       public          postgres    false    223    217    3211           