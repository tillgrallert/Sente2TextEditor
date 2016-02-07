FasdUAS 1.101.10   ��   ��    k             l      ��  ��    This script produces a Sente CitationID wrapped in curly braces and attaches text selected in Sente as page numbers after the @ symbol. I.e. {CitationIDofSelectedReference@SelectedText}. It then tries to copy this string into a text editor of the user's choice.      � 	 	   T h i s   s c r i p t   p r o d u c e s   a   S e n t e   C i t a t i o n I D   w r a p p e d   i n   c u r l y   b r a c e s   a n d   a t t a c h e s   t e x t   s e l e c t e d   i n   S e n t e   a s   p a g e   n u m b e r s   a f t e r   t h e   @   s y m b o l .   I . e .   { C i t a t i o n I D o f S e l e c t e d R e f e r e n c e @ S e l e c t e d T e x t } .   I t   t h e n   t r i e s   t o   c o p y   t h i s   s t r i n g   i n t o   a   t e x t   e d i t o r   o f   t h e   u s e r ' s   c h o i c e .     
  
 l     ��������  ��  ��        l      ��  ��    ( " v3: completely rewrote the script     �   D   v 3 :   c o m p l e t e l y   r e w r o t e   t h e   s c r i p t      l     ��������  ��  ��        i         I      �� ���� 0 process     ��  o      ���� 	0 input  ��  ��    k    (       l     ��������  ��  ��        r         o     ���� 	0 input    o      ���� 0 thepn thePn     !   l   �� " #��   " Y S the clipboard should be reset to its original content after the end of this script    # � $ $ �   t h e   c l i p b o a r d   s h o u l d   b e   r e s e t   t o   i t s   o r i g i n a l   c o n t e n t   a f t e r   t h e   e n d   o f   t h i s   s c r i p t !  % & % r     ' ( ' I   ���� )
�� .JonsgClp****    ��� null��   ) �� *��
�� 
rtyp * m    ��
�� 
ctxt��   ( o      ���� (0 theclipboardbefore theClipboardBefore &  + , + l   ��������  ��  ��   ,  - . - l   �� / 0��   / R L activeEditorsList will be populated in the course of the script's execution    0 � 1 1 �   a c t i v e E d i t o r s L i s t   w i l l   b e   p o p u l a t e d   i n   t h e   c o u r s e   o f   t h e   s c r i p t ' s   e x e c u t i o n .  2 3 2 r     4 5 4 J    ����   5 o      ���� &0 activeeditorslist activeEditorsList 3  6 7 6 l   �� 8 9��   8 G A set a list of text editors whose running status is to be checked    9 � : : �   s e t   a   l i s t   o f   t e x t   e d i t o r s   w h o s e   r u n n i n g   s t a t u s   i s   t o   b e   c h e c k e d 7  ; < ; r     = > = J     ? ?  @ A @ m     B B � C C  S c r i v e n e r A  D E D m     F F � G G  M i c r o s o f t   W o r d E  H I H m     J J � K K  T e x t E d i t I  L M L m     N N � O O 
 n v A L T M  P Q P m     R R � S S  S u b l i m e   T e x t Q  T�� T m     U U � V V 
 P a g e s��   > o      ���� 0 editorslist editorsList <  W X W l   ��������  ��  ��   X  Y Z Y l   �� [ \��   [ - '    Generate variable with running apps    \ � ] ] N         G e n e r a t e   v a r i a b l e   w i t h   r u n n i n g   a p p s Z  ^ _ ^ O    * ` a ` r   " ) b c b l  " ' d���� d n   " ' e f e 1   % '��
�� 
pnam f 2   " %��
�� 
prcs��  ��   c o      ���� "0 activeprocesses activeProcesses a m     g g�                                                                                  sevs  alis    �  
Fischer HD                 �nzWH+     �System Events.app                                               ���        ����  	                CoreServices    �n^7      ����       �   �   �  ;Fischer HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p   
 F i s c h e r   H D  -System/Library/CoreServices/System Events.app   / ��   _  h i h l  + +��������  ��  ��   i  j k j l  + +�� l m��   l 3 -    Generate list of running text editors        m � n n Z         G e n e r a t e   l i s t   o f   r u n n i n g   t e x t   e d i t o r s         k  o p o X   + R q�� r q Z   ; M s t���� s E  ; > u v u o   ; <���� "0 activeprocesses activeProcesses v o   < =���� 0 appname appName t k   A I w w  x y x r   A D z { z o   A B���� 0 appname appName { o      ���� 0 activeeditor activeEditor y  |�� | r   E I } ~ } o   E F���� 0 appname appName ~ n        �   ;   G H � o   F G���� &0 activeeditorslist activeEditorsList��  ��  ��  �� 0 appname appName r o   . /���� 0 editorslist editorsList p  � � � l  S S��������  ��  ��   �  � � � l  S S�� � ���   � � � ask user to select from running text editors if there are more then one. Otherwiese continue with the sole running text editor or abort the script    � � � �&   a s k   u s e r   t o   s e l e c t   f r o m   r u n n i n g   t e x t   e d i t o r s   i f   t h e r e   a r e   m o r e   t h e n   o n e .   O t h e r w i e s e   c o n t i n u e   w i t h   t h e   s o l e   r u n n i n g   t e x t   e d i t o r   o r   a b o r t   t h e   s c r i p t �  � � � r   S Z � � � l  S X ����� � I  S X�� ���
�� .corecnte****       **** � o   S T���� &0 activeeditorslist activeEditorsList��  ��  ��   � o      ���� 0 editorcount editorCount �  � � � l  [ [�� � ���   � F @ if there is only one active editor: continue without user input    � � � � �   i f   t h e r e   i s   o n l y   o n e   a c t i v e   e d i t o r :   c o n t i n u e   w i t h o u t   u s e r   i n p u t �  � � � Z   [ � � � � � � =   [ ^ � � � o   [ \���� 0 editorcount editorCount � m   \ ]����  � k   a k � �  � � � r   a i � � � c   a g � � � l  a e ����� � n   a e � � � 4   b e�� �
�� 
cobj � m   c d����  � o   a b���� &0 activeeditorslist activeEditorsList��  ��   � m   e f��
�� 
ctxt � o      ���� 0 	targetapp 	targetApp �  ��� � l  j j�� � ���   � 5 / handle more than one editor through user input    � � � � ^   h a n d l e   m o r e   t h a n   o n e   e d i t o r   t h r o u g h   u s e r   i n p u t��   �  � � � ?   n q � � � o   n o���� 0 editorcount editorCount � m   o p����   �  ��� � r   t � � � � c   t � � � � l  t � ����� � I  t ��� � �
�� .gtqpchltns    @   @ ns   � o   t u���� &0 activeeditorslist activeEditorsList � �� � �
�� 
appr � m   x { � � � � � ( R u n n i n g   t e x t   e d i t o r s � �� � �
�� 
prmp � m   ~ � � � � � � p P i c k   a   t e x t   e d i t o r   t o   s e n d   t h e   r e f e r e n c e ' s   C i t a t i o n I D   t o � �� � �
�� 
inSL � l  � � ����� � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� &0 activeeditorslist activeEditorsList��  ��   � �� ���
�� 
mlsl � m   � ���
�� boovfals��  ��  ��   � m   � ���
�� 
ctxt � o      ���� 0 	targetapp 	targetApp��   � k   � � � �  � � � l  � ��� � ���   �   Handle 0 items    � � � �    H a n d l e   0   i t e m s �  � � � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � B T h e r e   a r e   n o   r u n n i n g   t e x t   e d i t o r s � �� ���
�� 
btns � J   � � � �  ��� � m   � � � � � � �  O K��  ��   �  ��� � r   � � � � � m   � � � � � � � 
 f a l s e � o      ���� 0 	targetapp 	targetApp��   �  � � � l  � ���������  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � n h this combines the Citation ID of the selected reference with the selected text into the required string    � � � � �   t h i s   c o m b i n e s   t h e   C i t a t i o n   I D   o f   t h e   s e l e c t e d   r e f e r e n c e   w i t h   t h e   s e l e c t e d   t e x t   i n t o   t h e   r e q u i r e d   s t r i n g �  � � � O   � � � � � k   � � � �  � � � r   � � � � � l  � � ����� � I  � ��� � �
�� .SnccSnrsnull���     **** � 1   � ���
�� 
Sclb � �� ���
�� 
Snj4 � m   � ���
�� SxooSotg��  ��  ��   � o      ���� 0 theref theRef �  � � � Z   � � � ��� � � =  � � � � � o   � ����� 0 thepn thePn � m   � � � � � � �   � r   � � � � � b   � � � � � b   � � � � � m   � �   �  { � o   � ����� 0 theref theRef � m   � � �  } � o      ���� 
0 output  ��   � r   � � b   � � b   � �	 b   � �

 b   � � m   � � �  { o   � ����� 0 theref theRef m   � � �  @	 o   � ����� 0 thepn thePn m   � � �  } o      �� 
0 output   � �~ I  � ��}�|
�} .JonspClpnull���     **** c   � � o   � ��{�{ 
0 output   m   � ��z
�z 
ctxt�|  �~   � m   � ��                                                                                  SntE  alis    �  
Fischer HD                 �nzWH+   j�Sente 6.app                                                     /�Cқ�'        ����  	                Reference Manager     �n^7      қe     j� $   �  HFischer HD:Applications: Office-Research: Reference Manager: Sente 6.app    S e n t e   6 . a p p   
 F i s c h e r   H D  :Applications/Office-Research/Reference Manager/Sente 6.app  / ��   �  l  � ��y�x�w�y  �x  �w    l  � ��v�v   F @ this calls the pbpaste shell script to strip out any formatting    � �   t h i s   c a l l s   t h e   p b p a s t e   s h e l l   s c r i p t   t o   s t r i p   o u t   a n y   f o r m a t t i n g  !  l  � ��u"#�u  " = 7 this also, unfortunately, prevents full unicode output   # �$$ n   t h i s   a l s o ,   u n f o r t u n a t e l y ,   p r e v e n t s   f u l l   u n i c o d e   o u t p u t! %&% l  � ��t'(�t  ' 5 / do shell script "pbpaste -Prefer txt | pbcopy"   ( �)) ^   d o   s h e l l   s c r i p t   " p b p a s t e   - P r e f e r   t x t   |   p b c o p y "& *+* l  � ��s�r�q�s  �r  �q  + ,-, l  � ��p./�p  . I C paste the CitationID and page number into the selected text editor   / �00 �   p a s t e   t h e   C i t a t i o n I D   a n d   p a g e   n u m b e r   i n t o   t h e   s e l e c t e d   t e x t   e d i t o r- 121 Z   �&34�o�n3 >  � �565 o   � ��m�m 0 	targetapp 	targetApp6 m   � �77 �88 
 f a l s e4 O   "9:9 k  	!;; <=< I 	�l�k�j
�l .miscactvnull��� ��� null�k  �j  = >�i> O  !?@? I  �hAB
�h .prcskprsnull���     ctxtA m  CC �DD  vB �gE�f
�g 
faalE m  �e
�e eMdsKcmd�f  @ m  FF�                                                                                  sevs  alis    �  
Fischer HD                 �nzWH+     �System Events.app                                               ���        ����  	                CoreServices    �n^7      ����       �   �   �  ;Fischer HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p   
 F i s c h e r   H D  -System/Library/CoreServices/System Events.app   / ��  �i  : 4   �dG
�d 
cappG o  �c�c 0 	targetapp 	targetApp�o  �n  2 HIH l ''�bJK�b  J � � reset the clipboard to its original content, unfortunately, this takes place before the citation ID has been pasted into the targetApp   K �LL   r e s e t   t h e   c l i p b o a r d   t o   i t s   o r i g i n a l   c o n t e n t ,   u n f o r t u n a t e l y ,   t h i s   t a k e s   p l a c e   b e f o r e   t h e   c i t a t i o n   I D   h a s   b e e n   p a s t e d   i n t o   t h e   t a r g e t A p pI M�aM l ''�`NO�`  N 6 0 set the clipboard to theClipboardBefore as text   O �PP `   s e t   t h e   c l i p b o a r d   t o   t h e C l i p b o a r d B e f o r e   a s   t e x t�a    Q�_Q l     �^�]�\�^  �]  �\  �_       �[RS�[  R �Z�Z 0 process  S �Y �X�WTU�V�Y 0 process  �X �UV�U V  �T�T 	0 input  �W  T �S�R�Q�P�O�N�M�L�K�J�I�H�S 	0 input  �R 0 thepn thePn�Q (0 theclipboardbefore theClipboardBefore�P &0 activeeditorslist activeEditorsList�O 0 editorslist editorsList�N "0 activeprocesses activeProcesses�M 0 appname appName�L 0 activeeditor activeEditor�K 0 editorcount editorCount�J 0 	targetapp 	targetApp�I 0 theref theRef�H 
0 output  U 0�G�F�E B F J N R U�D g�C�B�A�@�?�> ��= ��<�;�:�9 ��8 ��7 ��6�5�4�3 � �27�1�0C�/�.�-
�G 
rtyp
�F 
ctxt
�E .JonsgClp****    ��� null�D 
�C 
prcs
�B 
pnam
�A 
kocl
�@ 
cobj
�? .corecnte****       ****
�> 
appr
�= 
prmp
�< 
inSL
�; 
mlsl�: 
�9 .gtqpchltns    @   @ ns  
�8 
btns
�7 .sysodlogaskr        TEXT
�6 
Sclb
�5 
Snj4
�4 SxooSotg
�3 .SnccSnrsnull���     ****
�2 .JonspClpnull���     ****
�1 
capp
�0 .miscactvnull��� ��� null
�/ 
faal
�. eMdsKcmd
�- .prcskprsnull���     ctxt�V)�E�O*��l E�OjvE�O�������vE�O� 	*�-�,E�UO &�[��l kh �� �E�O��6FY h[OY��O�j E�O�k  ��k/�&E�OPY B�j '�a a a a a ��k/a fa  �&E�Y a a a kvl Oa E�Oa  C*a ,a a  l !E�O�a "  a #�%a $%E�Y a %�%a &%�%a '%E�O��&j (UO�a ) '*a *�/ *j +O� a ,a -a .l /UUY hOP ascr  ��ޭ