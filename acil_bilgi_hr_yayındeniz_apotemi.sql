PGDMP     '                    z            daosb294uf40u5     14.5 (Ubuntu 14.5-1.pgdg20.04+1)    14.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    706690    daosb294uf40u5    DATABASE     c   CREATE DATABASE daosb294uf40u5 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE daosb294uf40u5;
                wvkpdfzwyubihp    false            �           0    0    DATABASE daosb294uf40u5    ACL     A   REVOKE CONNECT,TEMPORARY ON DATABASE daosb294uf40u5 FROM PUBLIC;
                   wvkpdfzwyubihp    false    4336            �           0    0    daosb294uf40u5    DATABASE PROPERTIES     R   ALTER DATABASE daosb294uf40u5 SET search_path TO '$user', 'public', 'heroku_ext';
                     wvkpdfzwyubihp    false            �           0    0    LANGUAGE plpgsql    ACL     1   GRANT ALL ON LANGUAGE plpgsql TO wvkpdfzwyubihp;
                   postgres    false    859            �            1259    707479    books    TABLE     x  CREATE TABLE public.books (
    book_id integer NOT NULL,
    book_name character varying(75) NOT NULL,
    book_grade character varying(10) NOT NULL,
    book_branch character varying(30) NOT NULL,
    image_name text NOT NULL,
    book_kind character varying(30) NOT NULL,
    book_date date NOT NULL,
    book_labels text DEFAULT ''::text,
    second_grade character(6)
);
    DROP TABLE public.books;
       public         heap    wvkpdfzwyubihp    false            �            1259    707490    books_book_id_seq    SEQUENCE     �   CREATE SEQUENCE public.books_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.books_book_id_seq;
       public          wvkpdfzwyubihp    false    215            �           0    0    books_book_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.books_book_id_seq OWNED BY public.books.book_id;
          public          wvkpdfzwyubihp    false    216            X           2604    707526    books book_id    DEFAULT     n   ALTER TABLE ONLY public.books ALTER COLUMN book_id SET DEFAULT nextval('public.books_book_id_seq'::regclass);
 <   ALTER TABLE public.books ALTER COLUMN book_id DROP DEFAULT;
       public          wvkpdfzwyubihp    false    216    215            �          0    707479    books 
   TABLE DATA           �   COPY public.books (book_id, book_name, book_grade, book_branch, image_name, book_kind, book_date, book_labels, second_grade) FROM stdin;
    public          wvkpdfzwyubihp    false    215   �       �           0    0    books_book_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.books_book_id_seq', 635, true);
          public          wvkpdfzwyubihp    false    216            [           2606    707535    books books_book_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_book_name_key UNIQUE (book_name);
 C   ALTER TABLE ONLY public.books DROP CONSTRAINT books_book_name_key;
       public            wvkpdfzwyubihp    false    215            ]           2606    707537    books books_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (book_id);
 :   ALTER TABLE ONLY public.books DROP CONSTRAINT books_pkey;
       public            wvkpdfzwyubihp    false    215            �      x��]�nG�]�����2���u��z�4�1LE�D��Et�<�>dVh��h�v��k2둏���3׀�"�q*�"#�ĉ(�|��ӧ����n=���f�M��]ϿjvͶ�4�vF�8�8{w:�����=�{������=n�v�����՛S�۱}h����w���v������Ss�����SC?�2Ͼ�����?��tx���ϚeI��L��i:{G�����Q��i��3�3j�P?<}�m��ӧ�l����(R�_�m{��~�|h֛vC~����~�e�[�ǧO�4�}_��m}
��Hd|�'N�܎��7���ߎ��G��n�_$=�4��|i���-].�0�b5�z�n�y&��X��������\?�Ԧ�2]�V���q�f�������>��o/�rу���o�ӡݵ��ӿ7�k�Ln~���v����/�Ɵ		:�-���~'X��F�Nh�Z��^�������n�%�,��q	�L���?�_9��'��n�i�E����^�ů�->��>���ϛ�usj���Z��N�`��ߎ&��(�U2��ߓmɎݝ��C�	���ݗK��`����^D��jŬ�_z�nj��w��z ii�jvQ�ם]�w�-F�`pn:�q| �a|�������~��-ȋ4������+b����V�u�Bg���ם]|��")����??������ӧ���r�_t��|�Ws�LG>ya$�?�7�n����>Է�<���~�����}/����z��}L�>��},�;6��mC?�+r¼"���D���q6|o�'R�<���`F�!F���'b�R��������C�͖�xO�y�������%��b�!?$�ϭBm��P�?��ne�Y������Þ<��|;�P���p/s�;Mx �]�������S��� [YD��jƻJ!ޔὦ��h�>�D���A��e���[:S�K�89��o�4��=܆}�z���P�%g��ރ���yU��u�}�W�ӉK�����w>��L(>Ƽ�O�]�i~B�<�o�����/
��F:
���ZȰk� �>�
���;ã�qNx���.�M���	<�>�������R��9��7����� �K��[�����`a���Q���]��~�H�౸vQ���q�̰�t�?��������W��d��mG3���f���q^o�#
�@_�,�z&�*Ea^ՐIe�J�FrX�����|!94�Ġ-�H�� ���S���霤�	'|#��$��lܵG5A�܇i�JB����4l����G�J����.狭f#y�܏��\�\κ�#��aK|�p!��ɥ(�V�>��`�!� /f�2��d�V����O	�W@������DA�m��9��LJ�G��{~�E���`,^x��9�g���}���?w�����X�oj�jM�}"���8[b0��z4��h�>�|32u�:^u7���GCz?�AV������3����׃��?#KNQ���"'�N�?>��#Ofw�NO�E�p2c
���F����92�¼�����?6��_r���sY�p���v�l=���/��2�����-�۫��m�L�գi#��9'�]d�Vʈ �z AgC3�E(�Jb��E"�G��L��_\-'�9$�F���*9.��3��ER"e8C>T���P����jQ�`�`��S������=�H�x7��~f��4����ǖ�Q)B�EJ\��PI7���7a�X7-��u��F#-h�r��لE�S.nwd�L3D׋�F�V!�Q9��0��"��Г�X�J����n�����dA~ez�k��'����7�"���V	�Y��}�o���
�0�C@�/{�p;��F'�V�%$3#1^���3���J���T�U��Pb��-ܥ�L�G�\n'���e�we�4a��3\\��-��M�j裺||�"]�svҗ[3����+��	�>�8�X� PjVs��h
�h �r����4D�U�S�q�*s*�~�A�^%~�#�Ҙ�: �<y�&~�V&�X��L�� ���e L�$Q&�%Q�/ ,@r`��+-O�. B�+���c�C��J-7���5 H6IZ`��_ω�J#�d�bg=b̽�ݘL����]��ӑ�'��0/��.�k��3Gf�xM-g/���D@X�d
��] (��`y��|�tg��aKm���"ꊢ|�I��į$�-�`J�N�w��O�R&����D�+d��z��m�p�� ��Jm;X�L���é��@n���ׇ{+�'�K�*}�(+.�L�صV���;k���FpÉ�\��=�~��"�n�:�����(v����H2�~Y(,.Y�E/x?��sD�p挰]���4orh^7�%Q���8%����2���9]X10�՚�~�oAW�J������~شk��\3c$��{��;槩�
�G�ц�l���0'��kV	��������� 6�i�pVG�W+���\`���xQ&~zN�.t]0�7$5h�T��Xަ�T�i���9LAsh�����N��y��,,2P���{��2,��U�F���OZ�{'�'�F�D��8���T�~X�*a�p�*���M�`M�ǖP�`So��Vz$��S��ւ]U���ʧH|�3�jRłH�
	Fɰw$T"\L}T��\��w6�����M#_}{x�~�������T���|�e6��m���:��F���$ժ#cu{�hD_]��V)Պ"c' %���H�Ѷ
�̠3�vlO���r[���iO�M����R`F�1xѥ�r�3z��УP����pD�������S�НLw����N��m����~#��rŜ(��Aq�M�R�4��ZI�� 4z���/�����a��Hu�rCW�y��~b�!��x�=��;�A�(�,��̻�|?Xi�H�T���͡���5H�Q0���	yMv��@���Ǉ-��V8y��l��3̏P�֣m���#?�kA�3���H���5���]��X@%,Hd�i�=�b~����O���k��9|�[����P�D�H�2�]
��uGl:��i��T�q���6�}/���iӾee�����Gd�\{����0.�sL�f��M9�h�;s/�'�iJ�4_�\�Q8���׈�F.��!wҟ�aCf���V�����N��1�^��7+����ff�+M���=c0&%i�bҎyUM�C�Ԍ�Vo��$K]ς(e�<���̨p^�%�E
jϮGF9>�e+O�p1�[�&�����r��1J�s�i����-�2�7(-�@_�ҷ�e���=[��|��U G�Ѡ	5X�aJ? ���$X��{�30<���S���'�"�L�{���s��b]i���L�`.���������K�<3���6�8����#9{������Rr��"���eg���,?g�i�@�&-s���.0�����oc�����ޭa���ݜ:�Tp��BD��F����+Lƈ��c�W~�cN^���9t@�����,�V��%�0$�X+'�y���Rd�O��NT.�&����Q�KM�Q�;Wb����� ����$矺���a.�#a4[�{�\���ft��bx���(,��Bz"�{�P�jQD�Wi�z�Z�K�5��^/�s�\�H>$�y(\Am��&�zTE2"4�l~;��5���X7FL�`Ք���D�"�B�r�`j�B��ȟ)Z����a��I�,�3H u��&kpiP�a3S�ib�X[���b�%�P$h�A��ȶ{(��l#`5{L��B�T�'�E�tg�� �O��J�ʮ_S-4���Ry7kʗ�Ae��bFp����j:@�WC2v� D2�Hn=�������U&�K9G��C`+�I&����K\����D�l�x=iD�|ĥ�o���URz���ût��W��}�ͩ�d���ӭB��t0S�
_h�)����VXh�2@i���1K=�a�m�3�&�Dh�a:Aa�)3���+l�kχ\��O!����A�8%�PoF�
M#F���.$h �ۋ"�5���٣ۘ��"ϰ.�b�D�/����Ȝ{%&�p���n%V�cƖ��[� �  F���]NCS`�BN�	��)ص�򘋵p�Lt{�4��fy9���'��Y�\.}R��Z]{_³�%���H��G�']D l�҄8����bXb#&t���q�^�"7���Vѥ������&���h��:M̰w��<����н�a^�L�rR�$�:��_T�;>��Z�̽�c�%���ТB��G�	4?��,P���A<���L���6Mv���C6` k_r[{�.Jp�������b�����=��O���H�����22L#��i��t�0�\j�Z���#���o��7��3�K1�MQ�}�߭�q{����6�>�o�`u?��Ǥ�e�Xi)�,#�j�(1o��T�\J�S�&(#i`t,�X4��'����0�#icC[��'w%- J�V��B�i�����4�V89h�NJ�&tE˚�~@W}��%��S3��~U�뤚j��f��s3�}ḻ��bJ�
-�?��քda4���zl�!+ǖ�L#�Vmiz���2/[��2��e�R�1@���f	˸�z'�n���Y�bh�}B�f�̑R���8���Ȳh�R�t��� ؅Db&�!�K�J*X:.uP���Ex)r�Nj�M0Š�Ci��<���),��p1�(KT��o�>ߢ�&Ϟb���gI��㲌�8U6��cL��C/���k�1C�C�p��yT�q�aBJ�)�կH1���fkE�8�`�ֲ�=,K�Q�D\�T��0T/��U�#G�$�T����\8����(��@?[m��Qb��?�̐]>OK��DG*%�j)1��I�c��VO�yL�+r$3���@�,pN
�6,��^c"�J$uq6��m��Š���Ҁ�|�Y��B\_��KXF#6��k�D���*S��ଔ)���[�5�&�ƕ�C J���]*
��b�n��Xlg�O�6e��20-fKk���҂QS��J'� ��i9n�+�8T��u�	+��"�6E����b�ܡM��H����tJ�в��C߲{h�^�s�ӫR$Hi�.W0/)P0�M�)2N�k�x��z��[Ͻ���2h�j�� ��C���,;@JK��2A&Zd���<�����1i�x��r�s�2nt�_DJ��n�6�j˱���[c�/w��(��k��5��ςˁ�ʲ���b�8 �r��p�)���t?J0A�<�J]��S��E���*<!�b2.�|��)�Q���;u�1�*Rx�?�Cbz��޶s8�e]�+�"�5�7��ɛ??�o<q��1V�A�k`��R�a�OY`�td�9�t(貌b=��L��oY�E��T�;�������e<O��H�A|�#��H��|��*WE{�4QJ�j�h�� ���Oz�"$�b���}J-�s޹�"-b��ѳA�=	�(�D��#�XOy6�l��7\z
v�%|
�e�gV���ӿw���P+-�#�+���J�v4Ҧ�Y��b	���<5jLx��,ջ���f���_�%��� ^L\L��y�c�Ȱ*M.>�L)��ŚZ��A���F����V���2�w\�@��fC���Oً�2&[q]U���#�`ӕqL��Bq_�͸a�B)1
K��`�sX[�C���v���<N��&t1t���O=��M=<�!n)}��#mā��Lĉ]�Vj��ӧ��`Wj���m����XN*��܄��I}V �_O�e��0�kA��U4%�9l����hI�|��'8F�N�+��;�GʨLg�e���H�� �:�N�KX�.6�F{�!��K)��m�`̨W��05���+�e=CI�� �!a:ݘ5]�?��n
��-�TX�
�U��v�P�IT2�
����)� :�Q�TG#�nL�@��@�P�l��t�J+aH+ä��J�$��P������.⨐ ��-@4���m굩YT��襟�b�(�&Qe��1���*|�ot� ���
��s	��r���u|�a�	�0'�2��۽���C4V'/Q4��'sY&�st�KH���ѻH���*�Ż��k�$�t�b,|�H%���X����?��~>����ޏr%�>K�{	�� [fU��
�Q��r25ا�fY%*��{$���Y�ip���G�� E�\�e�oT���s\|%�~u���YR���\�%A4� �T�x|�*�d���� ,ÕbO�Pc�4�Q�r(Kե��)�3��g6��@���V\Bi�K���׈ /U�?��v�F\�2X���Й9�[��������΄Ҳs��9��� +D��zz�X�'�E�UgKk�շ�f��2UQ��'/���:	�a$�9!Z��E�!x��_��S���4��$Wᜡ��+"�m��".t�ɹq{���Ǌ��|�,$ B�ງF��
GBn�LC$�^�����,5�@ߢ���b����H�-$~�i�s�_\;&�����}��X�-�_��hf��O�9j�$�^�m՜�8UG�%��Ji�'wMc�T���I8�rXM��������W)����(\ah��B�|�P	�WHf[�".U�k�%�^�=�bu�����@4���; q��� ����Ê�K�M�>����.�B����𮳩sH�9��t�.�u�}���F+��c]N���.�i���ߑ�(FM���:�Hn*VC0������6�ffHX������Rwt�J7r�;>z�`�qٲ2��h��u��hJ�$�`��!��!�h3��L��G�-'L�G���ӆ�1��Fv3
�Q/as�����#���'v�	�[ʪ�
	x&F��w��N"�qi5���&�"�m�.��L��L$
R���k��8�ɋLM�fV�۔���#�C*T�9��m".�P����F\E�d���E���$㺾��>��=���FC�zC����:g'��G���4�B�#���HN,����ou��]�(X3	�3�_x%�r:�M�(!�J!*E{�|��ŋ� �X��     