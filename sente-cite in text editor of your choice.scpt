FasdUAS 1.101.10   ��   ��    k             l      ��  ��    O I This script allows to cite references from Sente in various text editors     � 	 	 �   T h i s   s c r i p t   a l l o w s   t o   c i t e   r e f e r e n c e s   f r o m   S e n t e   i n   v a r i o u s   t e x t   e d i t o r s   
  
 l      ��  ��    � � It supports a number of output formats:
	- Sente: native Sente Citation ID, formatted as {Sente CitationID}
	- Pandoc: to use with Pandoc and citeproc, formatted as [@Sente+CitationID]
	     �  v   I t   s u p p o r t s   a   n u m b e r   o f   o u t p u t   f o r m a t s : 
 	 -   S e n t e :   n a t i v e   S e n t e   C i t a t i o n   I D ,   f o r m a t t e d   a s   { S e n t e   C i t a t i o n I D } 
 	 -   P a n d o c :   t o   u s e   w i t h   P a n d o c   a n d   c i t e p r o c ,   f o r m a t t e d   a s   [ @ S e n t e + C i t a t i o n I D ] 
 	      l      ��  ��    c ] The formatted reference is copied to the clipboard and pasted into the selected text editor      �   �   T h e   f o r m a t t e d   r e f e r e n c e   i s   c o p i e d   t o   t h e   c l i p b o a r d   a n d   p a s t e d   i n t o   t h e   s e l e c t e d   t e x t   e d i t o r        l     ��������  ��  ��        l     ��������  ��  ��        l     ��  ��    Y S the clipboard should be reset to its original content after the end of this script     �   �   t h e   c l i p b o a r d   s h o u l d   b e   r e s e t   t o   i t s   o r i g i n a l   c o n t e n t   a f t e r   t h e   e n d   o f   t h i s   s c r i p t      l    	 ����  r     	   !   l     "���� " I    ���� #
�� .JonsgClp****    ��� null��   # �� $��
�� 
rtyp $ m    ��
�� 
ctxt��  ��  ��   ! o      ���� (0 theclipboardbefore theClipboardBefore��  ��     % & % l     �� ' (��   ' R L activeEditorsList will be populated in the course of the script's execution    ( � ) ) �   a c t i v e E d i t o r s L i s t   w i l l   b e   p o p u l a t e d   i n   t h e   c o u r s e   o f   t h e   s c r i p t ' s   e x e c u t i o n &  * + * l  
  ,���� , r   
  - . - J   
 ����   . o      ���� &0 activeeditorslist activeEditorsList��  ��   +  / 0 / l     �� 1 2��   1 w q set a list of text editors whose running status is to be checked. The order can be set to one's own preferences.    2 � 3 3 �   s e t   a   l i s t   o f   t e x t   e d i t o r s   w h o s e   r u n n i n g   s t a t u s   i s   t o   b e   c h e c k e d .   T h e   o r d e r   c a n   b e   s e t   t o   o n e ' s   o w n   p r e f e r e n c e s . 0  4 5 4 l     �� 6 7��   6 G A *NOTE*: Sublime Text changed its internal name to "sublime_text"    7 � 8 8 �   * N O T E * :   S u b l i m e   T e x t   c h a n g e d   i t s   i n t e r n a l   n a m e   t o   " s u b l i m e _ t e x t " 5  9 : 9 l    ;���� ; r     < = < J     > >  ? @ ? m     A A � B B  S c r i v e n e r @  C D C m     E E � F F  S u b l i m e   T e x t D  G H G m     I I � J J  s u b l i m e _ t e x t H  K L K m     M M � N N  M i c r o s o f t   W o r d L  O P O m     Q Q � R R  T e x t E d i t P  S�� S m     T T � U U 
 n v A L T��   = o      ���� 0 editorslist editorsList��  ��   :  V W V l     �� X Y��   X #  set a list of output formats    Y � Z Z :   s e t   a   l i s t   o f   o u t p u t   f o r m a t s W  [ \ [ l   # ] ^ _ ] r    # ` a ` J     b b  c d c m     e e � f f  P a n d o c d  g h g m     i i � j j 
 S e n t e h  k�� k m     l l � m m  T E I��   a o      ���� 0 formatslist formatsList ^   add Zotero in the future    _ � n n 2   a d d   Z o t e r o   i n   t h e   f u t u r e \  o p o l     ��������  ��  ��   p  q r q l     �� s t��   s - '    Generate variable with running apps    t � u u N         G e n e r a t e   v a r i a b l e   w i t h   r u n n i n g   a p p s r  v w v l  $ 8 x���� x O   $ 8 y z y r   * 7 { | { l  * 3 }���� } n   * 3 ~  ~ 1   / 3��
�� 
pnam  2   * /��
�� 
prcs��  ��   | o      ���� "0 activeprocesses activeProcesses z m   $ ' � ��                                                                                  sevs  alis    X  
Fischer HD                     BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p   
 F i s c h e r   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��   w  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 3 -    Generate list of running text editors        � � � � Z         G e n e r a t e   l i s t   o f   r u n n i n g   t e x t   e d i t o r s         �  � � � l  9 h ����� � X   9 h ��� � � Z   M c � ����� � E  M R � � � o   M P���� "0 activeprocesses activeProcesses � o   P Q���� 0 appname appName � k   U _ � �  � � � r   U Z � � � o   U V���� 0 appname appName � o      ���� 0 activeeditor activeEditor �  ��� � r   [ _ � � � o   [ \���� 0 appname appName � n       � � �  ;   ] ^ � o   \ ]���� &0 activeeditorslist activeEditorsList��  ��  ��  �� 0 appname appName � o   < =���� 0 editorslist editorsList��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � � � ask user to select from running text editors if there are more then one. Otherwiese continue with the sole running text editor or abort the script    � � � �&   a s k   u s e r   t o   s e l e c t   f r o m   r u n n i n g   t e x t   e d i t o r s   i f   t h e r e   a r e   m o r e   t h e n   o n e .   O t h e r w i e s e   c o n t i n u e   w i t h   t h e   s o l e   r u n n i n g   t e x t   e d i t o r   o r   a b o r t   t h e   s c r i p t �  � � � l  i r ����� � r   i r � � � l  i n ����� � I  i n�� ���
�� .corecnte****       **** � o   i j���� &0 activeeditorslist activeEditorsList��  ��  ��   � o      ���� 0 editorcount editorCount��  ��   �  � � � l  s � ����� � Z   s � � � � � � =   s x � � � o   s v���� 0 editorcount editorCount � m   v w����  � r   { � � � � c   { � � � � l  { � ����� � n   { � � � � 4   | ��� �
�� 
cobj � m    �����  � o   { |���� &0 activeeditorslist activeEditorsList��  ��   � m   � ���
�� 
ctxt � o      ���� 0 	targetapp 	targetApp �  � � � ?   � � � � � o   � ����� 0 editorcount editorCount � m   � �����   �  ��� � r   � � � � � c   � � � � � l  � � ����� � I  � ��� � �
�� .gtqpchltns    @   @ ns   � o   � ����� &0 activeeditorslist activeEditorsList � �� � �
�� 
appr � m   � � � � � � � ( R u n n i n g   t e x t   e d i t o r s � �� � �
�� 
prmp � m   � � � � � � � p P i c k   a   t e x t   e d i t o r   t o   s e n d   t h e   r e f e r e n c e ' s   C i t a t i o n I D   t o � �� � �
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
 f a l s e � o      ���� 0 	targetapp 	targetApp��  ��  ��   �  � � � l     �� � ���   � * $ ask user to select an output format    � � � � H   a s k   u s e r   t o   s e l e c t   a n   o u t p u t   f o r m a t �  � � � l  � � ����� � r   � � � � � c   � � � � � l  � � ����� � I  � ��� � �
�� .gtqpchltns    @   @ ns   � o   � ����� 0 formatslist formatsList � �� � �
�� 
appr � m   � � � � � � � 0 A v a i l a b l e   o u t p u t   f o r m a t s � �� � �
�� 
prmp � m   � �   � T P i c k   a n   o u t p u t   f o r m a t   f o r   t h e   c i t a t i o n   t a g � ��
�� 
inSL l  � ����� n   � � 4   � ���
�� 
cobj m   � �����  o   � ����� 0 formatslist formatsList��  ��   ��~
� 
mlsl m   � ��}
�} boovfals�~  ��  ��   � m   � ��|
�| 
ctxt � o      �{�{ 0 targetformat targetFormat��  ��   � 	
	 l     �z�y�x�z  �y  �x  
  l     �w�v�u�w  �v  �u    l     �t�t   D > retrieve the Citation ID of the selected reference from Sente    � |   r e t r i e v e   t h e   C i t a t i o n   I D   o f   t h e   s e l e c t e d   r e f e r e n c e   f r o m   S e n t e  l  �"�s�r O   �" k  !  r   l �q�p I �o
�o .SnccSnrsnull���     **** 1  	�n
�n 
Sclb �m�l
�m 
Snj4 m  �k
�k SxooSotg�l  �q  �p   o      �j�j 0 theref theRef  �i  I !�h!�g
�h .JonspClpnull���     ****! c  "#" o  �f�f 0 theref theRef# m  �e
�e 
ctxt�g  �i   m   �$$n                                                                                  SntE  alis      BB7A952B-C90E-4490-847E-4#2    BD ����Sente 6.app                                                    ����            ����  
 cu             d   ~/:private:var:folders:84:2v35331s5t97w8g_wvsp4nv80000gq:T:AppTranslocation:BB7A952B-C90E-4490-847E-432574B74AC2:d:Sente 6.app/    S e n t e   6 . a p p  J $ B B 7 A 9 5 2 B - C 9 0 E - 4 4 9 0 - 8 4 7 E - 4 3 2 5 7 4 B 7 4 A C 2  /d/Sente 6.app  n/private/var/folders/84/2v35331s5t97w8g_wvsp4nv80000gq/T/AppTranslocation/BB7A952B-C90E-4490-847E-432574B74AC2��  �s  �r   %&% l     �d�c�b�d  �c  �b  & '(' l     �a)*�a  )   format the citation tag   * �++ 0   f o r m a t   t h e   c i t a t i o n   t a g( ,-, l     �`./�`  .   Sente   / �00    S e n t e- 121 l #*3�_�^3 r  #*454 o  #&�]�] 0 theref theRef5 o      �\�\ 0 sentetag senteTag�_  �^  2 676 l     �[89�[  8   Pandoc   9 �::    P a n d o c7 ;<; l     �Z=>�Z  = l f Problem: one can send multiple Citation IDs to this script, each of which needs to be prefixed with @   > �?? �   P r o b l e m :   o n e   c a n   s e n d   m u l t i p l e   C i t a t i o n   I D s   t o   t h i s   s c r i p t ,   e a c h   o f   w h i c h   n e e d s   t o   b e   p r e f i x e d   w i t h   @< @A@ l +LB�Y�XB r  +LCDC b  +HEFE m  +.GG �HH  @F I  .G�WI�V�W 0 replacetext replaceTextI JKJ I  /=�UL�T�U 0 replacetext replaceTextL MNM o  03�S�S 0 theref theRefN OPO m  36QQ �RR  ;P S�RS m  69TT �UU  ;   @�R  �T  K VWV m  =@XX �YY   W Z�QZ m  @C[[ �\\  +�Q  �V  D o      �P�P 0 	pandoctag 	pandocTag�Y  �X  A ]^] l     �O�N�M�O  �N  �M  ^ _`_ l     �Lab�L  a   Sente output   b �cc    S e n t e   o u t p u t` ded l M�f�K�Jf Z  M�ghi�Ig = MTjkj o  MP�H�H 0 targetformat targetFormatk m  PSll �mm 
 S e n t eh k  Whnn opo r  Wfqrq b  Wbsts b  W^uvu m  WZww �xx  {v o  Z]�G�G 0 sentetag senteTagt m  ^ayy �zz  }r o      �F�F 0 thetag theTagp {�E{ l gg�D|}�D  |   Pandoc output   } �~~    P a n d o c   o u t p u t�E  i � = kr��� o  kn�C�C 0 targetformat targetFormat� m  nq�� ���  P a n d o c� ��� k  u��� ��� r  u���� b  u���� b  u|��� m  ux�� ���  [ @� o  x{�B�B 0 	pandoctag 	pandocTag� m  |�� ���  ]� o      �A�A 0 thetag theTag� ��@� l ���?���?  � ( " TEI output based on pandoc format   � ��� D   T E I   o u t p u t   b a s e d   o n   p a n d o c   f o r m a t�@  � ��� = ����� o  ���>�> 0 targetformat targetFormat� m  ���� ���  T E I� ��=� r  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ��� & < r e f   t y p e = ' p a n d o c ' >� m  ���� ���  [� o  ���<�< 0 	pandoctag 	pandocTag� m  ���� ���  ]� m  ���� ���  < / r e f >� o      �;�; 0 thetag theTag�=  �I  �K  �J  e ��� l     �:�9�8�:  �9  �8  � ��� l     �7���7  � , & copy the citatin tag to the clipboard   � ��� L   c o p y   t h e   c i t a t i n   t a g   t o   t h e   c l i p b o a r d� ��� l ����6�5� I ���4��3
�4 .JonspClpnull���     ****� c  ����� o  ���2�2 0 thetag theTag� m  ���1
�1 
ctxt�3  �6  �5  � ��� l     �0�/�.�0  �/  �.  � ��� l     �-���-  �  
 debugging   � ���    d e b u g g i n g� ��� l     �,���,  � %  display dialog (the clipboard)   � ��� >   d i s p l a y   d i a l o g   ( t h e   c l i p b o a r d )� ��� l     �+�*�)�+  �*  �)  � ��� l     �(���(  � I C paste the CitationID and page number into the selected text editor   � ��� �   p a s t e   t h e   C i t a t i o n I D   a n d   p a g e   n u m b e r   i n t o   t h e   s e l e c t e d   t e x t   e d i t o r� ��� l ����'�&� Z  �����%�$� > ����� o  ���#�# 0 	targetapp 	targetApp� m  ���� ��� 
 f a l s e� O  ����� k  ���� ��� I ���"�!� 
�" .miscactvnull��� ��� null�!  �   � ��� O  ����� I �����
� .prcskprsnull���     ctxt� m  ���� ���  v� ���
� 
faal� m  ���
� eMdsKcmd�  � m  �����                                                                                  sevs  alis    X  
Fischer HD                     BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p   
 F i s c h e r   H D  -System/Library/CoreServices/System Events.app   / ��  �  � 4  ����
� 
capp� o  ���� 0 	targetapp 	targetApp�%  �$  �'  �&  � ��� l     ����  �  �  � ��� l     ����  � s m reset the clipboard to its original content, unfortunately, this action is done before the end of the script   � ��� �   r e s e t   t h e   c l i p b o a r d   t o   i t s   o r i g i n a l   c o n t e n t ,   u n f o r t u n a t e l y ,   t h i s   a c t i o n   i s   d o n e   b e f o r e   t h e   e n d   o f   t h e   s c r i p t� ��� l     ����  � 6 0 set the clipboard to theClipboardBefore as text   � ��� `   s e t   t h e   c l i p b o a r d   t o   t h e C l i p b o a r d B e f o r e   a s   t e x t� ��� l     ����  �  �  � ��� l     ����  �   helper function   � ���     h e l p e r   f u n c t i o n� ��� i     ��� I      ���� 0 replacetext replaceText�    o      �� 0 thetext theText  o      �� "0 thesearchstring theSearchString �
 o      �	�	 ,0 thereplacementstring theReplacementString�
  �  � k        r     	 o     �� "0 thesearchstring theSearchString	 n     

 1    �
� 
txdl 1    �
� 
ascr  r     n    	 2    	�
� 
citm o    �� 0 thetext theText o      �� 0 thetextitems theTextItems  r     o    �� ,0 thereplacementstring theReplacementString n      1    �
� 
txdl 1    � 
�  
ascr  r     c     o    ���� 0 thetextitems theTextItems m    ��
�� 
ctxt o      ���� 0 thetext theText  r     !  m    "" �##  ! n     $%$ 1    ��
�� 
txdl% 1    ��
�� 
ascr &��& L     '' o    ���� 0 thetext theText��  �       ��()*��  ( ������ 0 replacetext replaceText
�� .aevtoappnull  �   � ****) �������+,���� 0 replacetext replaceText�� ��-�� -  �������� 0 thetext theText�� "0 thesearchstring theSearchString�� ,0 thereplacementstring theReplacementString��  + ���������� 0 thetext theText�� "0 thesearchstring theSearchString�� ,0 thereplacementstring theReplacementString�� 0 thetextitems theTextItems, ��������"
�� 
ascr
�� 
txdl
�� 
citm
�� 
ctxt�� !���,FO��-E�O���,FO��&E�O���,FO�* ��.����/0��
�� .aevtoappnull  �   � ****. k    �11  22  *33  944  [55  v66  �77  �88  �99  �:: ;; 1<< @== d>> �?? �����  ��  ��  / ���� 0 appname appName0 M���������� A E I M Q T���� e i l�� ��������������������� ��� ��������� ��� ��� � � ��$��������������GQT��X[��lwy����������������������
�� 
rtyp
�� 
ctxt
�� .JonsgClp****    ��� null�� (0 theclipboardbefore theClipboardBefore�� &0 activeeditorslist activeEditorsList�� �� 0 editorslist editorsList�� 0 formatslist formatsList
�� 
prcs
�� 
pnam�� "0 activeprocesses activeProcesses
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 activeeditor activeEditor�� 0 editorcount editorCount�� 0 	targetapp 	targetApp
�� 
appr
�� 
prmp
�� 
inSL
�� 
mlsl�� 
�� .gtqpchltns    @   @ ns  
�� 
btns
�� .sysodlogaskr        TEXT�� 0 targetformat targetFormat
�� 
Sclb
�� 
Snj4
�� SxooSotg
�� .SnccSnrsnull���     ****�� 0 theref theRef
�� .JonspClpnull���     ****�� 0 sentetag senteTag�� 0 replacetext replaceText�� 0 	pandoctag 	pandocTag�� 0 thetag theTag
�� 
capp
�� .miscactvnull��� ��� null
�� 
faal
�� eMdsKcmd
�� .prcskprsnull���     ctxt���*��l E�OjvE�O�������vE�O���mvE` Oa  *a -a ,E` UO .�[a a l kh  _ � �E` O��6FY h[OY��O�j E` O_ k  �a k/�&E` Y J_ j +�a a a a a �a k/a  fa ! "�&E` Y a #a $a %kvl &Oa 'E` O_ a a (a a )a _ a k/a  fa ! "�&E` *Oa + *a ,,a -a .l /E` 0O_ 0�&j 1UO_ 0E` 2Oa 3**_ 0a 4a 5m+ 6a 7a 8m+ 6%E` 9O_ *a :  a ;_ 2%a <%E` =OPY E_ *a >  a ?_ 9%a @%E` =OPY '_ *a A  a Ba C%_ 9%a D%a E%E` =Y hO_ =�&j 1O_ a F +*a G_ / *j HOa  a Ia Ja Kl LUUY hascr  ��ޭ