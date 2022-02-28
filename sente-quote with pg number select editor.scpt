FasdUAS 1.101.10   ��   ��    k             l      ��  ��    g a This script allows to cite specific page ranges in references from Sente in various text editors     � 	 	 �   T h i s   s c r i p t   a l l o w s   t o   c i t e   s p e c i f i c   p a g e   r a n g e s   i n   r e f e r e n c e s   f r o m   S e n t e   i n   v a r i o u s   t e x t   e d i t o r s   
  
 l      ��  ��    � � It supports a number of output formats:
	- Sente: native Sente Citation ID, formatted as {Sente CitationID@pageNo}
	- Pandoc: to use with Pandoc and citeproc, formatted as [@Sente+CitationID, pageNo]
	     �  �   I t   s u p p o r t s   a   n u m b e r   o f   o u t p u t   f o r m a t s : 
 	 -   S e n t e :   n a t i v e   S e n t e   C i t a t i o n   I D ,   f o r m a t t e d   a s   { S e n t e   C i t a t i o n I D @ p a g e N o } 
 	 -   P a n d o c :   t o   u s e   w i t h   P a n d o c   a n d   c i t e p r o c ,   f o r m a t t e d   a s   [ @ S e n t e + C i t a t i o n I D ,   p a g e N o ] 
 	      l      ��  ��    c ] The formatted reference is copied to the clipboard and pasted into the selected text editor      �   �   T h e   f o r m a t t e d   r e f e r e n c e   i s   c o p i e d   t o   t h e   c l i p b o a r d   a n d   p a s t e d   i n t o   t h e   s e l e c t e d   t e x t   e d i t o r        l     ��������  ��  ��        i         I     �� ��
�� .aevtoappnull  �   � ****  J          ��  o      ���� 	0 input  ��  ��    l   u     k    u      ! " ! l     �� # $��   #   set input to "7-10"    $ � % % (   s e t   i n p u t   t o   " 7 - 1 0 " "  & ' & l     ( ) * ( r      + , + o     ���� 	0 input   , o      ���� 0 thepn thePn ) "  use fake data for debugging    * � - - 8   u s e   f a k e   d a t a   f o r   d e b u g g i n g '  . / . l   ��������  ��  ��   /  0 1 0 l   �� 2 3��   2 Y S the clipboard should be reset to its original content after the end of this script    3 � 4 4 �   t h e   c l i p b o a r d   s h o u l d   b e   r e s e t   t o   i t s   o r i g i n a l   c o n t e n t   a f t e r   t h e   e n d   o f   t h i s   s c r i p t 1  5 6 5 r     7 8 7 l    9���� 9 I   ���� :
�� .JonsgClp****    ��� null��   : �� ;��
�� 
rtyp ; m    ��
�� 
ctxt��  ��  ��   8 o      ���� (0 theclipboardbefore theClipboardBefore 6  < = < l   �� > ?��   > R L activeEditorsList will be populated in the course of the script's execution    ? � @ @ �   a c t i v e E d i t o r s L i s t   w i l l   b e   p o p u l a t e d   i n   t h e   c o u r s e   o f   t h e   s c r i p t ' s   e x e c u t i o n =  A B A r     C D C J    ����   D o      ���� &0 activeeditorslist activeEditorsList B  E F E l   �� G H��   G w q set a list of text editors whose running status is to be checked. The order can be set to one's own preferences.    H � I I �   s e t   a   l i s t   o f   t e x t   e d i t o r s   w h o s e   r u n n i n g   s t a t u s   i s   t o   b e   c h e c k e d .   T h e   o r d e r   c a n   b e   s e t   t o   o n e ' s   o w n   p r e f e r e n c e s . F  J K J l   �� L M��   L G A *NOTE*: Sublime Text changed its internal name to "sublime_text"    M � N N �   * N O T E * :   S u b l i m e   T e x t   c h a n g e d   i t s   i n t e r n a l   n a m e   t o   " s u b l i m e _ t e x t " K  O P O r     Q R Q J     S S  T U T m     V V � W W  S c r i v e n e r U  X Y X m     Z Z � [ [  S u b l i m e   T e x t Y  \ ] \ m     ^ ^ � _ _  s u b l i m e _ t e x t ]  ` a ` m     b b � c c  M i c r o s o f t   W o r d a  d e d m     f f � g g  T e x t E d i t e  h�� h m     i i � j j 
 n v A L T��   R o      ���� 0 editorslist editorsList P  k l k l   �� m n��   m #  set a list of output formats    n � o o :   s e t   a   l i s t   o f   o u t p u t   f o r m a t s l  p q p l   . r s t r r    . u v u J    * w w  x y x m     z z � { {  P a n d o c / c i t e p r o c y  | } | m      ~ ~ �   ( P a n d o c / c i t e p r o c   n o t e }  � � � m     # � � � � � 
 S e n t e �  ��� � m   # & � � � � �  T E I��   v o      ���� 0 formatslist formatsList s   add Zotero in the future    t � � � 2   a d d   Z o t e r o   i n   t h e   f u t u r e q  � � � l  / /��������  ��  ��   �  � � � l  / /�� � ���   � - '    Generate variable with running apps    � � � � N         G e n e r a t e   v a r i a b l e   w i t h   r u n n i n g   a p p s �  � � � O   / C � � � r   5 B � � � l  5 > ����� � n   5 > � � � 1   : >��
�� 
pnam � 2   5 :��
�� 
prcs��  ��   � o      ���� "0 activeprocesses activeProcesses � m   / 2 � ��                                                                                  sevs  alis    X  
Fischer HD                     BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p   
 F i s c h e r   H D  -System/Library/CoreServices/System Events.app   / ��   �  � � � l  D D��������  ��  ��   �  � � � l  D D�� � ���   � 3 -    Generate list of running text editors        � � � � Z         G e n e r a t e   l i s t   o f   r u n n i n g   t e x t   e d i t o r s         �  � � � X   D s ��� � � Z   X n � ����� � E  X ] � � � o   X [���� "0 activeprocesses activeProcesses � o   [ \���� 0 appname appName � k   ` j � �  � � � r   ` e � � � o   ` a���� 0 appname appName � o      ���� 0 activeeditor activeEditor �  ��� � r   f j � � � o   f g���� 0 appname appName � n       � � �  ;   h i � o   g h���� &0 activeeditorslist activeEditorsList��  ��  ��  �� 0 appname appName � o   G H���� 0 editorslist editorsList �  � � � l  t t��������  ��  ��   �  � � � l  t t�� � ���   � � � ask user to select from running text editors if there are more then one. Otherwiese continue with the sole running text editor or abort the script    � � � �&   a s k   u s e r   t o   s e l e c t   f r o m   r u n n i n g   t e x t   e d i t o r s   i f   t h e r e   a r e   m o r e   t h e n   o n e .   O t h e r w i e s e   c o n t i n u e   w i t h   t h e   s o l e   r u n n i n g   t e x t   e d i t o r   o r   a b o r t   t h e   s c r i p t �  � � � r   t } � � � l  t y ����� � I  t y�� ���
�� .corecnte****       **** � o   t u���� &0 activeeditorslist activeEditorsList��  ��  ��   � o      ���� 0 editorcount editorCount �  � � � Z   ~ � � � � � � =   ~ � � � � o   ~ ����� 0 editorcount editorCount � m   � �����  � r   � � � � � c   � � � � � l  � � ����� � n   � � � � � 4   � ��� �
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
 f a l s e � o      ���� 0 	targetapp 	targetApp��   �    l  � �����   * $ ask user to select an output format    � H   a s k   u s e r   t o   s e l e c t   a n   o u t p u t   f o r m a t  r   � c   �	
	 l  ����� I  ���
�� .gtqpchltns    @   @ ns   o   � ����� 0 formatslist formatsList ��
�� 
appr m   � � � 0 A v a i l a b l e   o u t p u t   f o r m a t s ��
�� 
prmp m   � � � T P i c k   a n   o u t p u t   f o r m a t   f o r   t h e   c i t a t i o n   t a g ��
�� 
inSL l  � ����� n   � � 4   � ���
�� 
cobj m   � �����  o   � ����� 0 formatslist formatsList��  ��   ����
�� 
mlsl m   � ���
�� boovfals��  ��  ��  
 m  ��
�� 
ctxt o      ���� 0 targetformat targetFormat  l 		��������  ��  ��     l 		����~��  �  �~    !"! l 		�}#$�}  # D > retrieve the Citation ID of the selected reference from Sente   $ �%% |   r e t r i e v e   t h e   C i t a t i o n   I D   o f   t h e   s e l e c t e d   r e f e r e n c e   f r o m   S e n t e" &'& O  	-()( k  ,** +,+ r  "-.- l /�|�{/ I �z01
�z .SnccSnrsnull���     ****0 1  �y
�y 
Sclb1 �x2�w
�x 
Snj42 m  �v
�v SxooSotg�w  �|  �{  . o      �u�u 0 theref theRef, 3�t3 I #,�s4�r
�s .JonspClpnull���     ****4 c  #(565 o  #&�q�q 0 theref theRef6 m  &'�p
�p 
ctxt�r  �t  ) m  	77n                                                                                  SntE  alis      B02E9491-F510-4C1D-B801-E#2    BD ����Sente 6.app                                                    ����            ����  
 cu             d   ~/:private:var:folders:84:2v35331s5t97w8g_wvsp4nv80000gq:T:AppTranslocation:B02E9491-F510-4C1D-B801-EFB6ABD9D152:d:Sente 6.app/    S e n t e   6 . a p p  J $ B 0 2 E 9 4 9 1 - F 5 1 0 - 4 C 1 D - B 8 0 1 - E F B 6 A B D 9 D 1 5 2  /d/Sente 6.app  n/private/var/folders/84/2v35331s5t97w8g_wvsp4nv80000gq/T/AppTranslocation/B02E9491-F510-4C1D-B801-EFB6ABD9D152��  ' 898 l ..�o�n�m�o  �n  �m  9 :;: l ..�l<=�l  <   format the citation tag   = �>> 0   f o r m a t   t h e   c i t a t i o n   t a g; ?@? l ..�kAB�k  A   Sente   B �CC    S e n t e@ DED r  .5FGF o  .1�j�j 0 theref theRefG o      �i�i 0 sentetag senteTagE HIH Z  6OJK�h�gJ > 6;LML o  67�f�f 0 thepn thePnM m  7:NN �OO  K r  >KPQP b  >GRSR b  >ETUT o  >A�e�e 0 sentetag senteTagU m  ADVV �WW  @S o  EF�d�d 0 thepn thePnQ o      �c�c 0 sentetag senteTag�h  �g  I XYX l PP�bZ[�b  Z   Pandoc   [ �\\    P a n d o cY ]^] r  Pf_`_ b  Pbaba m  PScc �dd  @b I  Sa�ae�`�a 0 replacetext replaceTexte fgf o  TW�_�_ 0 theref theRefg hih m  WZjj �kk   i l�^l m  Z]mm �nn  +�^  �`  ` o      �]�] 0 	pandoctag 	pandocTag^ opo Z  g�qrs�\q G  g|tut l gnv�[�Zv = gnwxw o  gj�Y�Y 0 targetformat targetFormatx m  jmyy �zz  P a n d o c / c i t e p r o c�[  �Z  u l qx{�X�W{ = qx|}| o  qt�V�V 0 targetformat targetFormat} m  tw~~ �  T E I�X  �W  r Z  ����U�T� > ���� o  ��S�S 0 thepn thePn� m  ���� ���  � r  ����� b  ����� b  ����� o  ���R�R 0 	pandoctag 	pandocTag� m  ���� ���  ,  � o  ���Q�Q 0 thepn thePn� o      �P�P 0 	pandoctag 	pandocTag�U  �T  s ��� = ����� o  ���O�O 0 targetformat targetFormat� m  ���� ��� ( P a n d o c / c i t e p r o c   n o t e� ��N� Z  �����M�L� > ����� o  ���K�K 0 thepn thePn� m  ���� ���  � r  ����� b  ����� b  ����� b  ����� o  ���J�J 0 	pandoctag 	pandocTag� m  ���� ���    [� o  ���I�I 0 thepn thePn� m  ���� ���  ]� o      �H�H 0 	pandoctag 	pandocTag�M  �L  �N  �\  p ��� l ���G�F�E�G  �F  �E  � ��� l ���D���D  �   Sente output   � ���    S e n t e   o u t p u t� ��� Z  �4����C� = ����� o  ���B�B 0 targetformat targetFormat� m  ���� ��� 
 S e n t e� k  ���� ��� r  ����� b  ����� b  ����� m  ���� ���  {� o  ���A�A 0 sentetag senteTag� m  ���� ���  }� o      �@�@ 0 thetag theTag� ��?� l ���>���>  �   Pandoc output   � ���    P a n d o c   o u t p u t�?  � ��� = ����� o  ���=�= 0 targetformat targetFormat� m  ���� ���  P a n d o c / c i t e p r o c� ��� r  ����� b  ����� b  ����� m  ���� ���  [� o  ���<�< 0 	pandoctag 	pandocTag� m  ���� ���  ]� o      �;�; 0 thetag theTag� ��� = ��� o  �:�: 0 targetformat targetFormat� m  �� ��� ( P a n d o c / c i t e p r o c   n o t e� ��� k  �� ��� r  ��� o  �9�9 0 	pandoctag 	pandocTag� o      �8�8 0 thetag theTag� ��7� l �6���6  � ( " TEI output based on pandoc format   � ��� D   T E I   o u t p u t   b a s e d   o n   p a n d o c   f o r m a t�7  � ��� = ��� o  �5�5 0 targetformat targetFormat� m  �� ���  T E I� ��4� r  !0��� b  !,��� b  !(��� m  !$�� ��� & < r e f   t y p e = ' p a n d o c ' >� o  $'�3�3 0 	pandoctag 	pandocTag� m  (+�� ���  < / r e f >� o      �2�2 0 thetag theTag�4  �C  � ��� l 55�1�0�/�1  �0  �/  � ��� l 55�. �.    , & copy the citatin tag to the clipboard    � L   c o p y   t h e   c i t a t i n   t a g   t o   t h e   c l i p b o a r d�  I 5>�-�,
�- .JonspClpnull���     **** c  5: o  58�+�+ 0 thetag theTag m  89�*
�* 
ctxt�,   	 l ??�)�(�'�)  �(  �'  	 

 l ??�&�&    
 debugging    �    d e b u g g i n g  l ??�%�%   %  display dialog (the clipboard)    � >   d i s p l a y   d i a l o g   ( t h e   c l i p b o a r d )  l ??�$�#�"�$  �#  �"    l ??�!�!   I C paste the CitationID and page number into the selected text editor    � �   p a s t e   t h e   C i t a t i o n I D   a n d   p a g e   n u m b e r   i n t o   t h e   s e l e c t e d   t e x t   e d i t o r  Z  ?s� � > ?F  o  ?B�� 0 	targetapp 	targetApp  m  BE!! �"" 
 f a l s e O  Io#$# k  Tn%% &'& I TY���
� .miscactvnull��� ��� null�  �  ' (�( O  Zn)*) I `m�+,
� .prcskprsnull���     ctxt+ m  `c-- �..  v, �/�
� 
faal/ m  fi�
� eMdsKcmd�  * m  Z]00�                                                                                  sevs  alis    X  
Fischer HD                     BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p   
 F i s c h e r   H D  -System/Library/CoreServices/System Events.app   / ��  �  $ 4  IQ�1
� 
capp1 o  MP�� 0 	targetapp 	targetApp�   �   232 l tt����  �  �  3 454 l tt�67�  6 s m reset the clipboard to its original content, unfortunately, this action is done before the end of the script   7 �88 �   r e s e t   t h e   c l i p b o a r d   t o   i t s   o r i g i n a l   c o n t e n t ,   u n f o r t u n a t e l y ,   t h i s   a c t i o n   i s   d o n e   b e f o r e   t h e   e n d   o f   t h e   s c r i p t5 9:9 l tt�;<�  ; 6 0 set the clipboard to theClipboardBefore as text   < �== `   s e t   t h e   c l i p b o a r d   t o   t h e C l i p b o a r d B e f o r e   a s   t e x t: >�> l tt����  �  �  �    4 . remove for debugging / if not used as service     �?? \   r e m o v e   f o r   d e b u g g i n g   /   i f   n o t   u s e d   a s   s e r v i c e  @A@ l     �
�	��
  �	  �  A BCB l     �DE�  D   helper function   E �FF     h e l p e r   f u n c t i o nC G�G i    HIH I      �J�� 0 replacetext replaceTextJ KLK o      �� 0 thetext theTextL MNM o      �� "0 thesearchstring theSearchStringN O�O o      � �  ,0 thereplacementstring theReplacementString�  �  I k      PP QRQ r     STS o     ���� "0 thesearchstring theSearchStringT n     UVU 1    ��
�� 
txdlV 1    ��
�� 
ascrR WXW r    YZY n    	[\[ 2    	��
�� 
citm\ o    ���� 0 thetext theTextZ o      ���� 0 thetextitems theTextItemsX ]^] r    _`_ o    ���� ,0 thereplacementstring theReplacementString` n     aba 1    ��
�� 
txdlb 1    ��
�� 
ascr^ cdc r    efe c    ghg o    ���� 0 thetextitems theTextItemsh m    ��
�� 
ctxtf o      ���� 0 thetext theTextd iji r    klk m    mm �nn  l n     opo 1    ��
�� 
txdlp 1    ��
�� 
ascrj q��q L     rr o    ���� 0 thetext theText��  �       ��stu��  s ����
�� .aevtoappnull  �   � ****�� 0 replacetext replaceTextt �� ����vw��
�� .aevtoappnull  �   � ****�� ��x�� x  ���� 	0 input  ��  v ������ 	0 input  �� 0 appname appNamew X������������ V Z ^ b f i���� z ~ � ����� ��������������������� ��� ��������� ��� ��� ���7��������������NVcjm����y~��������������������!����-�������� 0 thepn thePn
�� 
rtyp
�� 
ctxt
�� .JonsgClp****    ��� null�� (0 theclipboardbefore theClipboardBefore�� &0 activeeditorslist activeEditorsList�� �� 0 editorslist editorsList�� �� 0 formatslist formatsList
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
�� .JonspClpnull���     ****�� 0 sentetag senteTag�� 0 replacetext replaceText�� 0 	pandoctag 	pandocTag
�� 
bool�� 0 thetag theTag
�� 
capp
�� .miscactvnull��� ��� null
�� 
faal
�� eMdsKcmd
�� .prcskprsnull���     ctxt��v�E�O*��l E�OjvE�O�������vE�O��a a a vE` Oa  *a -a ,E` UO .�[a a l kh _ � �E` O��6FY h[OY��O�j E` O_ k  �a k/�&E` Y J_ j +�a a a  a !a "�a k/a #fa $ %�&E` Y a &a 'a (kvl )Oa *E` O_ a a +a  a ,a "_ a k/a #fa $ %�&E` -Oa . *a /,a 0a 1l 2E` 3O_ 3�&j 4UO_ 3E` 5O�a 6 _ 5a 7%�%E` 5Y hOa 8*_ 3a 9a :m+ ;%E` <O_ -a = 
 _ -a > a ?& �a @ _ <a A%�%E` <Y hY -_ -a B  "�a C _ <a D%�%a E%E` <Y hY hO_ -a F  a G_ 5%a H%E` IOPY Q_ -a J  a K_ <%a L%E` IY 5_ -a M  _ <E` IOPY _ -a N  a O_ <%a P%E` IY hO_ I�&j 4O_ a Q +*a R_ / *j SOa  a Ta Ua Vl WUUY hOPu ��I����yz���� 0 replacetext replaceText�� ��{�� {  �������� 0 thetext theText�� "0 thesearchstring theSearchString�� ,0 thereplacementstring theReplacementString��  y ���������� 0 thetext theText�� "0 thesearchstring theSearchString�� ,0 thereplacementstring theReplacementString�� 0 thetextitems theTextItemsz ��������m
�� 
ascr
�� 
txdl
�� 
citm
�� 
ctxt�� !���,FO��-E�O���,FO��&E�O���,FO�ascr  ��ޭ