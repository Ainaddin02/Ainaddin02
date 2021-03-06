PGDMP     0                    z            survey_application    14.2    14.2     s           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            t           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            u           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            v           1262    26825    survey_application    DATABASE     ]   CREATE DATABASE survey_application WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
 "   DROP DATABASE survey_application;
                postgres    false                        3079    26826    postgis 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;
    DROP EXTENSION postgis;
                   false            w           0    0    EXTENSION postgis    COMMENT     ^   COMMENT ON EXTENSION postgis IS 'PostGIS geometry and geography spatial types and functions';
                        false    2            ?            1259    27864    drawnFeature    TABLE     ?   CREATE TABLE public."drawnFeature" (
    type character varying(500) NOT NULL,
    name character varying(500),
    geom public.geometry,
    feature_id bigint NOT NULL
);
 "   DROP TABLE public."drawnFeature";
       public         heap    postgres    false    2    2    2    2    2    2    2    2            ?            1259    27869    drawnFeature_feature_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."drawnFeature_feature_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."drawnFeature_feature_id_seq";
       public          postgres    false    215            x           0    0    drawnFeature_feature_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."drawnFeature_feature_id_seq" OWNED BY public."drawnFeature".feature_id;
          public          postgres    false    216            ?           2604    27870    drawnFeature feature_id    DEFAULT     ?   ALTER TABLE ONLY public."drawnFeature" ALTER COLUMN feature_id SET DEFAULT nextval('public."drawnFeature_feature_id_seq"'::regclass);
 H   ALTER TABLE public."drawnFeature" ALTER COLUMN feature_id DROP DEFAULT;
       public          postgres    false    216    215            o          0    27864    drawnFeature 
   TABLE DATA           F   COPY public."drawnFeature" (type, name, geom, feature_id) FROM stdin;
    public          postgres    false    215   <       ?          0    27136    spatial_ref_sys 
   TABLE DATA           X   COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
    public          postgres    false    211   h       y           0    0    drawnFeature_feature_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."drawnFeature_feature_id_seq"', 12, true);
          public          postgres    false    216            ?           2606    27872    drawnFeature drawnFeature_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."drawnFeature"
    ADD CONSTRAINT "drawnFeature_pkey" PRIMARY KEY (feature_id);
 L   ALTER TABLE ONLY public."drawnFeature" DROP CONSTRAINT "drawnFeature_pkey";
       public            postgres    false    215            o     x??T?JA]??~A?wu/??? d???KD????O??q#F?Yt?ΙSu??\~=\??] ㎋`ض???R@?t:????]Y?????l??4?Բ?-?.??l:^?nO???N??oO?$~?1׊?C?,d?-Q?]H>)?9???v!%??ICe?O
??*t-mw??j&7!>~?y>=??_???ʈ??Ή0t.jmf?nuUV???4?y3<9gɭ/|?j:?̾p?I>????j??Ku??????s??tz|R{??9???\B??^:????Y%???S???????I?k?Io???IK??X>??z:=\??_7?=/~??}???)F?eX}?a?9?<C????"T\x?#$#??9㮙E?5^??7J??v????3??w.g	??N?`?*??H?1?eᒘJS?????<??m?+8???>??A??k?
K~????T"??)u)i?.<uV/=&c?	&?b?v?'?:}????-XFuǷ?P??%o+[?h???9^~.??? 
??0?itGh??6_4?????x???      ?      x?????? ? ?     