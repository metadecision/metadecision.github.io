FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � �
	Stop a task, calculate elapsed time by start time and elapsed history time.
	
	by Jianhua Zhang
	
	Copyright � 2015, Jianhua Zhang
	
	All rights reserved.
	
	version 0.1: Original release
     � 	 	| 
 	 S t o p   a   t a s k ,   c a l c u l a t e   e l a p s e d   t i m e   b y   s t a r t   t i m e   a n d   e l a p s e d   h i s t o r y   t i m e . 
 	 
 	 b y   J i a n h u a   Z h a n g 
 	 
 	 C o p y r i g h t   �   2 0 1 5 ,   J i a n h u a   Z h a n g 
 	 
 	 A l l   r i g h t s   r e s e r v e d . 
 	 
 	 v e r s i o n   0 . 1 :   O r i g i n a l   r e l e a s e 
   
  
 l     ��������  ��  ��        j     �� �� "0 scriptsuitename scriptSuiteName  m        �   " O m n i F o c u s   S c r i p t s      l     ��  ��    � � Delete the property define of dateOri, then uncomment the next line and save to set the proper date string of your datetime setting     �     D e l e t e   t h e   p r o p e r t y   d e f i n e   o f   d a t e O r i ,   t h e n   u n c o m m e n t   t h e   n e x t   l i n e   a n d   s a v e   t o   s e t   t h e   p r o p e r   d a t e   s t r i n g   o f   y o u r   d a t e t i m e   s e t t i n g      l     ��  ��    + % property dateOri : date "01-01-2000"     �   J   p r o p e r t y   d a t e O r i   :   d a t e   " 0 1 - 0 1 - 2 0 0 0 "      j    �� �� 0 dateori dateOri  m       ldt     ���        l     ��������  ��  ��      ! " ! l     #���� # r      $ % $ m     ��
�� 
msng % o      ���� 0 	itemtitle 	itemTitle��  ��   "  & ' & l    (���� ( r     ) * ) m    ��
�� 
msng * o      ���� 0 elapsedtime elapsedTime��  ��   '  + , + l     ��������  ��  ��   ,  - . - l  � /���� / O   � 0 1 0 O   � 2 3 2 O   � 4 5 4 l  � 6 7 8 6 k   � 9 9  : ; : r    # < = < n    ! > ? > 1    !��
�� 
valL ? 2    ��
�� 
OTst = o      ���� $0 theselecteditems theSelectedItems ;  @ A @ Z   $ < B C���� B l  $ + D���� D A   $ + E F E l  $ ) G���� G I  $ )�� H��
�� .corecnte****       **** H o   $ %���� $0 theselecteditems theSelectedItems��  ��  ��   F m   ) *���� ��  ��   C k   . 8 I I  J K J I  . 5�� L M
�� .sysodisAaleR        TEXT L m   . / N N � O O L Y o u   m u s t   f i r s t   s e l e c t   a n   i t e m   t o   s t o p ! M �� P��
�� 
as A P m   0 1��
�� EAlTwarN��   K  Q�� Q L   6 8����  ��  ��  ��   A  R S R Z   = U T U���� T l  = D V���� V ?   = D W X W l  = B Y���� Y I  = B�� Z��
�� .corecnte****       **** Z o   = >���� $0 theselecteditems theSelectedItems��  ��  ��   X m   B C���� ��  ��   U k   G Q [ [  \ ] \ I  G N�� ^ _
�� .sysodisAaleR        TEXT ^ m   G H ` ` � a a L Y o u   c a n n o t   s e l e c t   m u l t i   i t e m s   t o   s t o p ! _ �� b��
�� 
as A b m   I J��
�� EAlTwarN��   ]  c�� c L   O Q����  ��  ��  ��   S  d e d l  V V��������  ��  ��   e  f g f l  V V��������  ��  ��   g  h i h l  V V��������  ��  ��   i  j k j X   V} l�� m l k   jx n n  o p o r   j q q r q n   j o s t s 1   k o��
�� 
pnam t o   j k���� 0 anitem anItem r o      ���� 0 	itemtitle 	itemTitle p  u v u l  r r�� w x��   w I C Task cannot stop if the first word is not "#Ongoing:"(not started)    x � y y �   T a s k   c a n n o t   s t o p   i f   t h e   f i r s t   w o r d   i s   n o t   " # O n g o i n g : " ( n o t   s t a r t e d ) v  z { z Z   r � | }���� | H   r x ~ ~ C   r w  �  o   r s���� 0 	itemtitle 	itemTitle � m   s v � � � � �  # O n g o i n g : } k   { � � �  � � � I  { ��� � �
�� .sysodisAaleR        TEXT � m   { ~ � � � � � F Y o u   c a n n o t   s t o p   a   t a s k   n o t   s t a r t e d ! � �� ���
�� 
as A � m    ���
�� EAlTwarN��   �  ��� � L   � �����  ��  ��  ��   {  � � � r   � � � � � n   � � � � � 1   � ���
�� 
FCno � o   � ����� 0 anitem anItem � o      ���� 0 notetext noteText �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   is time string existed?    � � � � 0   i s   t i m e   s t r i n g   e x i s t e d ? �  � � � Z   � � ��� � � A   � � � � � l  � � ����� � I  � ��� ���
�� .corecnte****       **** � n   � � � � � 2  � ���
�� 
cwor � o   � ����� 0 notetext noteText��  ��  ��   � m   � �����  � k   � � � �  � � � I  � ��� � �
�� .sysodisAaleR        TEXT � m   � � � � � � � Z S t a r t e d   t a s t   b u t   n o   T I M E _ S T R I N G   i n   n o t e   t e x t ! � �� ���
�� 
as A � m   � ���
�� EAlTwarN��   �  ��� � L   � �����  ��  ��   � k   � � �  � � � r   � � � � � c   � � � � � l  � � ����� � n   � � � � � 7   � ��� � �
�� 
cobj � 4   � ��� �
�� 
cwor � m   � ������� � 4   � ��� �
�� 
cwor � m   � ������� � o   � ����� 0 notetext noteText��  ��   � m   � ���
�� 
ctxt � o      ���� 0 
lastendstr 
lastEndStr �  � � � r   � � � � � c   � � � � � l  � � ����� � n   � � � � � 7   � ��� � �
�� 
cobj � 4   � ��� �
�� 
cwor � m   � ������� � 4   � ��� �
�� 
cwor � m   � ������� � o   � ����� 0 notetext noteText��  ��   � m   � ���
�� 
ctxt � o      ���� 0 lastbeginstr lastBeginStr �  � � � l  � ���������  ��  ��   �  ��� � Z   � � ���~ � G   � � � � >  � � � � � o   � ��}�} 0 
lastendstr 
lastEndStr � m   � � � � � � �  T E n d � >  � � � o  �|�| 0 lastbeginstr lastBeginStr � m   � � � � �  T B e g i n � k   � �  � � � I �{ � �
�{ .sysodisAaleR        TEXT � m   � � � � � Z S t a r t e d   t a s t   b u t   n o   T I M E _ S T R I N G   i n   n o t e   t e x t ! � �z ��y
�z 
as A � m  �x
�x EAlTwarN�y   �  ��w � L  �v�v  �w  �  �~  ��   �  � � � l   �u�t�s�u  �t  �s   �  � � � r   4 � � � n   0 � � � 7  !0�r � �
�r 
cobj � 4  ',�q �
�q 
cwor � m  *+�p�p  � m  -/�o�o�� � o   !�n�n 0 	itemtitle 	itemTitle � o      �m�m 0 	stoptitle 	stopTitle �  � � � r  5B � � � c  5< � � � o  58�l�l 0 	stoptitle 	stopTitle � m  8;�k
�k 
ctxt � n       � � � 1  =A�j
�j 
pnam � o  <=�i�i 0 anitem anItem �  � � � l CC�h�g�f�h  �g  �f   �  � � � l CC�e � ��e   � ? 9---------------------------------------------------------    � � � � r - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - �  � � � l CC�d � ��d   � - ' calculate the elapsed time of the task    � � � � N   c a l c u l a t e   t h e   e l a p s e d   t i m e   o f   t h e   t a s k �  �  � r  CJ o  CF�c�c 0 notetext noteText o      �b�b 0 orinote oriNote   r  KR m  KN �   o      �a�a 0 
newtimestr 
newTimeStr 	
	 Z  Sd�` ?  Sb l S^�_�^ I S^�]�\
�] .corecnte****       **** n  SZ 2 VZ�[
�[ 
cwor o  SV�Z�Z 0 notetext noteText�\  �_  �^   m  ^a�Y�Y  k  ed  r  e� c  e� l e|�X�W n  e| 7  h|�V
�V 
cobj 4  ns�U 
�U 
cwor  m  qr�T�T  4  t{�S!
�S 
cwor! m  wz�R�R�� o  eh�Q�Q 0 notetext noteText�X  �W   m  |�P
�P 
ctxt o      �O�O 0 orinote oriNote "#" r  ��$%$ c  ��&'& l ��(�N�M( n  ��)*) 7  ���L+,
�L 
cobj+ 4  ���K-
�K 
cwor- m  ���J�J��, 4  ���I.
�I 
cwor. m  ���H�H��* o  ���G�G 0 notetext noteText�N  �M  ' m  ���F
�F 
ctxt% o      �E�E 0 timestr timeStr# /0/ l ���D�C�B�D  �C  �B  0 121 r  ��343 n  ��565 7  ���A78
�A 
cobj7 4  ���@9
�@ 
cwor9 m  ���?�?��8 4  ���>:
�> 
cwor: m  ���=�=��6 o  ���<�< 0 timestr timeStr4 o      �;�; 0 	starttime 	startTime2 ;<; r  ��=>= c  ��?@? l ��A�:�9A \  ��BCB l ��D�8�7D I ���6�5�4
�6 .misccurdldt    ��� null�5  �4  �8  �7  C o  ���3�3 0 dateori dateOri�:  �9  @ m  ���2
�2 
ctxt> o      �1�1 0 endtime endTime< EFE r  ��GHG l ��I�0�/I c  ��JKJ l ��L�.�-L c  ��MNM l ��O�,�+O n  ��PQP 7  ���*RS
�* 
cobjR 4  ���)T
�) 
cworT m  ���(�(��S 4  ���'U
�' 
cworU m  ���&�&��Q o  ���%�% 0 timestr timeStr�,  �+  N m  ���$
�$ 
ctxt�.  �-  K m  ���#
�# 
nmbr�0  �/  H o      �"�" 0 elapsedtime elapsedTimeF VWV r  �XYX l �Z�!� Z \  �[\[ l �]��] c  �^_^ l �`��` c  �aba o  ���� 0 endtime endTimeb m  ��
� 
ctxt�  �  _ m  �
� 
nmbr�  �  \ l c��c c  ded l f��f c  ghg o  	�� 0 	starttime 	startTimeh m  	�
� 
ctxt�  �  e m  �
� 
nmbr�  �  �!  �   Y o      �� *0 elapsedtimethistime elapsedTimeThisTimeW iji l ����  �  �  j klk r  0mnm n  ,opo 7  ,�qr
� 
cobjq 4   %�s
� 
cwors m  #$�� r 4  &+�
t
�
 
cwort m  )*�	�	 p o  �� 0 timestr timeStrn o      �� 0 prefixtimestr prefixTimeStrl uvu r  1Jwxw n  1Fyzy 7  4F�{|
� 
cobj{ 4  :?�}
� 
cwor} m  =>����| 4  @E�~
� 
cwor~ m  CD����z o  14�� 0 timestr timeStrx o      � �   0 postfixtimestr postfixTimeStrv �� r  Kd��� b  K`��� b  K\��� b  KX��� b  KR��� o  KN���� 0 prefixtimestr prefixTimeStr� m  NQ�� ���   � [  RW��� o  RS���� 0 elapsedtime elapsedTime� o  SV���� *0 elapsedtimethistime elapsedTimeThisTime� m  X[�� ���    0  � o  \_����  0 postfixtimestr postfixTimeStr� o      ���� 0 
newtimestr 
newTimeStr��   ��� =  gv��� l gr������ I gr�����
�� .corecnte****       ****� n  gn��� 2 jn��
�� 
cwor� o  gj���� 0 notetext noteText��  ��  ��  � m  ru���� � ���� k  y`�� ��� r  y���� m  y|�� ���  � o      ���� 0 orinote oriNote� ��� r  ����� c  ����� l �������� n  ����� 7  ������
�� 
cobj� 4  �����
�� 
cwor� m  ��������� 4  �����
�� 
cwor� m  ��������� o  ������ 0 notetext noteText��  ��  � m  ����
�� 
ctxt� o      ���� 0 timestr timeStr� ��� l ����������  ��  ��  � ��� r  ����� n  ����� 7  ������
�� 
cobj� 4  �����
�� 
cwor� m  ��������� 4  �����
�� 
cwor� m  ��������� o  ������ 0 timestr timeStr� o      ���� 0 	starttime 	startTime� ��� r  ����� c  ����� l �������� \  ����� l �������� I ��������
�� .misccurdldt    ��� null��  ��  ��  ��  � o  ������ 0 dateori dateOri��  ��  � m  ����
�� 
ctxt� o      ���� 0 endtime endTime� ��� r  ����� l �������� c  ����� l �������� c  ����� l �������� n  ����� 7  ������
�� 
cobj� 4  �����
�� 
cwor� m  ��������� 4  �����
�� 
cwor� m  ��������� o  ������ 0 timestr timeStr��  ��  � m  ����
�� 
ctxt��  ��  � m  ����
�� 
nmbr��  ��  � o      ���� 0 elapsedtime elapsedTime� ��� r  ���� l ������� \  ���� l ������� c  ���� l �������� c  ����� o  ������ 0 endtime endTime� m  ����
�� 
ctxt��  ��  � m  ���
�� 
nmbr��  ��  � l ������ c  ��� l 	������ c  	��� o  ���� 0 	starttime 	startTime� m  ��
�� 
ctxt��  ��  � m  	��
�� 
nmbr��  ��  ��  ��  � o      ���� *0 elapsedtimethistime elapsedTimeThisTime� ��� l ��������  ��  ��  � ��� r  ,��� n  (��� 7  (����
�� 
cobj� 4  !���
�� 
cwor� m   ���� � 4  "'���
�� 
cwor� m  %&���� � o  ���� 0 timestr timeStr� o      ���� 0 prefixtimestr prefixTimeStr� ��� r  -F��� n  -B��� 7  0B����
�� 
cobj� 4  6;���
�� 
cwor� m  9:������� 4  <A���
�� 
cwor� m  ?@������� o  -0���� 0 timestr timeStr� o      ����  0 postfixtimestr postfixTimeStr� ���� r  G`��� b  G\   b  GX b  GT b  GN o  GJ���� 0 prefixtimestr prefixTimeStr m  JM �		    [  NS

 o  NO���� 0 elapsedtime elapsedTime o  OR���� *0 elapsedtimethistime elapsedTimeThisTime m  TW �    0   o  X[����  0 postfixtimestr postfixTimeStr� o      ���� 0 
newtimestr 
newTimeStr��  ��  �`  
  l ee��������  ��  ��    r  ev b  ep b  el o  eh���� 0 orinote oriNote m  hk �  
 
 o  lo���� 0 
newtimestr 
newTimeStr n       1  qu��
�� 
FCno o  pq���� 0 anitem anItem  l ww����   4 . End of calculate the elapsed time of the task    �   \   E n d   o f   c a l c u l a t e   t h e   e l a p s e d   t i m e   o f   t h e   t a s k !��! l ww��"#��  " ? 9---------------------------------------------------------   # �$$ r - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -��  �� 0 anitem anItem m o   Y Z���� $0 theselecteditems theSelectedItems k %��% r  ~�&'& c  ~�()( o  ~���� 0 	itemtitle 	itemTitle) m  ���
�� 
ctxt' o      ���� 0 	itemtitle 	itemTitle��   7 / ) (first document window whose index is 1)    8 �** R   ( f i r s t   d o c u m e n t   w i n d o w   w h o s e   i n d e x   i s   1 ) 5 n    +,+ 1    ��
�� 
FCcn, 4    ��-
�� 
FCdw- m    ����  3 4   ��.
�� 
docu. m    ����  1 m    	//�                                                                                  OFOC  alis    >  Mac                        Зu�H+     �OmniFocus.app                                                   ��Ѳ��        ����  	                Applications    ЗU      Ѳ4       �  Mac:Applications: OmniFocus.app     O m n i F o c u s . a p p    M a c  Applications/OmniFocus.app  / ��  ��  ��   . 010 l     ��������  ��  ��  1 232 l ��4����4 Z  ��56����5 > ��787 o  ������ 0 	itemtitle 	itemTitle8 m  ���
� 
msng6 n ��9:9 I  ���~;�}�~ 
0 notify  ; <=< m  ��>> �??  T a s k   s t o p e d != @�|@ b  ��ABA m  ��CC �DD  T a s k :  B o  ���{�{ 0 	itemtitle 	itemTitle�|  �}  :  f  ����  ��  ��  ��  3 EFE l     �z�y�x�z  �y  �x  F GHG l      �wIJ�w  I � �
	Uses Notification Center to display a notification message.
	theTitle � a string giving the notification title
	theDescription � a string describing the notification event
   J �KK\ 
 	 U s e s   N o t i f i c a t i o n   C e n t e r   t o   d i s p l a y   a   n o t i f i c a t i o n   m e s s a g e . 
 	 t h e T i t l e      a   s t r i n g   g i v i n g   t h e   n o t i f i c a t i o n   t i t l e 
 	 t h e D e s c r i p t i o n      a   s t r i n g   d e s c r i b i n g   t h e   n o t i f i c a t i o n   e v e n t 
H LML i    	NON I      �vP�u�v 
0 notify  P QRQ o      �t�t 0 thetitle theTitleR S�sS o      �r�r  0 thedescription theDescription�s  �u  O I    �qTU
�q .sysonotfnull��� ��� TEXTT o     �p�p  0 thedescription theDescriptionU �oVW
�o 
apprV o    �n�n "0 scriptsuitename scriptSuiteNameW �mX�l
�m 
subtX o    	�k�k 0 thetitle theTitle�l  M Y�jY l     �i�h�g�i  �h  �g  �j       "�fZ [\]^�e_`abc�defg�dhi�c�b�a�`�_�^�]�\�[�Z�Y�X�W�f  Z  �V�U�T�S�R�Q�P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�=�<�;�:�9�8�7�V "0 scriptsuitename scriptSuiteName�U 0 dateori dateOri�T 
0 notify  
�S .aevtoappnull  �   � ****�R 0 	itemtitle 	itemTitle�Q 0 elapsedtime elapsedTime�P $0 theselecteditems theSelectedItems�O 0 notetext noteText�N 0 
lastendstr 
lastEndStr�M 0 lastbeginstr lastBeginStr�L 0 	stoptitle 	stopTitle�K 0 orinote oriNote�J 0 
newtimestr 
newTimeStr�I 0 timestr timeStr�H 0 	starttime 	startTime�G 0 endtime endTime�F *0 elapsedtimethistime elapsedTimeThisTime�E 0 prefixtimestr prefixTimeStr�D  0 postfixtimestr postfixTimeStr�C  �B  �A  �@  �?  �>  �=  �<  �;  �:  �9  �8  �7  [ ldt     ��� \ �6O�5�4jk�3�6 
0 notify  �5 �2l�2 l  �1�0�1 0 thetitle theTitle�0  0 thedescription theDescription�4  j �/�.�/ 0 thetitle theTitle�.  0 thedescription theDescriptionk �-�,�+�*
�- 
appr
�, 
subt�+ 
�* .sysonotfnull��� ��� TEXT�3 ��b   �� ] �)m�(�'no�&
�) .aevtoappnull  �   � ****m k    �pp  !qq  &rr  -ss 2�%�%  �(  �'  n �$�$ 0 anitem anItemo :�#�"�!/� ������ N��� `��� � ����� ����� � �� ��
�	��������� ���������>C��
�# 
msng�" 0 	itemtitle 	itemTitle�! 0 elapsedtime elapsedTime
�  
docu
� 
FCdw
� 
FCcn
� 
OTst
� 
valL� $0 theselecteditems theSelectedItems
� .corecnte****       ****
� 
as A
� EAlTwarN
� .sysodisAaleR        TEXT
� 
kocl
� 
cobj
� 
pnam
� 
FCno� 0 notetext noteText
� 
cwor� 
� 
ctxt� 0 
lastendstr 
lastEndStr���� 0 lastbeginstr lastBeginStr
� 
bool�
 0 	stoptitle 	stopTitle�	 0 orinote oriNote� 0 
newtimestr 
newTimeStr���� 0 timestr timeStr���� 0 	starttime 	startTime
� .misccurdldt    ��� null� 0 endtime endTime���
�  
nmbr�� *0 elapsedtimethistime elapsedTimeThisTime�� 0 prefixtimestr prefixTimeStr��  0 postfixtimestr postfixTimeStr�� 
0 notify  �&��E�O�E�O�}*�k/u*�k/�,k*�-�,E�O�j 
k ���l OhY hO�j 
k ���l OhY hO&�[a a l 
kh  �a ,E�O�a  a ��l OhY hO�a ,E` O_ a -j 
a  a ��l OhY j_ [a \[a i/\a i/2a &E` O_ [a \[a a /\a a /2a &E` O_ a 
 _ a a  & a !��l OhY hO�[a \[a l/\Zi2E` "O_ "a &�a ,FO_ E` #Oa $E` %O_ a -j 
a _ [a \[a k/\a a &/2a &E` #O_ [a \[a a /\a i/2a &E` 'O_ '[a \[a a (/\a a (/2E` )O*j *b  a &E` +O_ '[a \[a a ,/\a a ,/2a &a -&E�O_ +a &a -&_ )a &a -&E` .O_ '[a \[a k/\a k/2E` /O_ '[a \[a i/\a i/2E` 0O_ /a 1%�_ .%a 2%_ 0%E` %Y �_ a -j 
a   �a 3E` #O_ [a \[a a /\a i/2a &E` 'O_ '[a \[a a (/\a a (/2E` )O*j *b  a &E` +O_ '[a \[a a ,/\a a ,/2a &a -&E�O_ +a &a -&_ )a &a -&E` .O_ '[a \[a k/\a k/2E` /O_ '[a \[a i/\a i/2E` 0O_ /a 4%�_ .%a 5%_ 0%E` %Y hO_ #a 6%_ %%�a ,FOP[OY��O�a &E�UUUO�� )a 7a 8�%l+ 9Y h^ �tt H # O n g o i n g :  O�e9epcn[�Q�e�N� ;  \�Հ�T&��Q� p d fe���Q�g�r�V� .�e 
_ ��u�� u  vv ww x��y��x /��z��
�� 
docuz �{{  g M L C h 5 B H m d Z
�� kfrmID  
�� 
FCacy �||  a f E E S d d F W i S
�� kfrmID  ` �}} 4 
 
 T B e g i n   1 0   4 8 9 9 1 6 7 6 6   T E n da �~~  T E n db �  T B e g i nc ����� �   ��������������������������������������� ��� O�� ��� e9� ��� ep� ��� cn� ��� [�� ��� Q�� ��� e�� ��� N�� ���  ;� ���   � ��� \� ��� ��� ��� ��� ��� T&� ��� ��� ��� Q�� ���  p� ���  d� ���  f� ��� e�� ��� ��� ��� Q�� ��� g�� ��� r�� ��� V�� ���  .��  ��  ��  ��  ��  ��  d ����� �  ������������� ���  T� ���  B� ���  e� ���  g� ���  i� ���  n�� � ���  T� ���  E� ���  n� ���  de ��� 0 T B e g i n   1 0   4 8 9 9 1 6 7 6 6   T E n df ����� 	�  ������������������������ ���  4� ���  8� ���  9� ���  9� ���  1� ���  6� ���  7� ���  6� ���  6��  ��  ��  ��  ��  ��  ��  g ���  4 8 9 9 1 6 7 7 3�d h ����� �  ����������������������������  ��  ��  ��  ��  ��  ��  ��  ��  ��  i ����� �  ������������������������������  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  �c  �b  �a  �`  �_  �^  �]  �\  �[  �Z  �Y  �X  �W  ascr  ��ޭ