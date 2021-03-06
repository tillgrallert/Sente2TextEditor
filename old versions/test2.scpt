FasdUAS 1.101.10   ��   ��    k             l      ��  ��    This script produces a Sente CitationID wrapped in curly braces and attaches text selected in Sente as page numbers after the @ symbol. I.e. {CitationIDofSelectedReference@SelectedText}. It then tries to copy this string into a text editor of the user's choice.      � 	 	   T h i s   s c r i p t   p r o d u c e s   a   S e n t e   C i t a t i o n I D   w r a p p e d   i n   c u r l y   b r a c e s   a n d   a t t a c h e s   t e x t   s e l e c t e d   i n   S e n t e   a s   p a g e   n u m b e r s   a f t e r   t h e   @   s y m b o l .   I . e .   { C i t a t i o n I D o f S e l e c t e d R e f e r e n c e @ S e l e c t e d T e x t } .   I t   t h e n   t r i e s   t o   c o p y   t h i s   s t r i n g   i n t o   a   t e x t   e d i t o r   o f   t h e   u s e r ' s   c h o i c e .     
  
 l     ��������  ��  ��        l      ��  ��    ( " v3: completely rewrote the script     �   D   v 3 :   c o m p l e t e l y   r e w r o t e   t h e   s c r i p t      l     ��������  ��  ��        i         I      �� ���� 0 process     ��  o      ���� 	0 input  ��  ��    k           l     ��������  ��  ��        r         o     ���� 	0 input    o      ���� 0 thepn thePn     !   l   ��������  ��  ��   !  " # " l   �� $ %��   $ R L activeEditorsList will be populated in the course of the script's execution    % � & & �   a c t i v e E d i t o r s L i s t   w i l l   b e   p o p u l a t e d   i n   t h e   c o u r s e   o f   t h e   s c r i p t ' s   e x e c u t i o n #  ' ( ' r     ) * ) J    ����   * o      ���� &0 activeeditorslist activeEditorsList (  + , + l  	 	�� - .��   - G A set a list of text editors whose running status is to be checked    . � / / �   s e t   a   l i s t   o f   t e x t   e d i t o r s   w h o s e   r u n n i n g   s t a t u s   i s   t o   b e   c h e c k e d ,  0 1 0 r   	  2 3 2 J   	  4 4  5 6 5 m   	 
 7 7 � 8 8  S c r i v e n e r 6  9 : 9 m   
  ; ; � < <  M i c r o s o f t   W o r d :  = > = m     ? ? � @ @  T e x t E d i t >  A B A m     C C � D D 
 n v A L T B  E�� E m     F F � G G  S u b l i m e   T e x t��   3 o      ���� 0 editorslist editorsList 1  H I H l   ��������  ��  ��   I  J K J l   �� L M��   L - '    Generate variable with running apps    M � N N N         G e n e r a t e   v a r i a b l e   w i t h   r u n n i n g   a p p s K  O P O O     Q R Q r     S T S l    U���� U n     V W V 1    ��
�� 
pnam W 2    ��
�� 
prcs��  ��   T o      ���� "0 activeprocesses activeProcesses R m     X X�                                                                                  sevs  alis    �  	Dessau HD                  �e&�H+  ��System Events.app                                              ���(        ����  	                CoreServices    �e
�      ���    ������  :Dessau HD:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 D e s s a u   H D  -System/Library/CoreServices/System Events.app   / ��   P  Y Z Y l     ��������  ��  ��   Z  [ \ [ l     �� ] ^��   ] 3 -    Generate list of running text editors        ^ � _ _ Z         G e n e r a t e   l i s t   o f   r u n n i n g   t e x t   e d i t o r s         \  ` a ` X     G b�� c b Z   0 B d e���� d E  0 3 f g f o   0 1���� "0 activeprocesses activeProcesses g o   1 2���� 0 appname appName e k   6 > h h  i j i r   6 9 k l k o   6 7���� 0 appname appName l o      ���� 0 activeeditor activeEditor j  m�� m r   : > n o n o   : ;���� 0 appname appName o n       p q p  ;   < = q o   ; <���� &0 activeeditorslist activeEditorsList��  ��  ��  �� 0 appname appName c o   # $���� 0 editorslist editorsList a  r s r l  H H��������  ��  ��   s  t u t l  H H�� v w��   v � � ask user to select from running text editors if there are more then one. Otherwiese continue with the sole running text editor or abort the script    w � x x&   a s k   u s e r   t o   s e l e c t   f r o m   r u n n i n g   t e x t   e d i t o r s   i f   t h e r e   a r e   m o r e   t h e n   o n e .   O t h e r w i e s e   c o n t i n u e   w i t h   t h e   s o l e   r u n n i n g   t e x t   e d i t o r   o r   a b o r t   t h e   s c r i p t u  y z y r   H O { | { l  H M }���� } I  H M�� ~��
�� .corecnte****       **** ~ o   H I���� &0 activeeditorslist activeEditorsList��  ��  ��   | o      ���� 0 editorcount editorCount z   �  Z   P � � ��� � � ?   P S � � � o   P Q���� 0 editorcount editorCount � m   Q R����   � r   V r � � � c   V p � � � l  V l ����� � I  V l�� � �
�� .gtqpchltns    @   @ ns   � o   V W���� &0 activeeditorslist activeEditorsList � �� � �
�� 
appr � m   X Y � � � � � ( R u n n i n g   t e x t   e d i t o r s � �� � �
�� 
prmp � m   Z [ � � � � � p P i c k   a   t e x t   e d i t o r   t o   s e n d   t h e   r e f e r e n c e ' s   C i t a t i o n I D   t o � �� � �
�� 
inSL � l  ^ b ����� � n   ^ b � � � 4   _ b�� �
�� 
cobj � m   ` a����  � o   ^ _���� &0 activeeditorslist activeEditorsList��  ��   � �� ���
�� 
mlsl � m   e f��
�� boovfals��  ��  ��   � m   l o��
�� 
ctxt � o      ���� 0 	targetapp 	targetApp��   � k   u � � �  � � � l  u u�� � ���   �   Handle 0 items    � � � �    H a n d l e   0   i t e m s �  � � � I  u ��� � �
�� .sysodlogaskr        TEXT � m   u x � � � � � B T h e r e   a r e   n o   r u n n i n g   t e x t   e d i t o r s � �� ���
�� 
btns � J   { � � �  ��� � m   { ~ � � � � �  O K��  ��   �  ��� � r   � � � � � m   � � � � � � � 
 f a l s e � o      ���� 0 	targetapp 	targetApp��   �  � � � l  � ���������  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � n h this combines the Citation ID of the selected reference with the selected text into the required string    � � � � �   t h i s   c o m b i n e s   t h e   C i t a t i o n   I D   o f   t h e   s e l e c t e d   r e f e r e n c e   w i t h   t h e   s e l e c t e d   t e x t   i n t o   t h e   r e q u i r e d   s t r i n g �  � � � O   � � � � � k   � � � �  � � � r   � � � � � l  � � ����� � I  � ��� � �
�� .SnccSnrsnull���     **** � 1   � ���
�� 
Sclb � �� ���
�� 
Snj4 � m   � ���
�� SxooSotg��  ��  ��   � o      ���� 0 theref theRef �  � � � Z   � � � ��� � � =  � � � � � o   � ����� 0 thepn thePn � m   � � � � � � �   � r   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  { � o   � ����� 0 theref theRef � m   � � � � � � �  } � o      ���� 
0 output  ��   � r   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  { � o   � ����� 0 theref theRef � m   � � � � � � �  @ � o   � ����� 0 thepn thePn � m   � � � � � � �  } � o      ���� 
0 output   �  ��� � I  � ��� ���
�� .JonspClpnull���     **** � c   � � � � � o   � ����� 
0 output   � m   � ���
�� 
ctxt��  ��   � m   � � � ��                                                                                  SntE  alis    �  	Dessau HD                  �e&�H+   �jSente 6.app                                                    +����=        ����  	                Reference Manager     �e
�      ���     �j C���  GDessau HD:Applications: Office-Research: Reference Manager: Sente 6.app     S e n t e   6 . a p p   	 D e s s a u   H D  :Applications/Office-Research/Reference Manager/Sente 6.app  / ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � I C paste the CitationID and page number into the selected text editor    � � � � �   p a s t e   t h e   C i t a t i o n I D   a n d   p a g e   n u m b e r   i n t o   t h e   s e l e c t e d   t e x t   e d i t o r �  ��� � Z   � � ����� � >  � � � � � o   � ����� 0 	targetapp 	targetApp � m   � � � � � � � 
 f a l s e � O   �  � � � k   � �    I  � �������
�� .miscactvnull��� ��� null��  ��   �� O   � � I  � ���
�� .prcskprsnull���     ctxt m   � � �		  v �
�~
� 
faal
 m   � ��}
�} eMdsKcmd�~   m   � ��                                                                                  sevs  alis    �  	Dessau HD                  �e&�H+  ��System Events.app                                              ���(        ����  	                CoreServices    �e
�      ���    ������  :Dessau HD:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 D e s s a u   H D  -System/Library/CoreServices/System Events.app   / ��  ��   � 4   � ��|
�| 
capp o   � ��{�{ 0 	targetapp 	targetApp��  ��  ��    �z l     �y�x�w�y  �x  �w  �z       �v�v   �u�u 0 process   �t �s�r�q�t 0 process  �s �p�p   �o�o 	0 input  �r   �n�m�l�k�j�i�h�g�f�e�d�n 	0 input  �m 0 thepn thePn�l &0 activeeditorslist activeEditorsList�k 0 editorslist editorsList�j "0 activeprocesses activeProcesses�i 0 appname appName�h 0 activeeditor activeEditor�g 0 editorcount editorCount�f 0 	targetapp 	targetApp�e 0 theref theRef�d 
0 output   - 7 ; ? C F�c X�b�a�`�_�^�] ��\ ��[�Z�Y�X�W ��V ��U � ��T�S�R�Q � � � � � ��P ��O�N�M�L�K�c 
�b 
prcs
�a 
pnam
�` 
kocl
�_ 
cobj
�^ .corecnte****       ****
�] 
appr
�\ 
prmp
�[ 
inSL
�Z 
mlsl�Y 
�X .gtqpchltns    @   @ ns  
�W 
ctxt
�V 
btns
�U .sysodlogaskr        TEXT
�T 
Sclb
�S 
Snj4
�R SxooSotg
�Q .SnccSnrsnull���     ****
�P .JonspClpnull���     ****
�O 
capp
�N .miscactvnull��� ��� null
�M 
faal
�L eMdsKcmd
�K .prcskprsnull���     ctxt�q�E�OjvE�O������vE�O� 	*�-�,E�UO &�[��l kh �� �E�O��6FY h[OY��O�j E�O�j !�����a ��k/a fa  a &E�Y a a a kvl Oa E�Oa  E*a ,a a l E�O�a   a  �%a !%E�Y a "�%a #%�%a $%E�O�a &j %UO�a & '*a '�/ *j (O� a )a *a +l ,UUY hascr  ��ޭ