PGDMP     /    6                z            daosb294uf40u5     14.5 (Ubuntu 14.5-1.pgdg20.04+1)    14.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    public          wvkpdfzwyubihp    false    215   �       �           0    0    books_book_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.books_book_id_seq', 725, true);
          public          wvkpdfzwyubihp    false    216            [           2606    707535    books books_book_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_book_name_key UNIQUE (book_name);
 C   ALTER TABLE ONLY public.books DROP CONSTRAINT books_book_name_key;
       public            wvkpdfzwyubihp    false    215            ]           2606    707537    books books_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (book_id);
 :   ALTER TABLE ONLY public.books DROP CONSTRAINT books_pkey;
       public            wvkpdfzwyubihp    false    215            �      x��]K��ȑ>����oKb��dq��B��c@{0j``�[*���ը*�B�!>�q��E'ݺ�m�,�#2���YX4����Ȉ��QN˫�=�6y��e��X��ir�������������n�~�ٮ����+����[W�����|��ny�����7�ͳ�a�,׌��ͶY�_���Yn������zw�l�������y��_𯲧�ۻ��7��_���ŕ��y��O��	�]=|�b��ļm�<~8N������nO�5��|x��]7{��I��o�Ye }Α~���\��{W�{ѰN�6�FH�F���Ջ��n9y��7�zR?}����ɋ��z��%���|����v��(W�?�)ho;I��������v����6��f6��=~�7�>4p�x�����@g6�\~4�w}�}5��y��u2��S�}�,���v�Y��e���or�id{�Vg1Vs�Xa�lUU*F�8�H��(�gA��r�^n��[��#!���C�%��%sj�F�Y,o.�퍤C�ݕj4�voa�_��9��c����9t ��Wˍq������B��NB�cd"�ǻ���ɏ��j�C�o��mt_�����߷���ST�PU�v�߈��������YZ���,����� ᡓ�����f��I�Wg���.�|T��K=ĩ�x��^e��m���6�b<�x��%v�<�}���Z$�73�徹�}���P!��)f�
m�Y��H���ФC�JJp&�i��A{�-=�G_�E�W@P�RɃ�2y�8/N�ų�I�ٟ�/���33�ܦ�$ɲ<(L#�ί����������v��� X�[�Oˏ?-�Oy6�!�]��
��b�o��!��2Οy�zl��5wf�5�\���XJ��f)����[w�����'��C�UW�0���o�k���hV\��6ѡm?��͇e+��+]:nZ�$�O�r�Lp�_���oX�c�n��,���v��<�{ݼ������8֨����;11���	��"��������4�l���5q�=-��;7BS���>���N4�NOئ�]~�E�9,W_ד׋�2�뫫 >t���7p�n��ED�W��w�7���n���cB��6�.� Nb,ORhg�=��a�UB��I�+���I.B�gP��47�����K4y�۾�<��c{֢�D&h+�z�e;>~�討�A��ޠɪ���G�+����������������qş��Q�����k�p���b:�v��v�i��M�����g��yFc� ���|O&�'���^���]d�%_c����x�h?�%�Z^�7�M>|Œ��F{ u��!�[.�J
��
����%ܼ
�K̈́�|v�������}`�д%*�X����}FSl~Ճh��V���Na7�a�8M�!�������˲!���є�A�ꌮ�,�x������=;�.R��;�+�V:Q;����e{��m��v�^�S�����5�?�.s�m�tn���n>�(9n�1Ng1��q����X	�������;4�����U�ͧ�X�5b��1�B@j��x0�Jx���F�5x�<�z;`U��KD߮�?��m{&�TTD�ێ�۸�I��o�o�X�кw���+��Gw�U�e᯿� �C�sh���n׋.@IF���`k;���`�s8L���A�3�e��Ҧ��E�2�������)a�72	�:���Д���Pgd �'�e�FG�f\8�)�'w�&]���Lƿ�aƆ|P��3�=��>5������\/�ͅfe���W����R�lU"[$ȃ�HGY�q��Ը*!�nŨ�Mz�if�5�����|$|���I�A0���puS�\���@��ݺ�w'{�z�iqh��t&���
z�4Ά����E؞v��ws�p��º?p���%mp����I+��'!W��oNBvƌ+�����T���˖?��\9=���ɝ�g�;
�g�R�"���n;y�h���o�e��T�h��'���ɺWeu����~�]��5ѡ����fm�X;������	��H��Q�œDh	 b�r��S+�f�:�U�"��r��C\�h�-���0^��7�3����>���#4T"լ�9����2������eghRW�)��#q��2+!������a)8�!�e�i�M��RH5GjK�w�*�h!ƫ�{a��Ԛ��:2����å�+ ��c��z�#I�3D�pj'���8A��vJa,/f'�Fi~���ߏx��d�?�W#�tQ}Ƀ8��Ǘ����cO
���Jc��f"���8���Jhޞ�U<F��X#�]��)zd�h���4pa�̣Ύ͡4&���a�����BG�E�A���#�jT�'����Z$ء�i37��L'M��Nd�b>;�4�g~�&Ϡ����%���V[��U�P�~��*K�ڟ�]����;�&%7Ѕ�}u�a����+ɢ�J�s�U��V/h'�\��&A4�Dhz����$W4b��ۉ!g�Ť��|R����Wz�{�X��^/��#Y@�"9�J�(��[�"���2
�CI#R������\h���v�%
�ʥ�pRB��r'I�~t�/sdM�EPׄv-[�֡���o�Ƕs��W_�#���o�ڜ�[�D����q����~k���4X���e�����h��w �&�J��I+)�&�V-���n��6�n��[�mt/�p��[:P�K=�D&�`�wz��5agl�p�Znߴ	���͂ۢ��N��&���;�mp�o&�Z�� ��V��������;۟?�ٮ����^��?8(�����V���h�1��F�xO�lzY��4)�P�>b�G]��ay���V�fQ3]T��f_P���=��tT��!
����y���5Đ�%Y���h�Ri����k�Tk?Z-�(X�Z�G��қA�Y������Bi
|�yJ��*T�uNz*d9,��}���$��1x�-SSX�O�2�Va�=��~K�̔@���J�h��M�fō��}���>H�$ECj����
q���n�.�����o�O^5����G�'�����'w��j��]'㪕�V҄֞�T��4"-��ҡ�*k+`ꔟ�ѳ%P`�� �94Fډ��'yR#�N�<���t������)n����U(����B�r�q~7ְN�'�@hN�Gl�F��F����A�2������*�vA-ɑ�s�$Zh$�3%ϱ6��Տ:�0��V)��S\�����mۉ��y䮢�B��IJ�ՁP�@�~�_�������3���2���&���ះ~u�7�o�(JQ�$�k
0?|ie[��������]�y1�q������u���qR[!A2�Ͳ����~�������v��~�vx����Y�7$�n����t�ػ{����H��W�z����^8[��|�<���l��K{I�ň�{ꚓ�C	6��OAܫ�)l��(��d7R��!OO��Ma��ڣ(ȃ�����;Z�<�/=y �ڦ�9��s@!������.��2���b>����d�/�̣,m��Ij���A�gp>�:�
�[�����?Q�%�^��8כ�繭�-I��,�"�A����n�!�J��_K�OA����*��J���{�QJ���~��'�%0���
(|bdx��2���r��F86>)���y�5]�͒6)��e�S57,^n�N�ؔ>⩚!��x���Zܾ=�{��Eݽ<"%���+��s�I�e�Z��'Y��6M���VȪ�,�v�+�?�P�����m��>õ�:�	��2�3�F
)"��do�F��۩4\a�S�v*I~@T�&pQS�=M��]"���2��1�))�OMP4?	��t�
p���kh-������s9�z���K �N�xYIɿt��4��А�)u���'yv�
�ɯg4�έM[�F�k�K4��޵廿�F�	/
%6����yr�[���ۧ�顠��8�0u֌!��^�𝌩?�b�^q����观=9i/]��    G�lJ'�Iez<ʩ�z����J�D��r��E8*1�I�)� Qg)b$
H�~���n�}�/�JDnμ�w��3����O5m�M��]�{Q����ľ���"�OM�k�5�>�l*�ӗ�����^LQ��r�e�4�%��R�Zݯ2.��~K6;��xm�� Q���j2�����D�^�cL0��k���F�];�BY!�����$M�nR���ȃe��U*z�B�6�7UD�.r�:�n6�[�Vܱ��:��ȑ��Ϋ+��.b^��_��KbX���pa�C�*�\k�0� )q?��9��LX٫�������������C��GTliw �Wb녒�����-Cĕ�%�$g>Ʀ�B��%!��]��W`7��S*��,�����bY�G���Ii0���W��oG�VzN��E(��iQ�Gұ�� ��u��WBF��b��Y��MdE1bMOxkl�֟��'|����Ǻ9RlX�.M��3`=��>%��5V�����bOʆ7u��J�(׹�z4��c���Q�8�AP�1�oZ[�2�:�$��hA��2Z�$
�%>g��#��e�2��L��VO�y����6�WQ�������Pi~Q�L��F ��/�!�X��6�kS��s�f���֬d��]|�{�ye���(��@��mW\�]�s��5�!��`�;�j6Ի��&6��8Q�Y4�O�ڜi�i�N�&aL�Ӥ���(�/f��,	�;�4�z �$����a\n�k���}ꂕ��7v��G����9u�AW��Ou�ɗ�*YOk�}Y��U����.�c��<vt6&x0���j�
+���U�?,N3��ڠ�����:`�j�wk�,�i�S��MN�5Ɣ�z�����+_	T{��䰊��a�Ї������t���8˯�T�'n��U�0�of4�1w%A�0Dc"��(c!������ -�n��/�4|��|�ޠ�C���ԗ�� �kK9CWc��l�t��m,�V�-7����]\a���iIvl�LH�������=k����#�l}��(�J�v��Qj�Ph���R�0l�P��Bf�f!z�a�AK$�!�&��9u�73�uh�X�8H�ٯ0�k	$Յu�a�vI8���f���|:��`��d-�ge�\�E�Ϋ�ʂYL�"Y��)�΁F�����=�����~.���5.��!���1E~˾+"�Q&���˝e�9��z,����u���Z�,YG�*{�=1��̿�Ǝ�t�y�:dR�n���ڥ��_���n�N�a�G�x������`z��RNm$�ژ����f��+U&I�G�ic%��da���F�w��mM�UT��R�=��u�j��R]00lj-��"e�8�cGW�1t����q��H�-E1�0/�s=�ŗ��n>ࡉ_ѭ�f~�溛j���U���<ĤǞ��gj�ޘ�:G�t�����r��v\}uғ>�0I��������� �t"���_��3�["��.��o�F��X���K0�-u�(��i1��z¼Vb=��~"S������{�p�VX���=��)�Q���v��*��6��;a���e�R6�&�7�������[�	��?-��e�*��k��W@ҷ����.��F�~�����r�T�If�b}M��U_�@}NKS^��on,f�Nj�H�>B��Q\$ɂ`+�DU��$Xt�OK�Z'��H��Y��i�`��ā^��T��J�\v��ʄВ3v�{� �	1+'t�0�#�]�v�(ʳ)���Ĥl�)�\K���l�d$��=.���1C=�BC�+�����f��*a����A`3��PC�`f���ff=�uѽ�G������O�K��赪-��T��´��4t�፮+�^� ��U[��8�{o�����=K�v�-b3�<��$Pf-��~�'n�].�0�8���K�@ �����P�fv(5IS�z�)�C�}8��J���I�����M�jm:Z����#׸�����9��V�����S��Q�Q&��lDpϕO��*I�$��&u	��T���[� �Wy$˛xoV����x�9��@�*s��FK�8��ƾ�LQ��'z����`]�.�5j���Z����R��v!�6:���0�]� �~ARg83����U��{z�8]j�	*�t�P��F$���54B��غ%�5�q|�v�yH�HSOʸ�fLkt�p&���4"����:��M8(,��/Y)�Ɣ:������D��q"z��:s��/�f����
�U�� ��ܫl:8�!Q�H�/���$�Z�q>Z���Xۜ\�kˬ̫+Y���Uɺ!�T�馫(�wp��I��<��)�R.1�]�R¨8�݇=ʭ쑵C�z�}�x��y���胿��`?���M��츽Mr�Y}�)�d� ӎ&ܹ	�^�
��~2J3��&��x4��rY�k;����]�����=�jQ�&|Xq��W�V� c^����Z��2"94� "Ԁz�����o��`��{��Oe�ƨs�qf��T5t�;b��f?"�
�%��5���J{Y�pi�qy\nP�+R�C�}�;1k;9�ߏb����f�Y\.�}�3���0Q���$��gwD_ �䅴H�?�h��_�R"	H�8Ѱ6��1� <�� �$�"cՃ)lP���r[�-N��Y;�A#�)���ef��i����V�c+'���R�n��C�6��i�1�GO&��27�\`j�/(����5Om��q�:�������%�Ң])���;}Ύ]daܝ;r��� ��o%��J�#������O���N~�C�%�!RfZ�<�!��h+�1�.d�#�S�'2��3@�8o��M��E�� ��Z�h �2q�jڠ��}��8VfbM8~Q���$_DP�&J��#]I�7�/k�*{=|0OM���� �d�:^��D���@C�gIh5@P�>�G*T�P; ��~ܮ��U}�h��,V����QSB��>�u2u��V��������u���}�z�߭ab*.H��UD)��5U���u���T��mZ��1�ʚY��������~mtD�]�G�v�G/��p�m�AN�����	_7j���JB��s�?|r�%Z��[W��5qs�z�9J�:3e4r�W�0B	���/V=z�9�����KB��ƙ �gd[{|����]����T3ٔxΦ
���3�7��d�$�_�ǯ`�8ig�k���\���5�����؇�6�i�G{P=��������1��p��G��t�6B�#��8�H�(�΢�u��[%ژ�;<�R)5p,.V�!J������Yy���&/�쏓ܹ����7/w���U�?��R�?|���$�m%�x��2�˜Kl�Cb�g:FӊCp�Ì�v���T�u����ߪ����S�V�0��� /<hn�K\l��/���:z؂�[[�<� �㩬ʑ#n��|�g��1'���Ɇ���#MT�-�L�E�U����L�Wm@;5P�"x�y8�S;%�<3�Y�@�H��^z ��9�(B���*��R��r���Wi���C)�F:����̸6PF��0��SyM�i�<��l�d^zw0���]�b�Ri�����V�6}uҋ�A�6��1���qz�4���A?'��Em�<��)�.P�u��	�=��ȶ:��w��=I�~d��U�􃉟�ݏ=�z��r� �� �_9��tƒ��,1�7��!������="�L?�j�Q|�z,��8��_�����]��_^�Es�R2�G�1J�L�C`46��kl�\�{����v�9ձ�_�vu8�O�aHO}~�U`'���`O���Q��ݻ~��#��~��V<z���W^�������f�r�?���15H�H!����I>'�*�̮gk�m��|&��H�O�\e��y�}$��;��;<�^eH{;9���L��@:S�9�㣲x5�]K�Ή)�*����� ����$ d  ҋ"��b����@�)�Q�}�����2�Q�9Z=�i�*�Lx��,^�������Z���6`��bB�����ȜH��#�����̰��G'F*��DZDwI)��4�Uq���\����G:H����Fn6��0�q��/##�6ŏ�S��u:b�G�#N��e䰣�-t�t�݋h��k��",��0�Ã%0�˲�hR�p
�#KS1����̱�W{&��'�q�8��O�Q*�G�Q�8eĄ{��p�[vnҽ����dn_�89��!��^y�*G\��<l\���l<M哉�×J���s)�C(�d��?�R�2�$`�Wܱ�E�y� ~��7��v��_     