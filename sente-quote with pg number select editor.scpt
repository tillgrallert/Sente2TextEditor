FasdUAS 1.101.10   ��   ��    k             l      ��  ��    g a This script allows to cite specific page ranges in references from Sente in various text editors     � 	 	 �   T h i s   s c r i p t   a l l o w s   t o   c i t e   s p e c i f i c   p a g e   r a n g e s   i n   r e f e r e n c e s   f r o m   S e n t e   i n   v a r i o u s   t e x t   e d i t o r s   
  
 l      ��  ��    � � It supports a number of output formats:
	- Sente: native Sente Citation ID, formatted as {Sente CitationID@pageNo}
	- Pandoc: to use with Pandoc and citeproc, formatted as [@Sente+CitationID, pageNo]
	     �  �   I t   s u p p o r t s   a   n u m b e r   o f   o u t p u t   f o r m a t s : 
 	 -   S e n t e :   n a t i v e   S e n t e   C i t a t i o n   I D ,   f o r m a t t e d   a s   { S e n t e   C i t a t i o n I D @ p a g e N o } 
 	 -   P a n d o c :   t o   u s e   w i t h   P a n d o c   a n d   c i t e p r o c ,   f o r m a t t e d   a s   [ @ S e n t e + C i t a t i o n I D ,   p a g e N o ] 
 	      l      ��  ��    c ] The formatted reference is copied to the clipboard and pasted into the selected text editor      �   �   T h e   f o r m a t t e d   r e f e r e n c e   i s   c o p i e d   t o   t h e   c l i p b o a r d   a n d   p a s t e d   i n t o   t h e   s e l e c t e d   t e x t   e d i t o r        l     ��������  ��  ��        i         I     �� ��
�� .aevtoappnull  �   � ****  J          ��  o      ���� 	0 input  ��  ��    l        k          ! " ! l     �� # $��   #   set input to "7-10"    $ � % % (   s e t   i n p u t   t o   " 7 - 1 0 " "  & ' & l     ( ) * ( r      + , + o     ���� 	0 input   , o      ���� 0 thepn thePn ) "  use fake data for debugging    * � - - 8   u s e   f a k e   d a t a   f o r   d e b u g g i n g '  . / . l   ��������  ��  ��   /  0 1 0 l   �� 2 3��   2 Y S the clipboard should be reset to its original content after the end of this script    3 � 4 4 �   t h e   c l i p b o a r d   s h o u l d   b e   r e s e t   t o   i t s   o r i g i n a l   c o n t e n t   a f t e r   t h e   e n d   o f   t h i s   s c r i p t 1  5 6 5 r     7 8 7 l    9���� 9 I   ���� :
�� .JonsgClp****    ��� null��   : �� ;��
�� 
rtyp ; m    ��
�� 
ctxt��  ��  ��   8 o      ���� (0 theclipboardbefore theClipboardBefore 6  < = < l   �� > ?��   > R L activeEditorsList will be populated in the course of the script's execution    ? � @ @ �   a c t i v e E d i t o r s L i s t   w i l l   b e   p o p u l a t e d   i n   t h e   c o u r s e   o f   t h e   s c r i p t ' s   e x e c u t i o n =  A B A r     C D C J    ����   D o      ���� &0 activeeditorslist activeEditorsList B  E F E l   �� G H��   G w q set a list of text editors whose running status is to be checked. The order can be set to one's own preferences.    H � I I �   s e t   a   l i s t   o f   t e x t   e d i t o r s   w h o s e   r u n n i n g   s t a t u s   i s   t o   b e   c h e c k e d .   T h e   o r d e r   c a n   b e   s e t   t o   o n e ' s   o w n   p r e f e r e n c e s . F  J K J l   �� L M��   L G A *NOTE*: Sublime Text changed its internal name to "sublime_text"    M � N N �   * N O T E * :   S u b l i m e   T e x t   c h a n g e d   i t s   i n t e r n a l   n a m e   t o   " s u b l i m e _ t e x t " K  O P O r     Q R Q J     S S  T U T m     V V � W W  S c r i v e n e r U  X Y X m     Z Z � [ [  S u b l i m e   T e x t Y  \ ] \ m     ^ ^ � _ _  s u b l i m e _ t e x t ]  ` a ` m     b b � c c  M i c r o s o f t   W o r d a  d e d m     f f � g g  T e x t E d i t e  h�� h m     i i � j j 
 n v A L T��   R o      ���� 0 editorslist editorsList P  k l k l   �� m n��   m #  set a list of output formats    n � o o :   s e t   a   l i s t   o f   o u t p u t   f o r m a t s l  p q p l   ) r s t r r    ) u v u J    % w w  x y x m     z z � { {  P a n d o c y  | } | m      ~ ~ �   
 S e n t e }  ��� � m     # � � � � �  T E I��   v o      ���� 0 formatslist formatsList s   add Zotero in the future    t � � � 2   a d d   Z o t e r o   i n   t h e   f u t u r e q  � � � l  * *��������  ��  ��   �  � � � l  * *�� � ���   � - '    Generate variable with running apps    � � � � N         G e n e r a t e   v a r i a b l e   w i t h   r u n n i n g   a p p s �  � � � O   * > � � � r   0 = � � � l  0 9 ����� � n   0 9 � � � 1   5 9��
�� 
pnam � 2   0 5��
�� 
prcs��  ��   � o      ���� "0 activeprocesses activeProcesses � m   * - � ��                                                                                  sevs  alis    X  
Fischer HD                     BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p   
 F i s c h e r   H D  -System/Library/CoreServices/System Events.app   / ��   �  � � � l  ? ?��������  ��  ��   �  � � � l  ? ?�� � ���   � 3 -    Generate list of running text editors        � � � � Z         G e n e r a t e   l i s t   o f   r u n n i n g   t e x t   e d i t o r s         �  � � � X   ? n ��� � � Z   S i � ����� � E  S X � � � o   S V���� "0 activeprocesses activeProcesses � o   V W���� 0 appname appName � k   [ e � �  � � � r   [ ` � � � o   [ \���� 0 appname appName � o      ���� 0 activeeditor activeEditor �  ��� � r   a e � � � o   a b���� 0 appname appName � n       � � �  ;   c d � o   b c���� &0 activeeditorslist activeEditorsList��  ��  ��  �� 0 appname appName � o   B C���� 0 editorslist editorsList �  � � � l  o o��������  ��  ��   �  � � � l  o o�� � ���   � � � ask user to select from running text editors if there are more then one. Otherwiese continue with the sole running text editor or abort the script    � � � �&   a s k   u s e r   t o   s e l e c t   f r o m   r u n n i n g   t e x t   e d i t o r s   i f   t h e r e   a r e   m o r e   t h e n   o n e .   O t h e r w i e s e   c o n t i n u e   w i t h   t h e   s o l e   r u n n i n g   t e x t   e d i t o r   o r   a b o r t   t h e   s c r i p t �  � � � r   o x � � � l  o t ����� � I  o t�� ���
�� .corecnte****       **** � o   o p���� &0 activeeditorslist activeEditorsList��  ��  ��   � o      ���� 0 editorcount editorCount �  � � � Z   y � � � � � � =   y ~ � � � o   y |���� 0 editorcount editorCount � m   | }����  � r   � � � � � c   � � � � � l  � � ����� � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� &0 activeeditorslist activeEditorsList��  ��   � m   � ���
�� 
ctxt � o      ���� 0 	targetapp 	targetApp �  � � � ?   � � � � � o   � ����� 0 editorcount editorCount � m   � �����   �  ��� � r   � � � � � c   � � � � � l  � � ����� � I  � ��� � �
�� .gtqpchltns    @   @ ns   � o   � ����� &0 activeeditorslist activeEditorsList � �� � �
�� 
appr � m   � � � � � � � ( R u n n i n g   t e x t   e d i t o r s � �� � �
�� 
prmp � m   � � � � � � � t P i c k   a   t e x t   e d i t o r   t o   s e n d   t h e   r e f e r e n c e ' s   c i t a t i o n   t a g   t o � �� � �
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
 f a l s e � o      ���� 0 	targetapp 	targetApp��   �  � � � l  � ��� � ���   � * $ ask user to select an output format    � �   H   a s k   u s e r   t o   s e l e c t   a n   o u t p u t   f o r m a t �  r   � c   � � l  � ����� I  � ���	
�� .gtqpchltns    @   @ ns   o   � ����� 0 formatslist formatsList	 ��

�� 
appr
 m   � � � 0 A v a i l a b l e   o u t p u t   f o r m a t s ��
�� 
prmp m   � � � T P i c k   a n   o u t p u t   f o r m a t   f o r   t h e   c i t a t i o n   t a g ��
�� 
inSL l  � ����� n   � � 4   � ���
�� 
cobj m   � �����  o   � ����� 0 formatslist formatsList��  ��   ����
�� 
mlsl m   � ���
�� boovfals��  ��  ��   m   � ���
�� 
ctxt o      ���� 0 targetformat targetFormat  l ��������  ��  ��    l ����~��  �  �~    l �} �}   D > retrieve the Citation ID of the selected reference from Sente     �!! |   r e t r i e v e   t h e   C i t a t i o n   I D   o f   t h e   s e l e c t e d   r e f e r e n c e   f r o m   S e n t e "#" O  ($%$ k  
'&& '(' r  
)*) l 
+�|�{+ I 
�z,-
�z .SnccSnrsnull���     ****, 1  
�y
�y 
Sclb- �x.�w
�x 
Snj4. m  �v
�v SxooSotg�w  �|  �{  * o      �u�u 0 theref theRef( /�t/ I '�s0�r
�s .JonspClpnull���     ****0 c  #121 o  !�q�q 0 theref theRef2 m  !"�p
�p 
ctxt�r  �t  % m  33n                                                                                  SntE  alis      BB7A952B-C90E-4490-847E-4#2    BD ����Sente 6.app                                                    ����            ����  
 cu             d   ~/:private:var:folders:84:2v35331s5t97w8g_wvsp4nv80000gq:T:AppTranslocation:BB7A952B-C90E-4490-847E-432574B74AC2:d:Sente 6.app/    S e n t e   6 . a p p  J $ B B 7 A 9 5 2 B - C 9 0 E - 4 4 9 0 - 8 4 7 E - 4 3 2 5 7 4 B 7 4 A C 2  /d/Sente 6.app  n/private/var/folders/84/2v35331s5t97w8g_wvsp4nv80000gq/T/AppTranslocation/BB7A952B-C90E-4490-847E-432574B74AC2��  # 454 l ))�o�n�m�o  �n  �m  5 676 l ))�l89�l  8   format the citation tag   9 �:: 0   f o r m a t   t h e   c i t a t i o n   t a g7 ;<; l ))�k=>�k  =   Sente   > �??    S e n t e< @A@ r  )0BCB o  ),�j�j 0 theref theRefC o      �i�i 0 sentetag senteTagA DED Z  1JFG�h�gF > 16HIH o  12�f�f 0 thepn thePnI m  25JJ �KK  G r  9FLML b  9BNON b  9@PQP o  9<�e�e 0 sentetag senteTagQ m  <?RR �SS  @O o  @A�d�d 0 thepn thePnM o      �c�c 0 sentetag senteTag�h  �g  E TUT l KK�bVW�b  V   Pandoc   W �XX    P a n d o cU YZY r  Ka[\[ b  K]]^] m  KN__ �``  @^ I  N\�aa�`�a 0 replacetext replaceTexta bcb o  OR�_�_ 0 theref theRefc ded m  RUff �gg   e h�^h m  UXii �jj  +�^  �`  \ o      �]�] 0 	pandoctag 	pandocTagZ klk Z  b{mn�\�[m > bgopo o  bc�Z�Z 0 thepn thePnp m  cfqq �rr  n r  jwsts b  jsuvu b  jqwxw o  jm�Y�Y 0 	pandoctag 	pandocTagx m  mpyy �zz  ,  v o  qr�X�X 0 thepn thePnt o      �W�W 0 	pandoctag 	pandocTag�\  �[  l {|{ l ||�V�U�T�V  �U  �T  | }~} l ||�S��S     Sente output   � ���    S e n t e   o u t p u t~ ��� Z  |�����R� = |���� o  |�Q�Q 0 targetformat targetFormat� m  ��� ��� 
 S e n t e� k  ���� ��� r  ����� b  ����� b  ����� m  ���� ���  {� o  ���P�P 0 sentetag senteTag� m  ���� ���  }� o      �O�O 0 thetag theTag� ��N� l ���M���M  �   Pandoc output   � ���    P a n d o c   o u t p u t�N  � ��� = ����� o  ���L�L 0 targetformat targetFormat� m  ���� ���  P a n d o c� ��� k  ���� ��� r  ����� b  ����� b  ����� m  ���� ���  [� o  ���K�K 0 	pandoctag 	pandocTag� m  ���� ���  ]� o      �J�J 0 thetag theTag� ��I� l ���H���H  � ( " TEI output based on pandoc format   � ��� D   T E I   o u t p u t   b a s e d   o n   p a n d o c   f o r m a t�I  � ��� = ����� o  ���G�G 0 targetformat targetFormat� m  ���� ���  T E I� ��F� r  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ��� & < r e f   t y p e = ' p a n d o c ' >� m  ���� ���  [� o  ���E�E 0 	pandoctag 	pandocTag� m  ���� ���  ]� m  ���� ���  < / r e f >� o      �D�D 0 thetag theTag�F  �R  � ��� l ���C�B�A�C  �B  �A  � ��� l ���@���@  � , & copy the citatin tag to the clipboard   � ��� L   c o p y   t h e   c i t a t i n   t a g   t o   t h e   c l i p b o a r d� ��� I ���?��>
�? .JonspClpnull���     ****� c  ����� o  ���=�= 0 thetag theTag� m  ���<
�< 
ctxt�>  � ��� l ���;�:�9�;  �:  �9  � ��� l ���8���8  �  
 debugging   � ���    d e b u g g i n g� ��� l ���7���7  � %  display dialog (the clipboard)   � ��� >   d i s p l a y   d i a l o g   ( t h e   c l i p b o a r d )� ��� l ���6�5�4�6  �5  �4  � ��� l ���3���3  � I C paste the CitationID and page number into the selected text editor   � ��� �   p a s t e   t h e   C i t a t i o n I D   a n d   p a g e   n u m b e r   i n t o   t h e   s e l e c t e d   t e x t   e d i t o r� ��� Z  ����2�1� > ����� o  ���0�0 0 	targetapp 	targetApp� m  ���� ��� 
 f a l s e� O  ���� k  ��� ��� I ��/�.�-
�/ .miscactvnull��� ��� null�.  �-  � ��,� O  ��� I 	�+��
�+ .prcskprsnull���     ctxt� m  	�� �    v� �*�)
�* 
faal m  �(
�( eMdsKcmd�)  � m  �                                                                                  sevs  alis    X  
Fischer HD                     BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p   
 F i s c h e r   H D  -System/Library/CoreServices/System Events.app   / ��  �,  � 4  ���'
�' 
capp o  ���&�& 0 	targetapp 	targetApp�2  �1  �  l �%�$�#�%  �$  �#    l �"	�"   s m reset the clipboard to its original content, unfortunately, this action is done before the end of the script   	 �

 �   r e s e t   t h e   c l i p b o a r d   t o   i t s   o r i g i n a l   c o n t e n t ,   u n f o r t u n a t e l y ,   t h i s   a c t i o n   i s   d o n e   b e f o r e   t h e   e n d   o f   t h e   s c r i p t  l �!�!   6 0 set the clipboard to theClipboardBefore as text    � `   s e t   t h e   c l i p b o a r d   t o   t h e C l i p b o a r d B e f o r e   a s   t e x t �  l ����  �  �  �     4 . remove for debugging / if not used as service     � \   r e m o v e   f o r   d e b u g g i n g   /   i f   n o t   u s e d   a s   s e r v i c e   l     ����  �  �    l     ��     helper function    �     h e l p e r   f u n c t i o n � i     I      ��� 0 replacetext replaceText  o      �� 0 thetext theText   o      �� "0 thesearchstring theSearchString  !�! o      �� ,0 thereplacementstring theReplacementString�  �   k      "" #$# r     %&% o     �� "0 thesearchstring theSearchString& n     '(' 1    �
� 
txdl( 1    �
� 
ascr$ )*) r    +,+ n    	-.- 2    	�
� 
citm. o    �� 0 thetext theText, o      �� 0 thetextitems theTextItems* /0/ r    121 o    �� ,0 thereplacementstring theReplacementString2 n     343 1    �

�
 
txdl4 1    �	
�	 
ascr0 565 r    787 c    9:9 o    �� 0 thetextitems theTextItems: m    �
� 
ctxt8 o      �� 0 thetext theText6 ;<; r    =>= m    ?? �@@  > n     ABA 1    �
� 
txdlB 1    �
� 
ascr< C�C L     DD o    �� 0 thetext theText�  �       �EFG�  E � ��
�  .aevtoappnull  �   � ****�� 0 replacetext replaceTextF �� ����HI��
�� .aevtoappnull  �   � ****�� ��J�� J  ���� 	0 input  ��  H ������ 	0 input  �� 0 appname appNameI P������������ V Z ^ b f i���� z ~ ��� ��������������������� ��� ��������� ��� ��� ���3��������������JR_fi����qy��������������������������� 0 thepn thePn
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
�� .prcskprsnull���     ctxt���E�O*��l E�OjvE�O�������vE�O��a mvE` Oa  *a -a ,E` UO .�[a a l kh _ � �E` O��6FY h[OY��O�j E` O_ k  �a k/�&E` Y J_ j +�a a a a a  �a k/a !fa " #�&E` Y a $a %a &kvl 'Oa (E` O_ a a )a a *a  _ a k/a !fa " #�&E` +Oa , *a -,a .a /l 0E` 1O_ 1�&j 2UO_ 1E` 3O�a 4 _ 3a 5%�%E` 3Y hOa 6*_ 1a 7a 8m+ 9%E` :O�a ; _ :a <%�%E` :Y hO_ +a =  a >_ 3%a ?%E` @OPY E_ +a A  a B_ :%a C%E` @OPY '_ +a D  a Ea F%_ :%a G%a H%E` @Y hO_ @�&j 2O_ a I +*a J_ / *j KOa  a La Ma Nl OUUY hOPG ������KL���� 0 replacetext replaceText�� ��M�� M  �������� 0 thetext theText�� "0 thesearchstring theSearchString�� ,0 thereplacementstring theReplacementString��  K ���������� 0 thetext theText�� "0 thesearchstring theSearchString�� ,0 thereplacementstring theReplacementString�� 0 thetextitems theTextItemsL ��������?
�� 
ascr
�� 
txdl
�� 
citm
�� 
ctxt�� !���,FO��-E�O���,FO��&E�O���,FO� ascr  ��ޭ