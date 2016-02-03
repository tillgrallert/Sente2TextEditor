FasdUAS 1.101.10   ��   ��    k             l      ��  ��    This script produces a Sente CitationID wrapped in curly braces and attaches text selected in Sente as page numbers after the @ symbol. I.e. {CitationIDofSelectedReference@SelectedText}. It then tries to copy this string into a text editor of the user's choice.      � 	 	   T h i s   s c r i p t   p r o d u c e s   a   S e n t e   C i t a t i o n I D   w r a p p e d   i n   c u r l y   b r a c e s   a n d   a t t a c h e s   t e x t   s e l e c t e d   i n   S e n t e   a s   p a g e   n u m b e r s   a f t e r   t h e   @   s y m b o l .   I . e .   { C i t a t i o n I D o f S e l e c t e d R e f e r e n c e @ S e l e c t e d T e x t } .   I t   t h e n   t r i e s   t o   c o p y   t h i s   s t r i n g   i n t o   a   t e x t   e d i t o r   o f   t h e   u s e r ' s   c h o i c e .     
  
 l     ��������  ��  ��        l      ��  ��    ( " v3: completely rewrote the script     �   D   v 3 :   c o m p l e t e l y   r e w r o t e   t h e   s c r i p t      l     ��������  ��  ��        l     ��  ��    R L activeEditorsList will be populated in the course of the script's execution     �   �   a c t i v e E d i t o r s L i s t   w i l l   b e   p o p u l a t e d   i n   t h e   c o u r s e   o f   t h e   s c r i p t ' s   e x e c u t i o n      l     ����  r         J     ����    o      ���� &0 activeeditorslist activeEditorsList��  ��        l     ��   ��    G A set a list of text editors whose running status is to be checked      � ! ! �   s e t   a   l i s t   o f   t e x t   e d i t o r s   w h o s e   r u n n i n g   s t a t u s   i s   t o   b e   c h e c k e d   " # " l    $���� $ r     % & % J     ' '  ( ) ( m     * * � + +  S c r i v e n e r )  , - , m     . . � / /  M i c r o s o f t   W o r d -  0 1 0 m     2 2 � 3 3  T e x t E d i t 1  4 5 4 m    	 6 6 � 7 7 
 n v A L T 5  8�� 8 m   	 
 9 9 � : :  S u b l i m e   T e x t��   & o      ���� 0 editorslist editorsList��  ��   #  ; < ; l     ��������  ��  ��   <  = > = l     �� ? @��   ? - '    Generate variable with running apps    @ � A A N         G e n e r a t e   v a r i a b l e   w i t h   r u n n i n g   a p p s >  B C B l    D���� D O     E F E r     G H G l    I���� I n     J K J 1    ��
�� 
pnam K 2    ��
�� 
prcs��  ��   H o      ���� "0 activeprocesses activeProcesses F m     L L�                                                                                  sevs  alis    �  Vanzetti HD                ��g�H+   \ System Events.app                                               _%4��        ����  	                CoreServices    ��=�      ����     \  \� \�  <Vanzetti HD:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p    V a n z e t t i   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��   C  M N M l     ��������  ��  ��   N  O P O l     �� Q R��   Q 3 -    Generate list of running text editors        R � S S Z         G e n e r a t e   l i s t   o f   r u n n i n g   t e x t   e d i t o r s         P  T U T l   C V���� V X    C W�� X W Z   , > Y Z���� Y E  , / [ \ [ o   , -���� "0 activeprocesses activeProcesses \ o   - .���� 0 appname appName Z k   2 : ] ]  ^ _ ^ r   2 5 ` a ` o   2 3���� 0 appname appName a o      ���� 0 activeeditor activeEditor _  b�� b r   6 : c d c o   6 7���� 0 appname appName d n       e f e  ;   8 9 f o   7 8���� &0 activeeditorslist activeEditorsList��  ��  ��  �� 0 appname appName X o     ���� 0 editorslist editorsList��  ��   U  g h g l     ��������  ��  ��   h  i j i l     �� k l��   k � � ask user to select from running text editors if there are more then one. Otherwiese continue with the sole running text editor or abort the script    l � m m&   a s k   u s e r   t o   s e l e c t   f r o m   r u n n i n g   t e x t   e d i t o r s   i f   t h e r e   a r e   m o r e   t h e n   o n e .   O t h e r w i e s e   c o n t i n u e   w i t h   t h e   s o l e   r u n n i n g   t e x t   e d i t o r   o r   a b o r t   t h e   s c r i p t j  n o n l  D M p���� p r   D M q r q l  D I s���� s I  D I�� t��
�� .corecnte****       **** t o   D E���� &0 activeeditorslist activeEditorsList��  ��  ��   r o      ���� 0 editorcount editorCount��  ��   o  u v u l  N � w���� w Z   N � x y�� z x ?   N S { | { o   N Q���� 0 editorcount editorCount | m   Q R����   y r   V | } ~ } c   V x  �  l  V t ����� � I  V t�� � �
�� .gtqpchltns    @   @ ns   � o   V W���� &0 activeeditorslist activeEditorsList � �� � �
�� 
appr � m   Z ] � � � � � ( R u n n i n g   t e x t   e d i t o r s � �� � �
�� 
prmp � m   ` c � � � � � p P i c k   a   t e x t   e d i t o r   t o   s e n d   t h e   r e f e r e n c e ' s   C i t a t i o n I D   t o � �� � �
�� 
inSL � l  f j ����� � n   f j � � � 4   g j�� �
�� 
cobj � m   h i����  � o   f g���� &0 activeeditorslist activeEditorsList��  ��   � �� ���
�� 
mlsl � m   m n��
�� boovfals��  ��  ��   � m   t w��
�� 
ctxt ~ o      ���� 0 	targetapp 	targetApp��   z k    � � �  � � � l   �� � ���   �   Handle 0 items    � � � �    H a n d l e   0   i t e m s �  � � � I   ��� � �
�� .sysodlogaskr        TEXT � m    � � � � � � B T h e r e   a r e   n o   r u n n i n g   t e x t   e d i t o r s � �� ���
�� 
btns � J   � � � �  ��� � m   � � � � � � �  O K��  ��   �  ��� � r   � � � � � m   � � � � � � � 
 f a l s e � o      ���� 0 	targetapp 	targetApp��  ��  ��   v  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � n h this combines the Citation ID of the selected reference with the selected text into the required string    � � � � �   t h i s   c o m b i n e s   t h e   C i t a t i o n   I D   o f   t h e   s e l e c t e d   r e f e r e n c e   w i t h   t h e   s e l e c t e d   t e x t   i n t o   t h e   r e q u i r e d   s t r i n g �  � � � l  � � ����� � O   � � � � � k   � � � �  � � � r   � � � � � l  � � ����� � I  � ��� � �
�� .SnccSnrsnull���     **** � 1   � ���
�� 
Sclb � �� ���
�� 
Snj4 � m   � ���
�� SxooSotg��  ��  ��   � o      ���� 0 theref theRef �  � � � r   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  { � o   � ����� 0 theref theRef � m   � � � � � � �  } � o      ���� 
0 output   �  � � � l  � ���������  ��  ��   �  ��� � I  � ��� ���
�� .JonspClpnull���     **** � c   � � � � � o   � ����� 
0 output   � m   � ���
�� 
ctxt��  ��   � m   � � � �                                                                                   SntE  alis    �  Vanzetti HD                ��g�H+   ƫSente 6.app                                                     /���=        ����  	                Reference Manager     ��=�      ���     ƫ   � \  IVanzetti HD:Applications: Office-Research: Reference Manager: Sente 6.app     S e n t e   6 . a p p    V a n z e t t i   H D  :Applications/Office-Research/Reference Manager/Sente 6.app  / ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � F @ this calls the pbpaste shell script to strip out any formatting    � � � � �   t h i s   c a l l s   t h e   p b p a s t e   s h e l l   s c r i p t   t o   s t r i p   o u t   a n y   f o r m a t t i n g �  � � � l  � � ����� � I  � ��� ���
�� .sysoexecTEXT���     TEXT � m   � � � � � � � 8 p b p a s t e   - P r e f e r   t x t   |   p b c o p y��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � I C paste the CitationID and page number into the selected text editor    � � � � �   p a s t e   t h e   C i t a t i o n I D   a n d   p a g e   n u m b e r   i n t o   t h e   s e l e c t e d   t e x t   e d i t o r �  � � � l  � ���� � Z   � � ��~�} � >  � � � � � o   � ��|�| 0 	targetapp 	targetApp � m   � � � � � � � 
 f a l s e � O   � � � � k   � � �  � � � I  � ��{�z�y
�{ .miscactvnull��� ��� null�z  �y   �  ��x � O   � � � � I  ��w � �
�w .prcskprsnull���     ctxt � m   � � � � � � �  v � �v ��u
�v 
faal � m   � ��t
�t eMdsKcmd�u   � m   � � � ��                                                                                  sevs  alis    �  Vanzetti HD                ��g�H+   \ System Events.app                                               _%4��        ����  	                CoreServices    ��=�      ����     \  \� \�  <Vanzetti HD:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p    V a n z e t t i   H D  -System/Library/CoreServices/System Events.app   / ��  �x   � 4   � ��s �
�s 
capp � o   � ��r�r 0 	targetapp 	targetApp�~  �}  ��  �   �  ��q � l     �p�o�n�p  �o  �n  �q       �m �l�k�j�i�h�g�f�e�m    �d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U
�d .aevtoappnull  �   � ****�c &0 activeeditorslist activeEditorsList�b 0 editorslist editorsList�a "0 activeprocesses activeProcesses�` 0 activeeditor activeEditor�_ 0 editorcount editorCount�^ 0 	targetapp 	targetApp�] 0 theref theRef�\ 
0 output  �[  �Z  �Y  �X  �W  �V  �U   �T	�S�R
�Q
�T .aevtoappnull  �   � ****	 k        "  B  T  n  u  �  �  ��P�P  �S  �R  
 �O�O 0 appname appName 3�N * . 2 6 9�M�L L�K�J�I�H�G�F�E�D�C ��B ��A�@�?�>�=�< ��; ��: � ��9�8�7�6�5 � ��4�3 ��2 ��1�0 ��/�.�-�N &0 activeeditorslist activeEditorsList�M �L 0 editorslist editorsList
�K 
prcs
�J 
pnam�I "0 activeprocesses activeProcesses
�H 
kocl
�G 
cobj
�F .corecnte****       ****�E 0 activeeditor activeEditor�D 0 editorcount editorCount
�C 
appr
�B 
prmp
�A 
inSL
�@ 
mlsl�? 
�> .gtqpchltns    @   @ ns  
�= 
ctxt�< 0 	targetapp 	targetApp
�; 
btns
�: .sysodlogaskr        TEXT
�9 
Sclb
�8 
Snj4
�7 SxooSotg
�6 .SnccSnrsnull���     ****�5 0 theref theRef�4 
0 output  
�3 .JonspClpnull���     ****
�2 .sysoexecTEXT���     TEXT
�1 
capp
�0 .miscactvnull��� ��� null
�/ 
faal
�. eMdsKcmd
�- .prcskprsnull���     ctxt�Q	jvE�O������vE�O� 	*�-�,E�UO &�[��l kh  ˠ �E�O��6FY h[OY��O�j E` O_ j +�a a a a a ��k/a fa  a &E` Y a a a kvl Oa E` Oa   1*a !,a "a #l $E` %Oa &_ %%a '%E` (O_ (a &j )UOa *j +O_ a , )*a -_ / *j .O� a /a 0a 1l 2UUY h �,�,   �+�*�)�(�'�&�%�$�#�"�!� ��  �� ��    * . 2 6 9
� 
cobj�   ��
� 
cobj� �+  �*  �)  �(  �'  �&  �%  �$  �#  �"  �!  �   �  �   �� > >  !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWX �YY  l o g i n w i n d o w �ZZ  D o c k �[[  F i n d e r �\\  l a c i e b a c k u p d �]]  F l u x  �^^  B a r t e n d e r! �__ : L i t t l e   S n i t c h   N e t w o r k   M o n i t o r" �``  A l f r e d   2# �aa  C l a m X a v S e n t r y$ �bb 
 a T e x t% �cc  T I S w i t c h e r& �dd ( c o m . a p p l e . d o c k . e x t r a' �ee  C o o k i e( �ff  W i F i A g e n t) �gg 8 K e y c h a i n   C i r c l e   N o t i f i c a t i o n* �hh  V O X H e l p e r+ �ii  S I M B L   A g e n t, �jj  H a z e l H e l p e r- �kk  K a r a b i n e r. �ll . u n i v e r s a l A c c e s s A u t h W a r n/ �mm  L a t e r A g e n t0 �nn ( K a r a b i n e r _ A X N o t i f i e r1 �oo  T u n n e l b l i c k2 �pp " i d e n t i t y s e r v i c e s d3 �qq  B i t T o r r e n t   S y n c4 �rr  D a s h b o a r d C l i e n t5 �ss  D a s h b o a r d C l i e n t6 �tt  D a s h b o a r d C l i e n t7 �uu  S p o t l i g h t8 �vv  i c d d9 �ww  n b a g e n t: �xx & L i t t l e   S n i t c h   A g e n t; �yy  f i r e f o x< �zz   p l u g i n - c o n t a i n e r= �{{  D r o p b o x> �||  g a r c o n? �}}  g a r c o n@ �~~  A i r P l a y U I A g e n tA � & C o r e S e r v i c e s U I A g e n tB ��� & E s c r o w S e c u r i t y A l e r tC ���  g a r c o nD ���  B e z e l U I S e r v e rE ��� . I m a g e   C a p t u r e   E x t e n s i o nF ��� $ C I J S c a n n e r R e g i s t e rG ���  S c r i v e n e rH ���  S e n t e   6I ���  M a i lJ ���  S y s t e m U I S e r v e rK ���  s t o r e u i dL ��� 6 c o m . a p p l e . W e b K i t . W e b C o n t e n tM ��� 6 c o m . a p p l e . W e b K i t . W e b C o n t e n tN ��� * W o r k f l o w S e r v i c e R u n n e rO ���  S u b l i m e   T e x tP ���  O m n i F o c u sQ ��� 0 c o m . a p p l e . s e c u r i t y . p b o x dR ��� . F o l d e r A c t i o n s D i s p a t c h e rS ���  G i t H u bT ���  g a r c o nU ���  S c r i p t   E d i t o rV ���  S y s t e m   E v e n t sW ���  T h i s S e r v i c eX ��� @ S I M B L   E n a b l e r   f o r   S a n d b o x e d   A p p s�l  ���  S u b l i m e   T e x t ���  W e b e r   2 0 0 9 ���  { W e b e r   2 0 0 9 }�k  �j  �i  �h  �g  �f  �e  ascr  ��ޭ