FasdUAS 1.101.10   ��   ��    k             l      ��  ��    g a This script allows to cite specific page ranges in references from Sente in various text editors     � 	 	 �   T h i s   s c r i p t   a l l o w s   t o   c i t e   s p e c i f i c   p a g e   r a n g e s   i n   r e f e r e n c e s   f r o m   S e n t e   i n   v a r i o u s   t e x t   e d i t o r s   
  
 l      ��  ��    � � It supports a number of output formats:
	- Sente: native Sente Citation ID, formatted as {Sente CitationID@pageNo}
	- Pandoc: to use with Pandoc and citeproc, formatted as [@Sente+CitationID, pageNo]
	     �  �   I t   s u p p o r t s   a   n u m b e r   o f   o u t p u t   f o r m a t s : 
 	 -   S e n t e :   n a t i v e   S e n t e   C i t a t i o n   I D ,   f o r m a t t e d   a s   { S e n t e   C i t a t i o n I D @ p a g e N o } 
 	 -   P a n d o c :   t o   u s e   w i t h   P a n d o c   a n d   c i t e p r o c ,   f o r m a t t e d   a s   [ @ S e n t e + C i t a t i o n I D ,   p a g e N o ] 
 	      l      ��  ��    c ] The formatted reference is copied to the clipboard and pasted into the selected text editor      �   �   T h e   f o r m a t t e d   r e f e r e n c e   i s   c o p i e d   t o   t h e   c l i p b o a r d   a n d   p a s t e d   i n t o   t h e   s e l e c t e d   t e x t   e d i t o r        l     ��������  ��  ��        i         I     �� ��
�� .aevtoappnull  �   � ****  J          ��  o      ���� 	0 input  ��  ��    l        k          ! " ! l     �� # $��   #   set input to "7-10"    $ � % % (   s e t   i n p u t   t o   " 7 - 1 0 " "  & ' & l     ( ) * ( r      + , + o     ���� 	0 input   , o      ���� 0 thepn thePn ) "  use fake data for debugging    * � - - 8   u s e   f a k e   d a t a   f o r   d e b u g g i n g '  . / . l   ��������  ��  ��   /  0 1 0 l   �� 2 3��   2 Y S the clipboard should be reset to its original content after the end of this script    3 � 4 4 �   t h e   c l i p b o a r d   s h o u l d   b e   r e s e t   t o   i t s   o r i g i n a l   c o n t e n t   a f t e r   t h e   e n d   o f   t h i s   s c r i p t 1  5 6 5 r     7 8 7 l    9���� 9 I   ���� :
�� .JonsgClp****    ��� null��   : �� ;��
�� 
rtyp ; m    ��
�� 
ctxt��  ��  ��   8 o      ���� (0 theclipboardbefore theClipboardBefore 6  < = < l   �� > ?��   > R L activeEditorsList will be populated in the course of the script's execution    ? � @ @ �   a c t i v e E d i t o r s L i s t   w i l l   b e   p o p u l a t e d   i n   t h e   c o u r s e   o f   t h e   s c r i p t ' s   e x e c u t i o n =  A B A r     C D C J    ����   D o      ���� &0 activeeditorslist activeEditorsList B  E F E l   �� G H��   G v p set a list of text editors whose running status is to be checked. The order can be set to one's own preferences    H � I I �   s e t   a   l i s t   o f   t e x t   e d i t o r s   w h o s e   r u n n i n g   s t a t u s   i s   t o   b e   c h e c k e d .   T h e   o r d e r   c a n   b e   s e t   t o   o n e ' s   o w n   p r e f e r e n c e s F  J K J r     L M L J     N N  O P O m     Q Q � R R  S c r i v e n e r P  S T S m     U U � V V  S u b l i m e   T e x t T  W X W m     Y Y � Z Z  M i c r o s o f t   W o r d X  [ \ [ m     ] ] � ^ ^  T e x t E d i t \  _�� _ m     ` ` � a a 
 n v A L T��   M o      ���� 0 editorslist editorsList K  b c b l   �� d e��   d #  set a list of output formats    e � f f :   s e t   a   l i s t   o f   o u t p u t   f o r m a t s c  g h g l   & i j k i r    & l m l J    " n n  o p o m     q q � r r  P a n d o c p  s t s m     u u � v v 
 S e n t e t  w�� w m      x x � y y  T E I��   m o      ���� 0 formatslist formatsList j   add Zotero in the future    k � z z 2   a d d   Z o t e r o   i n   t h e   f u t u r e h  { | { l  ' '��������  ��  ��   |  } ~ } l  ' '��  ���    - '    Generate variable with running apps    � � � � N         G e n e r a t e   v a r i a b l e   w i t h   r u n n i n g   a p p s ~  � � � O   ' ; � � � r   - : � � � l  - 6 ����� � n   - 6 � � � 1   2 6��
�� 
pnam � 2   - 2��
�� 
prcs��  ��   � o      ���� "0 activeprocesses activeProcesses � m   ' * � ��                                                                                  sevs  alis    X  
Fischer HD                     BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p   
 F i s c h e r   H D  -System/Library/CoreServices/System Events.app   / ��   �  � � � l  < <��������  ��  ��   �  � � � l  < <�� � ���   � 3 -    Generate list of running text editors        � � � � Z         G e n e r a t e   l i s t   o f   r u n n i n g   t e x t   e d i t o r s         �  � � � X   < k ��� � � Z   P f � ����� � E  P U � � � o   P S���� "0 activeprocesses activeProcesses � o   S T���� 0 appname appName � k   X b � �  � � � r   X ] � � � o   X Y���� 0 appname appName � o      ���� 0 activeeditor activeEditor �  ��� � r   ^ b � � � o   ^ _���� 0 appname appName � n       � � �  ;   ` a � o   _ `���� &0 activeeditorslist activeEditorsList��  ��  ��  �� 0 appname appName � o   ? @���� 0 editorslist editorsList �  � � � l  l l��������  ��  ��   �  � � � l  l l�� � ���   � � � ask user to select from running text editors if there are more then one. Otherwiese continue with the sole running text editor or abort the script    � � � �&   a s k   u s e r   t o   s e l e c t   f r o m   r u n n i n g   t e x t   e d i t o r s   i f   t h e r e   a r e   m o r e   t h e n   o n e .   O t h e r w i e s e   c o n t i n u e   w i t h   t h e   s o l e   r u n n i n g   t e x t   e d i t o r   o r   a b o r t   t h e   s c r i p t �  � � � r   l u � � � l  l q ����� � I  l q�� ���
�� .corecnte****       **** � o   l m���� &0 activeeditorslist activeEditorsList��  ��  ��   � o      ���� 0 editorcount editorCount �  � � � Z   v � � � � � � =   v { � � � o   v y���� 0 editorcount editorCount � m   y z����  � r   ~ � � � � c   ~ � � � � l  ~ � ����� � n   ~ � � � � 4    ��� �
�� 
cobj � m   � �����  � o   ~ ���� &0 activeeditorslist activeEditorsList��  ��   � m   � ���
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
 f a l s e � o      ���� 0 	targetapp 	targetApp��   �  � � � l  � ��� � ���   � * $ ask user to select an output format    � � � � H   a s k   u s e r   t o   s e l e c t   a n   o u t p u t   f o r m a t �  � � � r   �  � � � c   � � � � � l  � � ����� � I  � ��� � 
�� .gtqpchltns    @   @ ns   � o   � ����� 0 formatslist formatsList  ��
�� 
appr m   � � � 0 A v a i l a b l e   o u t p u t   f o r m a t s ��
�� 
prmp m   � � � T P i c k   a n   o u t p u t   f o r m a t   f o r   t h e   c i t a t i o n   t a g ��	

�� 
inSL	 l  � ����� n   � � 4   � ���
�� 
cobj m   � �����  o   � ����� 0 formatslist formatsList��  ��  
 ����
�� 
mlsl m   � ���
�� boovfals��  ��  ��   � m   � ���
�� 
ctxt � o      ���� 0 targetformat targetFormat �  l ��������  ��  ��    l �������  ��  �    l �~�~   D > retrieve the Citation ID of the selected reference from Sente    � |   r e t r i e v e   t h e   C i t a t i o n   I D   o f   t h e   s e l e c t e d   r e f e r e n c e   f r o m   S e n t e  O  % k  $  r   !  l "�}�|" I �{#$
�{ .SnccSnrsnull���     ****# 1  �z
�z 
Sclb$ �y%�x
�y 
Snj4% m  �w
�w SxooSotg�x  �}  �|  ! o      �v�v 0 theref theRef &�u& I $�t'�s
�t .JonspClpnull���     ****' c   ()( o  �r�r 0 theref theRef) m  �q
�q 
ctxt�s  �u   m  **n                                                                                  SntE  alis      BB7A952B-C90E-4490-847E-4#2    BD ����Sente 6.app                                                    ����            ����  
 cu             d   ~/:private:var:folders:84:2v35331s5t97w8g_wvsp4nv80000gq:T:AppTranslocation:BB7A952B-C90E-4490-847E-432574B74AC2:d:Sente 6.app/    S e n t e   6 . a p p  J $ B B 7 A 9 5 2 B - C 9 0 E - 4 4 9 0 - 8 4 7 E - 4 3 2 5 7 4 B 7 4 A C 2  /d/Sente 6.app  n/private/var/folders/84/2v35331s5t97w8g_wvsp4nv80000gq/T/AppTranslocation/BB7A952B-C90E-4490-847E-432574B74AC2��   +,+ l &&�p�o�n�p  �o  �n  , -.- l &&�m/0�m  /   format the citation tag   0 �11 0   f o r m a t   t h e   c i t a t i o n   t a g. 232 l &&�l45�l  4   Sente   5 �66    S e n t e3 787 r  &-9:9 o  &)�k�k 0 theref theRef: o      �j�j 0 sentetag senteTag8 ;<; Z  .G=>�i�h= > .3?@? o  ./�g�g 0 thepn thePn@ m  /2AA �BB  > r  6CCDC b  6?EFE b  6=GHG o  69�f�f 0 sentetag senteTagH m  9<II �JJ  @F o  =>�e�e 0 thepn thePnD o      �d�d 0 sentetag senteTag�i  �h  < KLK l HH�cMN�c  M   Pandoc   N �OO    P a n d o cL PQP r  H^RSR b  HZTUT m  HKVV �WW  @U I  KY�bX�a�b 0 replacetext replaceTextX YZY o  LO�`�` 0 theref theRefZ [\[ m  OR]] �^^   \ _�__ m  RU`` �aa  +�_  �a  S o      �^�^ 0 	pandoctag 	pandocTagQ bcb Z  _xde�]�\d > _dfgf o  _`�[�[ 0 thepn thePng m  `chh �ii  e r  gtjkj b  gplml b  gnnon o  gj�Z�Z 0 	pandoctag 	pandocTago m  jmpp �qq  ,  m o  no�Y�Y 0 thepn thePnk o      �X�X 0 	pandoctag 	pandocTag�]  �\  c rsr l yy�W�V�U�W  �V  �U  s tut l yy�Tvw�T  v   Sente output   w �xx    S e n t e   o u t p u tu yzy Z  y�{|}�S{ = y�~~ o  y|�R�R 0 targetformat targetFormat m  |�� ��� 
 S e n t e| k  ���� ��� r  ����� b  ����� b  ����� m  ���� ���  {� o  ���Q�Q 0 sentetag senteTag� m  ���� ���  }� o      �P�P 0 thetag theTag� ��O� l ���N���N  �   Pandoc output   � ���    P a n d o c   o u t p u t�O  } ��� = ����� o  ���M�M 0 targetformat targetFormat� m  ���� ���  P a n d o c� ��� k  ���� ��� r  ����� b  ����� b  ����� m  ���� ���  [� o  ���L�L 0 	pandoctag 	pandocTag� m  ���� ���  ]� o      �K�K 0 thetag theTag� ��J� l ���I���I  � ( " TEI output based on pandoc format   � ��� D   T E I   o u t p u t   b a s e d   o n   p a n d o c   f o r m a t�J  � ��� = ����� o  ���H�H 0 targetformat targetFormat� m  ���� ���  T E I� ��G� r  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ��� & < r e f   t y p e = ' p a n d o c ' >� m  ���� ���  [� o  ���F�F 0 	pandoctag 	pandocTag� m  ���� ���  ]� m  ���� ���  < / r e f >� o      �E�E 0 thetag theTag�G  �S  z ��� l ���D�C�B�D  �C  �B  � ��� l ���A���A  � , & copy the citatin tag to the clipboard   � ��� L   c o p y   t h e   c i t a t i n   t a g   t o   t h e   c l i p b o a r d� ��� I ���@��?
�@ .JonspClpnull���     ****� c  ����� o  ���>�> 0 thetag theTag� m  ���=
�= 
ctxt�?  � ��� l ���<�;�:�<  �;  �:  � ��� l ���9���9  �  
 debugging   � ���    d e b u g g i n g� ��� l ���8���8  � %  display dialog (the clipboard)   � ��� >   d i s p l a y   d i a l o g   ( t h e   c l i p b o a r d )� ��� l ���7�6�5�7  �6  �5  � ��� l ���4���4  � I C paste the CitationID and page number into the selected text editor   � ��� �   p a s t e   t h e   C i t a t i o n I D   a n d   p a g e   n u m b e r   i n t o   t h e   s e l e c t e d   t e x t   e d i t o r� ��� Z  ����3�2� > ����� o  ���1�1 0 	targetapp 	targetApp� m  ���� ��� 
 f a l s e� O  ���� k  ��� ��� I ���0�/�.
�0 .miscactvnull��� ��� null�/  �.  � ��-� O   ��� I �,��
�, .prcskprsnull���     ctxt� m  	�� ���  v� �+��*
�+ 
faal� m  �)
�) eMdsKcmd�*  � m   ���                                                                                  sevs  alis    X  
Fischer HD                     BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p   
 F i s c h e r   H D  -System/Library/CoreServices/System Events.app   / ��  �-  � 4  ���(�
�( 
capp� o  ���'�' 0 	targetapp 	targetApp�3  �2  � ��� l �&�%�$�&  �%  �$  � ��� l �#� �#  � s m reset the clipboard to its original content, unfortunately, this action is done before the end of the script     � �   r e s e t   t h e   c l i p b o a r d   t o   i t s   o r i g i n a l   c o n t e n t ,   u n f o r t u n a t e l y ,   t h i s   a c t i o n   i s   d o n e   b e f o r e   t h e   e n d   o f   t h e   s c r i p t�  l �"�"   6 0 set the clipboard to theClipboardBefore as text    � `   s e t   t h e   c l i p b o a r d   t o   t h e C l i p b o a r d B e f o r e   a s   t e x t �! l � ���   �  �  �!    4 . remove for debugging / if not used as service     � \   r e m o v e   f o r   d e b u g g i n g   /   i f   n o t   u s e d   a s   s e r v i c e  	
	 l     ����  �  �  
  l     ��     helper function    �     h e l p e r   f u n c t i o n � i     I      ��� 0 replacetext replaceText  o      �� 0 thetext theText  o      �� "0 thesearchstring theSearchString � o      �� ,0 thereplacementstring theReplacementString�  �   k        r      o     �� "0 thesearchstring theSearchString n      1    �
� 
txdl 1    �
� 
ascr  !  r    "#" n    	$%$ 2    	�
� 
citm% o    �� 0 thetext theText# o      �� 0 thetextitems theTextItems! &'& r    ()( o    �� ,0 thereplacementstring theReplacementString) n     *+* 1    �
� 
txdl+ 1    �

�
 
ascr' ,-, r    ./. c    010 o    �	�	 0 thetextitems theTextItems1 m    �
� 
ctxt/ o      �� 0 thetext theText- 232 r    454 m    66 �77  5 n     898 1    �
� 
txdl9 1    �
� 
ascr3 :�: L     ;; o    �� 0 thetext theText�  �       �<=>�  < �� 
� .aevtoappnull  �   � ****�  0 replacetext replaceText= �� ����?@��
�� .aevtoappnull  �   � ****�� ��A�� A  ���� 	0 input  ��  ? ������ 	0 input  �� 0 appname appName@ O������������ Q U Y ] `���� q u x�� ��������������������� ��� ��������� ��� ��� ���*��������������AIV]`����hp��������������������������� 0 thepn thePn
�� 
rtyp
�� 
ctxt
�� .JonsgClp****    ��� null�� (0 theclipboardbefore theClipboardBefore�� &0 activeeditorslist activeEditorsList�� �� 0 editorslist editorsList�� 0 formatslist formatsList
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
�� .prcskprsnull���     ctxt���E�O*��l E�OjvE�O������vE�O���mvE` Oa  *a -a ,E` UO .�[a a l kh _ � �E` O��6FY h[OY��O�j E` O_ k  �a k/�&E` Y J_ j +�a a a a a �a k/a  fa ! "�&E` Y a #a $a %kvl &Oa 'E` O_ a a (a a )a _ a k/a  fa ! "�&E` *Oa + *a ,,a -a .l /E` 0O_ 0�&j 1UO_ 0E` 2O�a 3 _ 2a 4%�%E` 2Y hOa 5*_ 0a 6a 7m+ 8%E` 9O�a : _ 9a ;%�%E` 9Y hO_ *a <  a =_ 2%a >%E` ?OPY E_ *a @  a A_ 9%a B%E` ?OPY '_ *a C  a Da E%_ 9%a F%a G%E` ?Y hO_ ?�&j 1O_ a H +*a I_ / *j JOa  a Ka La Ml NUUY hOP> ������BC���� 0 replacetext replaceText�� ��D�� D  �������� 0 thetext theText�� "0 thesearchstring theSearchString�� ,0 thereplacementstring theReplacementString��  B ���������� 0 thetext theText�� "0 thesearchstring theSearchString�� ,0 thereplacementstring theReplacementString�� 0 thetextitems theTextItemsC ��������6
�� 
ascr
�� 
txdl
�� 
citm
�� 
ctxt�� !���,FO��-E�O���,FO��&E�O���,FO�ascr  ��ޭ