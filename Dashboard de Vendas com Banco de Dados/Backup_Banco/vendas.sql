PGDMP                         y            vendas    13.2    13.2     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16394    vendas    DATABASE     f   CREATE DATABASE vendas WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE vendas;
                postgres    false            ?           0    0    DATABASE vendas    COMMENT     F   COMMENT ON DATABASE vendas IS 'Banco de dados do sistema de vendas.';
                   postgres    false    3015                        2615    16395    mkt    SCHEMA        CREATE SCHEMA mkt;
    DROP SCHEMA mkt;
                postgres    false            ?           0    0 
   SCHEMA mkt    COMMENT     .   COMMENT ON SCHEMA mkt IS 'schema de acessos';
                   postgres    false    6            ?            1259    24591    TB_DATA    TABLE     t   CREATE TABLE mkt."TB_DATA" (
    "DATA_COMPLETA" character varying(20) NOT NULL COLLATE pg_catalog."pt-BR-x-icu"
);
    DROP TABLE mkt."TB_DATA";
       mkt         heap    postgres    false    6            ?            1259    16399    TB_LOJA    TABLE     ?   CREATE TABLE mkt."TB_LOJA" (
    "ID_LOJA" character varying(20) NOT NULL,
    "CIDADE" character varying(20),
    "ESTADO" character varying(20)
);
    DROP TABLE mkt."TB_LOJA";
       mkt         heap    postgres    false    6            ?            1259    16404 
   TB_PRODUTO    TABLE     ?   CREATE TABLE mkt."TB_PRODUTO" (
    "ID_PRODUTO" character varying(20) NOT NULL,
    "NOME_PRODUTO" character varying(50),
    "CATEGORIA" character varying(20),
    "SEGMENTO" character varying(20),
    "MARCA" character varying(20)
);
    DROP TABLE mkt."TB_PRODUTO";
       mkt         heap    postgres    false    6            ?            1259    16424 	   TB_VENDAS    TABLE     ?   CREATE TABLE mkt."TB_VENDAS" (
    "ID_PRODUTO" character varying(20) NOT NULL,
    "ID_LOJA" character varying(20) NOT NULL,
    "ID_VENDEDOR" character varying(20) NOT NULL,
    "DATA_COMPLETA" date NOT NULL,
    "VALOR_VENDA" double precision
);
    DROP TABLE mkt."TB_VENDAS";
       mkt         heap    postgres    false    6            ?            1259    16414    TB_VENDEDOR    TABLE     ?   CREATE TABLE mkt."TB_VENDEDOR" (
    "ID_VENDEDOR" character varying(20) NOT NULL,
    "NOME" character varying(20),
    "SOBRENOME" character varying(20)
);
    DROP TABLE mkt."TB_VENDEDOR";
       mkt         heap    postgres    false    6            ?          0    24591    TB_DATA 
   TABLE DATA           1   COPY mkt."TB_DATA" ("DATA_COMPLETA") FROM stdin;
    mkt          postgres    false    205   ?       ?          0    16399    TB_LOJA 
   TABLE DATA           ?   COPY mkt."TB_LOJA" ("ID_LOJA", "CIDADE", "ESTADO") FROM stdin;
    mkt          postgres    false    201   ?       ?          0    16404 
   TB_PRODUTO 
   TABLE DATA           c   COPY mkt."TB_PRODUTO" ("ID_PRODUTO", "NOME_PRODUTO", "CATEGORIA", "SEGMENTO", "MARCA") FROM stdin;
    mkt          postgres    false    202   ?       ?          0    16424 	   TB_VENDAS 
   TABLE DATA           j   COPY mkt."TB_VENDAS" ("ID_PRODUTO", "ID_LOJA", "ID_VENDEDOR", "DATA_COMPLETA", "VALOR_VENDA") FROM stdin;
    mkt          postgres    false    204   ,        ?          0    16414    TB_VENDEDOR 
   TABLE DATA           H   COPY mkt."TB_VENDEDOR" ("ID_VENDEDOR", "NOME", "SOBRENOME") FROM stdin;
    mkt          postgres    false    203   S-       :           2606    24645    TB_DATA TB_DATA_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY mkt."TB_DATA"
    ADD CONSTRAINT "TB_DATA_pkey" PRIMARY KEY ("DATA_COMPLETA");
 ?   ALTER TABLE ONLY mkt."TB_DATA" DROP CONSTRAINT "TB_DATA_pkey";
       mkt            postgres    false    205            2           2606    16430    TB_LOJA TB_LOJA_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY mkt."TB_LOJA"
    ADD CONSTRAINT "TB_LOJA_pkey" PRIMARY KEY ("ID_LOJA");
 ?   ALTER TABLE ONLY mkt."TB_LOJA" DROP CONSTRAINT "TB_LOJA_pkey";
       mkt            postgres    false    201            4           2606    24603    TB_PRODUTO TB_PRODUTO_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY mkt."TB_PRODUTO"
    ADD CONSTRAINT "TB_PRODUTO_pkey" PRIMARY KEY ("ID_PRODUTO");
 E   ALTER TABLE ONLY mkt."TB_PRODUTO" DROP CONSTRAINT "TB_PRODUTO_pkey";
       mkt            postgres    false    202            8           2606    24639    TB_VENDAS TB_VENDAS_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY mkt."TB_VENDAS"
    ADD CONSTRAINT "TB_VENDAS_pkey" PRIMARY KEY ("ID_PRODUTO", "ID_LOJA", "ID_VENDEDOR", "DATA_COMPLETA");
 C   ALTER TABLE ONLY mkt."TB_VENDAS" DROP CONSTRAINT "TB_VENDAS_pkey";
       mkt            postgres    false    204    204    204    204            6           2606    16444    TB_VENDEDOR TB_VENDEDOR_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY mkt."TB_VENDEDOR"
    ADD CONSTRAINT "TB_VENDEDOR_pkey" PRIMARY KEY ("ID_VENDEDOR");
 G   ALTER TABLE ONLY mkt."TB_VENDEDOR" DROP CONSTRAINT "TB_VENDEDOR_pkey";
       mkt            postgres    false    203            ?     x?M?K?1ѽ3??3?s???9?hӊ/??@H?O??84߷???v???????y?y?O?D?>?.?\?ɐ'y?7?t?5w2M?ibc???Xl,6??????^^,????;?;h?&???I^}(???YG????+.Y??W??U?|u?G?~kD??ֈ2??(#ʈ2??(#ʈ2??? *?
??? *?
??? *?
??(#ʈ2??(#ʈ2??(#ʈ
??? *?
??? *?
??? *?
??? *?
????ߟ1??Xԁ      ?   ?   x???=N1???)|??$??2?PP$?K?hF?#??vRp?(5U???????{??gt???|f????[)VJ??ֱ??@o쓅????(L?ϯȷU??˽???OZ?k??v??%?]?{??ҠO,??m*????G?@c@?O¬?27莸? =?~????1?????Ǽ???u(\S??O??}j9N??n?|?iA??e`G??<?!> ?^?F      ?   c  x????r?6???S??!p/@`??9?$?g?f?膕ؔ-???:???????
5?DT?8??$?;#??`?\???A??/?8??v??S[=????œ??N?j???{????f??ӟ?v??.?N.>E4|D?#??#??0?G(???~S??#x/??Bx/??Bx/??|??N??4?Z~-?f??P???ψQ???ψQ???P~S]~??k?q????????3?????rz~9=??;?3ϗ_ϟ??{x/?E?????"?^ދ?W??W???i;U??P~?Q??B?AI?)G?E?>#?O9?O9?x/?)G?)G?)G???J?H_\???7{AJ??H?-??????z?(5#(?Y@?XY@i??J??J}?J??A?ԤR?HMn?ԥ?!(?Y ??ׅÀ⚐?gA???]DC/"{?,??=L?,?b??X??0`=(~n???Y ?A?0?????؊T??2 ML????v5&ޘ?ś?yQ? Wpl?Lݑ{?,???۰?!???!Rw?^C?d?eX?m??G??L?#??ږ?x???=%??a??<o??f\??=?/^??i|??z?n??f?t???*$p?!RxSs??p????????9????xd???FAα?9d?3t?Wr8AO'W???z?E??P?_?W?T???u,2??؀HH?6????&
i?Ms4w?l??{???Q?,D	D)D?5?Z??Z??XkFʌ-?'Y)&3???glA??؂2cȌ-?3?`t?؂?1c	???J	??JJ?'?{%%??Ž??+I??^I?{%???+)??d,?U ?
?W??*^«@x?"?U$???UW"?8E"?8E"?8E"?8E"?8E"?O"?Ok?8??dê_??:?Hh/7??7{????=??????Ȧ????m??????3?N???*1?O????Ô~?׺o?XK?J??`?F?55??fg??{dvR?,???v??a??`q?LMxe??q~M$??8?&???jR?@8????? ' ? ?@΃\r?/?}1?/?ŀ???b@_???k?U?W[???U??Z???uxﲎX+??5?????g?G?p?1???5?nx|?????^y?+OxՄ??n?퇯?_ֹ&b\?A΀?999r??}	?/B?Q??ћ???G??&D_??	?ׄ?kB?5!??}M??&D_??	?ׄ?kB?5??W?Y?O???lvt???ӡ?L?k??u?k?,?j?3??yr?z?3K??????L9:S??)?ϔ3??Z????????^????W?/??l?Pc????#XO??
vWP??
*?]A?+?`w쮠??T???
vWP??
&????WS?+?7?>?6o????և????|??T?t0?a??? ?%m?&a?,????Ÿ~_=??ꦾ?~<]<????Ma????>S??l?Ӹ??z?~???ql??)}?at??-5(j}??O?6?z.??.??.R? n??????!\t??cpU?C???ac??][??ؽ?
C%ݙ`??(\x???C???? F?}K???X?&??(????6	??DpQp?I`?բ????C-z?P?^:??Y?!?O?*\@???A|F?L?xyV?0u????|?????G??.???7???i??v?v???۴??P?????K????e6lXX?1?g???Gv?bwb??U???2?Nt???Π?EAAAEA??(AУ?x????Qs??>??|???l????="??c&{|?1?x???p????؀?0?~????ڛ?U?????FSm?Q????k?Q?oNC???4GGGq?????Vɒc?,9Vɒc???ցu??oNNN?`??Q      ?     x???M????ׯ?R" ?-?[o&?a?|?sXI)?Dux?6??I1? ???翿????I?????nM?G?$_??:?Sj?????Ît?}?
``?ߧ?0?0????Z??0_?yҮ?Y??WX.2{2_d??wo@?`??k,?D????????~L?ޤ?݃?i7?<w:.N<??x??)eq?7U???tc%?S?@??%??@?{?O?-/???^??ʳB???|Z?? Et???0????t???????!?&$????a??ާe???Q??TH
?O?|J??8i??8?m?[HRCoRH?????$?}?J??????Yvˌ$??Lz???#Y??j?	??H???[?hM??h??W@5??V?(;ϟ?????H?(>?_ARE?y??*???wPU????J?Ͽ? V0-??6}????>?M??s&{?C?ɧL?-??d?!??d?!??T?!??d	"?ʄ?????H?M????y????Ξ1?-???c???giؾcP?`?偳?:??d?s`?Y{b?_1???-\6wi'??(?X?<R???????X??3b??SH?'?;,?azZ3N1]?p!!????`$?2???????	???C????L\*b??k`H??BB?
??)?۸???V?Ѵh??|_?A,P??+`?
ë??V#;?g??n%^??ő
???*?1????j$²?(??f?G?>u???	??b?Eɽ1fCx???r`???պ??&_,dZ?8??/n]??}
?.^?!??>?????I???p?!j??z???h???F??W?M?@??:?'U?TČCጿv???[????.=b^??`? k??:?{????_?:[pJ???'?SV=?>?R??9b?SRMZ???ө0TA????A???IK????@+???#?
?4?8)? NT?>???65u? NS?I?#???&%TAPS??iT??c:*8Pa?vkZ ??Q??@S?i?/<Z?IS?? ?5=?.?E?(?5?U
b???bL?@ρ?ny?@w???ZSiT?5P????$Oq(?I?6?@???H?qF?$??V6?꟢s?_??6?Fb??'i?Ƽ??1?5U?"5?9fͤ?C^?P???o9I???????q}?/	??? k???+ݧJ?s5r????e?֓:7
?dS?????88?&ܞ??3|7?~mT9?&?e[=z?3x8??z??v?,??????F]?V???!?1GM???u??9??x?l??r?;?]??T)O ;??5?????????^Qk??Ji??.`wG!????wը?1????oK??d??#m2?i?!n???Ͷ???=??l?{n????R??????QM?g????m.
J?????c??.?K?%o???????*????r*??5?1?Z?G????????H?4?$rxF5}?????4??10?{X?????i?>?`??`$D^	?su7O?n?s?Ԁ8U2E~+H??"??#r??_i'?i_???9???9?^_j???%?G`_Z?/ϣ??u??,#.:??1/0	???T~??x;m=x?Qt?D?#=?y,?????9=Pc????S??~}#7??m+sm??j?|ѧO??Ր?J??-???????)lu??@?-?Fk?QX?0?Z????%??~O?%޴???@ɖ??i?5???????`TV???y,2ud??zG??0???Ae??T??i?QV????)R3*=?I??bRcL????PGi`?r???X ?cP???{?%?eP?K???E	so?-??=Iv[T!??H`???0?l<??!bc?C;Ry;ˡ???1??|X5????Gjn???h?;"???ֿ????pj??2
?Ȭx??ˈ?U?ģ?????x??F????2b??&\?????s֭?\fG??̊?cD?,]?A?QN?????K[?d	??`?)???/?ڦ
8??V?;k?ï??h}??[???$????1?X??a???# +r???n?s`??k?c???F?QP?w=OJ?{?d?r?K?0?+9M=?^??:???%'??Z???k??DE?U?ɉ??<BgUHNT?)?[bF)?זX???V??W????^U????h??J?>-M=??*????&M?h`??H??Q???&D՚y?????Q#;????_?9b?????D߰J;???f}
??????????w?0?|-?6c???3S??
?0}
/aeT?-???S???9xw-?s?X????GD??u(?eTΣ?J~5ס&}?V1M????????F?wը????Ή???:?n??R]?l(mX?G??9????-?ڎ??X???_L?X?=?r?X?G????mz/m???A??)???nNiD??:??U7??:NY?p??:?h???g???mƼA?2??ַ;????ұ???:GK?F;???I?????????	???a?6du??#?7Է????ˌ??M-,?S???4?@???r???&,???;L?1CL????ws??B-?]???-?!
?'1V??~?8??????y??_?=I?c?a?]?w??q?\?T?r 醕5??^=#??`?7W???j???????c?ďJ?S?r?4u??????a?
G??
CS?D?^R7Xݰ8:?????usv???F?olީ?c??e?Y?*L)S?)c?1???Lz??bwT}?\Tb??-J???Q?ΛH?}?k:*?^?Ι???K?y?R??Т?c>??g? ??L?z[G?M?Ǘ????Ζ???oΕ??l7??zк??;?p??󤣂?/???}??Z??oLg?3?o???????TwS}?}?W???6P?R?????IO???????2z[????QFO????????U)??r)j?k????????_??Ծ?p?y???~~??*1ՙ?wY?S??_???~???9R??_y*;??}??????k???q?k?K?ql%
?v$?q???o??`?P:?3?K3;???hGp???jGa*+??Sn??1eLu?%6[?c????W??&6[?????,?OJ:ʈ
?Lu8????tp?L@	?^@ۨ|3{?:?D???;????`?i??[Gw???פ#V&?޳#G??XG???F??XGi8c!jFCx?jR???P?(y???ڨx??ő????~???a????¹?WH?z??mu?
???<$ ????BnY??*6?*Y{???F??D?S?g??3tÛd?????,ȶw?yÄ????ab?c	???͂???=??
?M?=????=??Z??D??g?r???=;,P??=o?D	bo>[T??v?ь??}?0?@A??r?l????h???????????Z?%m      ?   ?   x?=?K
?@?o#?.?? ĸ7-ӄ?8=????s?b&??-^?ʬ= ??+ˋE?d?nq
Q(?????Jj9E????tG?F?mR?Agw?Kp*u@Au?n?P?z?.?Fχ??/?????3??!?B?0?{??xF?ږ??Ƙ/$9X     