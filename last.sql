PGDMP     ;                    z            daosb294uf40u5     14.5 (Ubuntu 14.5-1.pgdg20.04+1)    14.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    public          wvkpdfzwyubihp    false    215   �       �           0    0    books_book_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.books_book_id_seq', 657, true);
          public          wvkpdfzwyubihp    false    216            [           2606    707535    books books_book_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_book_name_key UNIQUE (book_name);
 C   ALTER TABLE ONLY public.books DROP CONSTRAINT books_book_name_key;
       public            wvkpdfzwyubihp    false    215            ]           2606    707537    books books_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (book_id);
 :   ALTER TABLE ONLY public.books DROP CONSTRAINT books_pkey;
       public            wvkpdfzwyubihp    false    215            �      x��]ˎ�F�]����۲*�"�x����H��=��ǀl�j��jT�<h}Ȭ����F+���_7I��|Tfa@�W�a&##�ĉ(�����ɋ×�>y^��)���&�9|�.���f�!y^�������������=�k��?�~�f�z��VU�$�|����r_��k��kV�]�{v���>[U�}�}��7/6��s�U�������?�g��P_��N���|J����̷�������}��ܵ�u{���zx��^V[��ߓb:S�^Q�?T�zU��J�w��k�	��`W�R3�4-/�7˻&����j���\�z��.y�<l�����������>��P����۠��,��������C�ڀ;��p�e��i[�{���;ᐧ�!�lu�Ntпm>*����rv�w���p�L}�%���^׫zYo�(n+����Ӭ��[f��Y�Qg�-d�,�����i��i�kꡖͪ���.b ����uȨe��e��+Ql�ۂ�{�����˨B���jۼǂ���@NO�:- �t-_5+�$i����*.:m#!=8�=~�&?7�E�S����it�X��߶����,5A���ۚ�����f�@�,=�U8�D�>��,�u��R�ތ��71b��	k�
y:���K��S���k�*�Po4a�M����%j�3t-���*�q�NNXE��f�"�ќ77�ϛ�	Kh}��St	u׳v]Є��M:�Kis9�˩��A{-�ݸ{W�yn8W��,���z]��qb<8q����&FdJ��%������n-�$�R�k��Z������?&�����z!ܯ� �����_��S�e 3A����Q��ɶ5�_�h�d"��+��������L�Xқ+Hj�8���*�����L���	��w,I�$R�\�Ø]\�i��V������:Ҧm?���i-j��´�Uk�e�	��>|�/^����=���ͪ�o�u�N�����B��e��o�}�b����S�����`u�M��e����d.��1q�=-��;��&l���3G�i�5=b�ܻt{�<n�k�����7__y)��CG�/�w��;j"
�������l�~]�kz9_����mz�4�8�����Z�U�2�1�#'�$�}��vY�~����ڀ��]zcx��W�����Ϗ�^�����>�ڶ���Q�;���5�Aɢ���G�+2�\��'z�\=~z��]>~V���38�p>��θ�g8�gD��f٬7����T��f	�y��'v�{��ir4Z���{��E��%v,w������hyE��6-x��%?���@J������7�|�g�C��{�pә/\�LI��v_o�V��.QY����i��3��M/z���{���&���)>�;Knzcr�$�EDL��Lm�]3���%�u��v�Y$�M��X.sK��ҙ���E^6����m���{�N^{��[<���yu�k���S�������ǘMC<FF�h��	�<�o�����;4����T@�'Ø�%b��1N}@J���e��` �� wK�J7x<�6��A��\���� � )�Y��zl��-�v�x�~�:�޽KL�_�Ѡ>x .�-r�����p��O�����.(��S����f�!X����vI��w�t���7X�4�(Ea^Ր>e�|#9,�FF�Uz����Bb�R�ʌ�a����ӑ�N�F��Iá��Tܩ����>��XoT�$�G3ާ�����.׋�f-y��U:����+[���&H/E���X�:��q�D6u+J]�4艱��L.��(l��G�G@N*m.�� ��KW�9��¿	H���Y���loC���]u���#�`0A�uP�0��K㬨��ߋ��������M���C��Uw���{m\�^Nc0T0���5�$�3����Ι�o1�}Go*
�x����e�GNO�E!nRc���F���C�\Dy�Y'�u�~��c[� �0���fG�;jخ�u+�j�kg)�}Em���iӖ�\\5�6p��__Á˚0�������G�� �\"�b�0V���t��$��q�(��v�9��$���rF���"7�,���Y���%R�����F|d�PR����M�*8�T7$�Vf��4P�_�5��� D\���@@ݿJ��R͑ڒ�jX����쵰�̴Ԛ�fe`���^,h��:͵�0:�A��9� $a�Y��� �JR�\$�v��@��%�	�Q���&��n�"�����H6�UC� L����'���ؑBȡ��X.!���:3�b�>������� jY�52��p��G2�-ru��ϗ9�ّ9t`�Ƅ1~T:�piѲ�0�7Qc�Gu9����l���f	v�r��W�ɤI��	Q̧'�&\q��h�	t4�?9�P����*p(�8x�9��Odդ:�Ŏ�I΍At&������Z�}9Y4ӒE�c�"��ԓD&%�JM��^i�� �����Đ1͢�BH>)vP`��+���id�i��t$HH� _HyUv�}C��#�-���$�4 ���\$�b	iX�p��\�.@��-���
��(��雘��	dM.�
��]r��%�:���z�*7��xu��m�p�� ��<ku�nq4-YT�}����T�{*��@���|�$���۴�A��;k���Fm�N�.r������6#�k�J�{�X���ҁX�,S�L��E��>��5�26u�,���6��������hq�`<��ڪ�n#���m���J#�6Z�qß��W�+�l��g;�ծ��l�J�Æ~�����i�q��fC�mY��0�)�����B-pua����hw[Ģf:�I<hܚ}F���d��P�ϛ(�z`|gHz�.��()���R�@I���9���v�Zs	���G����dK�^�o�h�aXzӫ0�5s?^_�o�_����
�^�I�F�$�%���h��R-�7 ��`q�M�i�
S���-�2SRM\�+�"1�'�.�,�uu��`�>H�D�����W��/��;M�;|]�����n?$���}��#�B��G�Q��]o�X}t�ٸhm�k�iB�&0Vc#�H�U�(t�L+���0:JF�@2��Hڱ=��wj`ҩ�{�Ӟnߟ%t9���b0�3���np�a�G9S;?���[���d t'�-6�P.�-m�ƠL���.+�l)�
�*HE��?�L��� m�)i�� �W?� ��?�
H���7��]�n�(A�Vy"o�V[���\�o���f}�����^�{�d76	����=��ѹ]u��(E ��)�|��ڶlk7���
��yQ�8�êj!�m�����T@)$H�Y��"������}����z?��~x�����,����jq�usGM�S�ݹ��9
�� wW�,������>�����=�Dd[\;X�K�0.�mߣj�'9�h�;q/�'�IJ�0�r5RD�ؐ��O���0q�ڭ�ȃ����d�Z�<�=��ڲ�	|�`�}@+f�E�!�E�g\%e*�#ro�|T���fd��~ϣ̣(tj�(��<�mɧp>�u�3Pou=���[}����22!q.���N���Tx�Pv�A����n�&��ǽ����S)U
��2O��&�`���O�C ���(�b`xPT��:_'DEG�;e��9oK����i�:e氌;s�������M�!��1{�Ǔ�9&q{���n׋�{yXJ*���W�ѵ9��2X��S㝬H}�����Ȫ�,T��/p����rz�������ԁ����� ��W�Hv�j�r��E�N%��˜ZL���t@El�p˂`
��I�3`H$�6N�s?�19E���E��h�'*K]Boi���eF��K	�Y�/\pp��Kr��[H!^
	��bߑ��$G�/���4�i6׊��<��Kv��^��:��D�
�nf[��2֝�' QІe���>�u�
���#�RgM�/���!�hw�~�WjE�w{z\�xj	�)�e�%� ~  ��QN�A��G�#�"q��6/�8P�(j$N�Dd�K#Q@�{�q�p�yV$rs�P<�5�)+X�T�u�)��k�s/J�6Y.u�[k�����~IZ3�L3d�A�b���x�E���&�9����K ��~�q1�3X\��5��d�l�8<iLU2��b�wLa���(����Z���5�h�k�W(fg6�91���L�*ܙu�D��u��:cW�6�6Ud�.2��m��鈶��#���#C�޶_]��wa�ʐ�]�QL~Z}�2���s�:���4f�i.@� ���O�f2be���sk5o[�[���6�Np���� ̹s\���>�Sb�<�Y���(ad�� ��14�[t�	!���\<�fx=os�
�����]o��{�ON�hEJ���<k˿�O�v�m�c'��,��Ez>�-�bH]O��JHK�X��)Õ���(FL�Kc�H�Ox[1��G;9�MX�!M	�!�nYu��a�*#vy
�Qg�;eÌ��:å��;Je��\�����Q�8*��¡�_Vj�2�8�(���.�z��k�(P8��AG�%�Le�pgm�z�O��}�i��p�p�⹞�*����S=�@��dG��O�P�&�B�x2�̝��0��;�XIџ�}
�y�y����(�@��n�jۦ��h��{��w�Y��L5��Se�Xo)�,���'qmƴTVH�S�NS`t)�d(��S.*�B�<�I=M�˕tp����$g���JW�Z�� 0�+9��v����]݀�"��U!�Ia�·5>^U��	O�b>�_Y�cgc��qOa�V�a�X���
Y��s
K�U�5�a�Y,T-��am�F�>��-r���t�/G��йR��@��$�U�g�Jz�(z4c�F�_���ZJ5x�&��[Y� �������+	�]C$&�E�$ 9���h�w�+h"��#-�&��Ao�2_q�/��;^�&��CWb��|���4��nv�(K:���e��ٱQ+�`���z�{�^KƁZ��t]�ȃJ�vQJ䐯|C
)M6\(z}����}�a:���qC�I|�9��7��kXQe<l�K��~��\�E�S]�J����y�O4��f�Y�c���� �D��3I�ԙW-�q=d��H����90��
��e��Ȋ�G�8׆�]kL\A2gc�܆}Y��Z�(��Ϸ���(���a0Tg�.�c�'�1����!�jb�Wʌ�x�yl3tH�F�}!=��C���t��A;���-n�k��nC�0�p�bvm��ڨ���"3�+V&I�g=�FKj��D*�߁z�4��T�B���)W�Ū1�B�ꂁak	D����c6B��]1��X����פ@��u)���H�y����,�@fu�wU��n�4sk4םT�U��l6韇���=���5˞��B�hL���*�xN	{�]�c���H��%��MH�"�K�����AZ�XZ�݌��6�a��Z"��.���J��,�X�,�K��-u�('���BE�E�R`�Ay>��������9E���0��=P����s��������E'��	����r���g��9tY���\T퍘��e����S�n˓U�(c]D� ��,ev��?7:��)b��.�(�Г��*���-+��(��IS�_ݼo�fg�N��H�>|��لH��F:�$*��Dt�4OJ�j;���|	�Q���w�/B�@/�
�P�g��z�;�TdB�3zȹ� �	-'t�0�#�;��Q�g��gs�N��S�-�S�M�h2��x��z_�m+��z�>��a_��Fڔ0�qW���<�j@���z��T3롽;���q�����)����;�/�U�I���䷺XOCs^Q]��Jn �lp�p(�*S�ƌϽ��';��s�,�� $bS.�
�t`lz-����'��Y.�0�8���K�@�N�<����H��:�P*�S��{�	�C�:���#�~a#��pt[��GEGKq�0�o�W�W��j��3���`WQ�d�mD���(ƨfx6�[s�0#�J��	��&u-(���zl�[&8�#Z��y�_>i��3��a�	4�2'�#h�$�!I��8C)}@;g۟1��bwi��Q;o 4�b��4����jE1H�e����JX'��O��T���v�$t�wvB;]j�-TX�~���H���UvgM�qK2k
��)T�95H�HSG�xݘ$t�p�PUk��t�JJ*a
�E+%��RC9�r���kߐ ��*@�3���/���T�
號�b<�}�Qe��16��D*|�ot ����s	��
4t�ds|�_�)�0'U2�/۽��uC�T��&/Q4���rY&�rsd�3ȥ��}�ȥ�Q)�q�{�j�#�B�2	>J<�W�E,rt�_h�6�O�p��nHz�΍&i�,�>K{	�� [�U�s��f���e�O+�tZ�������e����
��D��E{�ײ�7��aA�9.�l��x�u��?�lk@HWfI�<� 5 �,?���1�.KO V�J���XV���Q[o(��K���QBgȱ#�l��#,G���<\Bi�>��ԗ� *���}�B#�@	�w�����u���5`E"�3���υ�t�'� ���,,�mQjPa�T ��p�uDBH��.��`���o&6F�\,�V���6����DE	F�<%�ӑX��J%��B-�ݻA���8!�E�B9�j�T�s��j<��߶}��8��������"z�ó@B>T��{PdT�� s��؃3�� {�Fn##�GPh���\�?|�v=r�,�Ѧ�S�M�~�qm��>5�����{,���fXtdW��j�|��@	�W�e[� �MTđ��Ih��6��c�X��5b{B	�W�΢9!�2UQ��J>%�^qYW�{�9S1���U����ֹ���*��R/�E)>�R����~ "_B��8��g �����m/a7�b��ENo�$!���]gS�:s,��x����u�M��Ў��o7K��
�0�Y��Q��f��:͐�T��fR��СI�Y��	gHX�Ӈ݇�RYt�r7��;>z�`�q������E�r8����NI��y�[쇏�0GK0�c���P[N6A�Gq%�c����f$R�P�� w����xb�� �%��ڪ� ��gd�yx�kh���V��j�)rJh�vf�6�D`"Q�B�G�_s��Ǎ.�#AA�^������n�
�ɍHl��G�Æ}a���݉��C�zC����19g�G��4��A�#���H�(��΢�ou�h]%X	�3.�R)%,�&U��{%U��=�bZ\�u�#yq���'�ip}���o^l�����$��~m���Z��������g����\BGc:�1�^�+�;̸���7O�<����     