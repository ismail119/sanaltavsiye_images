PGDMP     "                    z            daosb294uf40u5     14.5 (Ubuntu 14.5-1.pgdg20.04+1)    14.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    public          wvkpdfzwyubihp    false    215   �       �           0    0    books_book_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.books_book_id_seq', 752, true);
          public          wvkpdfzwyubihp    false    216            [           2606    707535    books books_book_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_book_name_key UNIQUE (book_name);
 C   ALTER TABLE ONLY public.books DROP CONSTRAINT books_book_name_key;
       public            wvkpdfzwyubihp    false    215            ]           2606    707537    books books_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (book_id);
 :   ALTER TABLE ONLY public.books DROP CONSTRAINT books_pkey;
       public            wvkpdfzwyubihp    false    215            �      x��]K��F�>�E�W�J�HX,���h�1�,�R�]�W����C�4����.:�����I����HfdVf�0�ܯ������/e^^�����ɋ������⏏�럮'��_�����W�����f�j������o]�r<��������w7O^�6O��M�\3V?=4�f}l~;,�/�g�in��7����Ms8.�O����n|οʞ�mo�{�����W�f�,{<�����.�N̛V�����8�yh���[�����O�u�����t����U�g��q�i���ʿw%�k��`7BR7�,���/׷�ɫf�i֓��+�C��N�/��ֻ_� o���7��}j��\���Q��t�I'IoI�x���m��Om���{��o޾o��;�g�!-d���l����`�����j<��y��v2�ᖹ�>k���b��,֋�2����7��4��z#���9j�0E��*�*#U�a�\j�� \l��Z/7KU�-�V��澺�q�nzɜګQl�ۂ�c{#�`w�M��[�엿`�C��X g�x��������ƸIZEv_���⪓���������~���|��[~]�,���'����w��U3T�_�Y�7�9>~�;��w���Y<���!�i1Hx�$dne"��S�����q��"U+�Gq�3��A��Wلzmq�c���>^C���Į�g���lz�����Dxm�o�c�7�3TH�n��B[x֪1R���24�Ъ��Iu�h�G�^�@�B��mQ8��E�T���L^'΋h��Sx����|<���>��2I�,
�Ⱥ����<|�0�q1�a�])�5 ����Ï��S�� 3A��_Z�~[L��P2�v�aө�<P=����;3�՚G��`Y,�I|�))����[w�����'�eC�UW�0��g��k���hV\��6ѡm?�����h���.7�x�^��h�}&�ү~��+V��Y�6��~�]n'�Z7���f�Qw�k�}�j����3Z���V�z���ӣ��4��\?��j�{Z0�wn����|T3G�h�����]~�E�9,W�_֓W��2�뫫 >t���7p�v��ED�W��v�7���n���cB��6�.� Nb,ORhg�=��a�UB��I�+���I.B�gP��4ם����K4y�۾����C{֢�D&h+�z�e;>|�討�A��ޠɪ����+s�^�����Fy�����~��ɸ����(���~_t�5R8�U_1����r�۴�ݦ�nvkxϳ��<�1\ ��I�Ǔ���vk/�K�.2㒯�K`}X�]����_-/�ߦ�`ɏ�g�=�:��׃�z%�v_���|	s�nV�¥fBX6����z��rX!4m��:�A�n��c���]� ڷ��n�S�My�5NS}w��<~cr�4F��"f4�b���:���;�B�L�}��yĞ�}�p3���f�+���_���=�C�up�s/�)�k�y��۟W��涏:7	_�O7�`����Y��(h�t?!V�'��f��@u�����)�m%t�p�)0(F�؀zt����1�^d�z��n^�O��X����k��cs�^�	 ���c�6nu������(�9��]b��ʁ;��qlY���0H�P��������P���*�*��b�.X����f�8`��)�2^ci�H��TG�T`c������V�BJh��A���32 ^��ʦ�FG�f\8�)�'w�&]���Lƿ�aƆ|P��3�9��>5������\/�ͅfe���W����R�lU"[$ȃ�HGY�q��Ը*!�nŨ�� =s�4��#�c)
���H��Y��5�҃`4wI��r�\����޷�u��N�������ܭ��L�c"��ii���{5��*�=�|�'���xمu�v��K��4C�V^OB�:!_���Wx���;�����-,��rz
.	q�9sϐw2���0E��v�j�����o�e��T�h�'���ɺWeu��ya?�.��������\\3�6p��]R_Á˚
��H��Q�œDh	 b�r��S+�f�:�U�"��r��C\�h�-���0^��7�3����>���#4T"լ�9���Ǧ%Ń�7��Ф��SnuG�
aeVBLgU���RpPS��K�P(��7�6J!��-I������F�e��Rk����4�_\�h�:+��0:��A��9�$a���Nb%)q�.�:�>X"^�Nx����5ѿ�0�1�.�F����qj�5�/;�?�ǞB���r)	�D,�9�q��	�м=�x��-��F���S��*h�W�i��l�G��C&hL��'��A��������6���G.�ը0O`G{e�H�C��fnd��N��)���|vi";��M6���'��jZm!�V�C�����,�?hwM�c��H蛔�4@���q�Zb��$�*+Y��9V)Z���$ruR���J���/��\ш!�Cl'��i�B�I�3�
;�_�M�McSМ�j�?�2��W�GA����!�HזQ���Hq�"7���\$�Bs���,Q��T.-�����v���;I���3}S�0���#��5�=��?�֡���m�Ƕs����_�#���o�ڜ�[�D����q��=���o�w�4X���e�����h��w �&�J��I+)�&�V-���n���6�ns�۶�J8��-(����s���,�N����$�ͼ.W���6��_�^p[�ڣթ���D�Vt�n�ͤU+�D�Ѫ���ؾ]yg��?��^���U��Ϙ`����
���8&y��(�I�M/�0��&�
�G,\����@=:,Or�ъ�,ja��J�A���
�Q��s��J}9D�6c �;c�c4o���`4��RV�$�Z��T*�v�^s�j�G����K�^�owh�a\z3�0�w7^_(#M��6Oi�Y�
Ԡ�I�A�,�%��o�T��Z8o�e*����*�h��#	�D�L	���py���(��tifQܨ� H	��J�P4�V��߿��w6������B+>�f�����e���Xy�Q�p��(;�lr�˨V�v2�Z�n%Mh�	L5�H#�B�):����N�i=[Fj �Cc��؞~�'52�T΃�iO7�����B�)���O]��,� �(�q�a��q~���d|�l��mDk���)����� [*�Bk�ђi>�N���AR:S�k�L^��s�h��9:�����ٶ�(A�E�*
.Dޝ�t�Z�)ү�������~F�zBfU���$�����~ï�����E)
��xM��ϭl�A��0��߰u��5/F?N�~Ӵ���n�R;N*b+$H�Y���br��o�����n�����6���a#K�F���m5������"9��^��<5���ߕ��{��Ζ�ds�"��$!��;��^R�q1�����d�P�MƱ�Sw�x
�d$
��FJ�!6d��	x�)L�P{y�A���܂Bt'Ck���G d[[޽0���9�b
,����*-S!�{+�-o�/hA�����<��֭���Y:ԑ|�C�c�@�ի�LM��P�5X��Ց)�s��{��ْ���R *b��
���R��8��T�T��J�2X���y*ว5�\�7�xr\9��V@�#ÃM�a}]���h4±�I�,vΛخ�"m��I�,���ܰx�ez8cS�d�s5C,���$q���}}��n7��{yDJ*}�WhF7氓�� ��O�O�b%�m������U�Y��FWp��v%���L�%|�G"d�@&胚� ��7RHI�x%{�5�%�N��
˜�SI��25�㈲ ��@�`�i���i����<�YLI� }j���QP4�U�K�]Ck�h�eF���ֳ�\pt��JJ��S$�/��D�L�cd�<ɳ�W�M~=�Y>�6m�y��/�<_{ז����$�(�،Zj�2���S�(hݲ�o��>HE\��ɨ�f��*��dL�A�[��s��Fo@?��I{�u<    dS:�N*Ӌ�QN�ԃ���W*%����/¹P��H�NI�:K#Q@�{�u`,pS�}	V"rs�P�T�ɔ�~�iSl�d�Z�ދ:x�M^h��֚�|?5ݯ�֌�,�\ �/'hKq[G)���,��˂iLK� ��_e\܅��lv�=��ڢ��<mM�d�#��ߊ;�\ǘ`~�9ך��#�N�vZ��B8��ɉI��ݤ����'�4?��T� m�?n���]��/u^�l����c��ub��#MO�WW`�]ļ2$����)���>�bE�����Uع�, a�% R�~��9��LX٫�������������C��GTliw �Wb녒�����-Cĕ�%�$g>Ʀ�B��%!��]��W`7��S*��,�����bY�G���Ii0��.:�
Iߎ����XËP$���h� �cK�A��)�_	ɚ�U:g�6�ň5=᭱iZ���b����H�a	�4	Z`΀�Ț��g�X�+S؂:�=)f4���Z(��L���ࢎ=�F9 �A�Ǵ���Re�uPIVAтH;e�

I�K|���Gj%�\e�S3��Z=9�7@��^|�\eDY2ד~�B��E]2�c$
O���cm�ڈ��M)��0�=�j㝭Y��?��(���ʲ�	RQ�����ۮ�l����k�C��*b�w��l�wόMlj�q�4�4h��Ƶ9�Ry�N�&aL�Ӥ���(�/f��,	�;�4�z �$����a\n�i���}ꂕ��7v��G����9u�AW��Ou�ɗ�*YOk�}Y��U����.�c��<vt6&x0���j�
+���U�?,N3��ڠ�����:`�j�wk�,�i�S��MN�5Ɣ�z�����+_	T{��d����a�Ї�����{>��E���R��7Y��
ȪF��73ɘ�� Z�1�gt���JV��im��|7dM��"�%�ǰ7h�P�+-��x'�����R���د0�&]{yD˥Ua��.�eiW��"zZ�m ��+����r��k)80ǈ;[�F�4J����x�9ھ���.[.���P��Y�^i�M�%ܐu_�:d���:4j��M$��W�͵
��ºİj�$�W�F3bkf��6,�\��%�,�����y5��`�æ�,�Ɓ�k��#�
I�X�ȊE�GA?�B���WƐ��Ř"�e_��(c���β�ň^=C�pF�2��y��#V��=ߞ�bd��3c�R��<�2�Q7_��?����;�~�ہ�|X�7��5pc��s2�^���Sɭ6��F��a�*�J�I��w�XIm7YXid�Q�if�@S9o�,�|�dw]���/�T�ZK��HYF8�#�a��J0��Bu;_8��)·��#�#�%t.�ǰ��!��<4�+���o�\wSR9���������3���5��CMQ�SA�H��`�R΢ێ��Nzҧ"��B��@#R�T�~���N�����ۂ2v�uK$�Х�����7}K�us	���n����"-�RQO���J�gP�Od�9����A}O��
k֒��2%`:�"P�cюc�_���&4r'����l�A���d��&rմ17s�6a����۽LV��|�um�
H�f�TP@������b �O�b4YΖ
;�,CY���?�ꋚ���ii�ϫ��͌���I���G�:<��$Yl��H�ʞ��.�V�i	T�D�i_<k��=��8�Gc|(�3�R=��d�2!�䌝 �;�pB��	]�,L�h��#��l
�l.1)[{
4�>8$ۃ&��m���}c�PO0������ $�����J���$}��a:Ԑ*��q�#3�ۺ��^�#�́]M<O�K��赪-��T��´��4t�፮+�^� ��U[�ژ˽7���Ni킞�W;Ȇ��l��?t`(���{?�7��.��C�iB��%A ���
�@lm(33�����)��Δ�!�>�U%W��(V�]��&v��6��m��¿�k�X^Y���v+O�VQ�d�)M���(Ǩf|6"��ʧÌM*I�$��&u	��T���[� �Wy$˛xoV����x�9��@�*s��FK�8��ƾ�LQ��'z��sX��N�F���bs-�~OG��@�P��Yfk��V�uF� �3��l|�*�]���1N��i�
+�/Tp��am́��)�nIgMa�2��~^5�ԓ2�����I��5�H��r�N*e
k�KVJ�1��r<t8�x5��}C���� ���G|�˺Y��@�����l��1@�3�*��sH�$R�K}m� ID��pA��ÅV���3�6'����2���J��e�wU�nH'�#�t�U��q�;�|ԤQn�lq��K�oW��0*n�a�2+{d�Py4��>j<RмE�s��_Z���L��EHv�ރ&�߬���{2�E��iG�܄{�YL\�� ���jq�}<XG�,�ҵ�@X�.�K�A���k�(�F>,��D��+}�1�d�ME�a	L�yj@
�E��\h����uY{��V�=u৲RcT�9zÀ83MZ���:G�1fc�`���J��	��,��4��<.7��)á��>���������G�VYv�}��,.���>�)���0Q���$��gwD_ �䅴H�?�h��_�R"	H�8Ѱ6��1� <�� �$�"cՃ)lP���r[�-N��Y;�A#�)�����D	V�<f�ӭX�VN%�?�%��ݒ!x��m��>c.��Lv;:ef¹��8^PLC�k"�m��q�:������d%�Ң])���;}Ύ]daܝ;r��� ��o%��J�#������O���N~�C�%�!RfZ�<�!��h+�1�.d�#�S�'2��3@�8o��M��E�� ��Z�h ��&��[�4�AI)�R�q��Ěp���3(I����L�rkG��Vn�_��U�z�`�M���� �d�:^��D���@C�gIh5@P�>�G*T�P; ��~ܮo�U}�h�]/V����QSB��>�v2u��V���W����u���]�z�߭ab*.H��UD)��5U���u���T��mZ��1�ʚY����}���nmtD�]�G�v�G/��p�m>��T�-��n�Mᕄ:��!&~��K�C;����5qs�z�9J�:3e4r�W�0B	���/V=z�9�����KB��ƙ �gd[{|����]����T3ٔxΦ
���3�7��d�$�_�ǯ`�8ig�k���\���5�����؇�&�i�G{P=��������1��p��G��t�6B�#��8�H�(�΢�u��[%ژ�;<�R)5p,.V�!J������Yyu����'/�?�ܹ�����/v��s�U�=��R�����$�i%�x��2�˜Kl�Cb�f:FӊCp�Ì�v�U~�޺�{��o�O��[ũz+hOY��47�%�?6����J�=lA��?��-OO���TV��7AG>�p��`V�d�pE葦���P��"�*�uv���6��(h��<ک�� m>5�Y�@�H��^z ��9�(B���*��R��2���Wi���C)�F:����̸6PF��0��SyM�i�<��l�d]zw0���]�b�Ri������V�6}uҋ�A�6��1���qz�4���A?'��Em�<��)�.P�u��	�=��ȶ:��w��=I�~d��U�􃉟�ݏ=�z��r� �� �_9��tƒ��,1�7��!������="��~�=����&�X��qlc������� �翼��暥d>��c��!��C`46��kl�\�{����v�9ձ�_�zu8�O�aHO}~�U`'���`O���Q��ݻ~��#��~��V<z���W^�������f�b�?���15H�H!����I>'�j:5���s��ע�J"��>!s5e&�K�#��ޡ����j����S��9��y
�����5�Ps�е�뜘b��3����z!"9�D@ D  zQմ�j�16Pb�`&A����"��yTa��G�dڠ�V&<t	�4^�������Z���m��ń9��9�jZ�8��b�0�NW���i�%���HpW1�i�Dr�{F4^�}�T 5�O�;��h��(r�QB�'���||��h?�Oi�/b��LL�Uŏ8Yv��Î�нӱ
t/��b���n��D�à��/˖�I��y(@�,M��O3��_�h64H:���E��>Y�F�L1G��)��9nٹI�*C�2Z��}��(ۇ{噫qEF�qA�ʲ�4�O&6C�_*�#�ϥ����)
�lJ�!N�В�y^q�r��}hF ����ߜ�hF���ϙ�,�@���G�
o��@:	s�9���.p�>�ͬ6AZbI1�d�rh =��Om���G�X������É�.��$�F(I��M�c�v\�K��:�Y�9	x��\�������X�u��K. G�{��ya��X�|��g#�,E��T(�1Mm�F����],(9-���W4Ըc4�%E�Z�"��[��2#A�{�L�q�he�	��9�ȹ��l��O��J�<�0�>�AK�?Y��e��tO8�'6B��ȹ{FOn#8�ؗ�uYI��@3�N�b�x\�F������<���,���i���L�z�s�4��aY����i�!1��|��3$CeRbt��A�L"c�=LB�T���x\�K^��kNIƘ;I~@�YS�,j
�]^a�G
�@��>�����7+~�n�N�@,�C�y����;�����9[��������O�����!#     