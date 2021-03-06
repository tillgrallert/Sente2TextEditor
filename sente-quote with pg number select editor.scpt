FasdUAS 1.101.10   ��   ��    k             l      ��  ��    g a This script allows to cite specific page ranges in references from Sente in various text editors     � 	 	 �   T h i s   s c r i p t   a l l o w s   t o   c i t e   s p e c i f i c   p a g e   r a n g e s   i n   r e f e r e n c e s   f r o m   S e n t e   i n   v a r i o u s   t e x t   e d i t o r s   
  
 l      ��  ��    � � It supports a number of output formats:
	- Sente: native Sente Citation ID, formatted as {Sente CitationID@pageNo}
	- Pandoc: to use with Pandoc and citeproc, formatted as [@Sente+CitationID, pageNo]
	     �  �   I t   s u p p o r t s   a   n u m b e r   o f   o u t p u t   f o r m a t s : 
 	 -   S e n t e :   n a t i v e   S e n t e   C i t a t i o n   I D ,   f o r m a t t e d   a s   { S e n t e   C i t a t i o n I D @ p a g e N o } 
 	 -   P a n d o c :   t o   u s e   w i t h   P a n d o c   a n d   c i t e p r o c ,   f o r m a t t e d   a s   [ @ S e n t e + C i t a t i o n I D ,   p a g e N o ] 
 	      l      ��  ��    c ] The formatted reference is copied to the clipboard and pasted into the selected text editor      �   �   T h e   f o r m a t t e d   r e f e r e n c e   i s   c o p i e d   t o   t h e   c l i p b o a r d   a n d   p a s t e d   i n t o   t h e   s e l e c t e d   t e x t   e d i t o r        l     ��������  ��  ��        i         I     �� ��
�� .aevtoappnull  �   � ****  J          ��  o      ���� 	0 input  ��  ��    l   �     k    �      ! " ! l     �� # $��   #   set input to "7-10"    $ � % % (   s e t   i n p u t   t o   " 7 - 1 0 " "  & ' & l     ( ) * ( r      + , + o     ���� 	0 input   , o      ���� 0 thepn thePn ) "  use fake data for debugging    * � - - 8   u s e   f a k e   d a t a   f o r   d e b u g g i n g '  . / . l   ��������  ��  ��   /  0 1 0 l   �� 2 3��   2 Y S the clipboard should be reset to its original content after the end of this script    3 � 4 4 �   t h e   c l i p b o a r d   s h o u l d   b e   r e s e t   t o   i t s   o r i g i n a l   c o n t e n t   a f t e r   t h e   e n d   o f   t h i s   s c r i p t 1  5 6 5 r     7 8 7 l    9���� 9 I   ���� :
�� .JonsgClp****    ��� null��   : �� ;��
�� 
rtyp ; m    ��
�� 
ctxt��  ��  ��   8 o      ���� (0 theclipboardbefore theClipboardBefore 6  < = < l   �� > ?��   > R L activeEditorsList will be populated in the course of the script's execution    ? � @ @ �   a c t i v e E d i t o r s L i s t   w i l l   b e   p o p u l a t e d   i n   t h e   c o u r s e   o f   t h e   s c r i p t ' s   e x e c u t i o n =  A B A r     C D C J    ����   D o      ���� &0 activeeditorslist activeEditorsList B  E F E l   �� G H��   G v p set a list of text editors whose running status is to be checked. The order can be set to one's own preferences    H � I I �   s e t   a   l i s t   o f   t e x t   e d i t o r s   w h o s e   r u n n i n g   s t a t u s   i s   t o   b e   c h e c k e d .   T h e   o r d e r   c a n   b e   s e t   t o   o n e ' s   o w n   p r e f e r e n c e s F  J K J r     L M L J     N N  O P O m     Q Q � R R  S c r i v e n e r P  S T S m     U U � V V  S u b l i m e   T e x t T  W X W m     Y Y � Z Z  M i c r o s o f t   W o r d X  [ \ [ m     ] ] � ^ ^  T e x t E d i t \  _�� _ m     ` ` � a a 
 n v A L T��   M o      ���� 0 editorslist editorsList K  b c b l   �� d e��   d #  set a list of output formats    e � f f :   s e t   a   l i s t   o f   o u t p u t   f o r m a t s c  g h g l   # i j k i r    # l m l J    ! n n  o p o m     q q � r r  P a n d o c p  s�� s m     t t � u u 
 S e n t e��   m o      ���� 0 formatslist formatsList j   add Zotero in the future    k � v v 2   a d d   Z o t e r o   i n   t h e   f u t u r e h  w x w l  $ $��������  ��  ��   x  y z y l  $ $�� { |��   { - '    Generate variable with running apps    | � } } N         G e n e r a t e   v a r i a b l e   w i t h   r u n n i n g   a p p s z  ~  ~ O   $ 8 � � � r   * 7 � � � l  * 3 ����� � n   * 3 � � � 1   / 3��
�� 
pnam � 2   * /��
�� 
prcs��  ��   � o      ���� "0 activeprocesses activeProcesses � m   $ ' � ��                                                                                  sevs  alis    X  
Fischer HD                     BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p   
 F i s c h e r   H D  -System/Library/CoreServices/System Events.app   / ��     � � � l  9 9��������  ��  ��   �  � � � l  9 9�� � ���   � 3 -    Generate list of running text editors        � � � � Z         G e n e r a t e   l i s t   o f   r u n n i n g   t e x t   e d i t o r s         �  � � � X   9 h ��� � � Z   M c � ����� � E  M R � � � o   M P���� "0 activeprocesses activeProcesses � o   P Q���� 0 appname appName � k   U _ � �  � � � r   U Z � � � o   U V���� 0 appname appName � o      ���� 0 activeeditor activeEditor �  ��� � r   [ _ � � � o   [ \���� 0 appname appName � n       � � �  ;   ] ^ � o   \ ]���� &0 activeeditorslist activeEditorsList��  ��  ��  �� 0 appname appName � o   < =���� 0 editorslist editorsList �  � � � l  i i��������  ��  ��   �  � � � l  i i�� � ���   � � � ask user to select from running text editors if there are more then one. Otherwiese continue with the sole running text editor or abort the script    � � � �&   a s k   u s e r   t o   s e l e c t   f r o m   r u n n i n g   t e x t   e d i t o r s   i f   t h e r e   a r e   m o r e   t h e n   o n e .   O t h e r w i e s e   c o n t i n u e   w i t h   t h e   s o l e   r u n n i n g   t e x t   e d i t o r   o r   a b o r t   t h e   s c r i p t �  � � � r   i r � � � l  i n ����� � I  i n�� ���
�� .corecnte****       **** � o   i j���� &0 activeeditorslist activeEditorsList��  ��  ��   � o      ���� 0 editorcount editorCount �  � � � Z   s � � � � � � =   s x � � � o   s v���� 0 editorcount editorCount � m   v w����  � r   { � � � � c   { � � � � l  { � ����� � n   { � � � � 4   | ��� �
�� 
cobj � m    �����  � o   { |���� &0 activeeditorslist activeEditorsList��  ��   � m   � ���
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
 f a l s e � o      ���� 0 	targetapp 	targetApp��   �  � � � l  � ��� � ���   � * $ ask user to select an output format    � � � � H   a s k   u s e r   t o   s e l e c t   a n   o u t p u t   f o r m a t �  � � � r   � � � � � c   � � � � � l  � � ����� � I  � ��� � �
�� .gtqpchltns    @   @ ns   � o   � ����� 0 formatslist formatsList � �� � �
�� 
appr � m   � � � � �   0 A v a i l a b l e   o u t p u t   f o r m a t s � ��
�� 
prmp m   � � � T P i c k   a n   o u t p u t   f o r m a t   f o r   t h e   c i t a t i o n   t a g ��
�� 
inSL l  � ����� n   � �	 4   � ���

�� 
cobj
 m   � ����� 	 o   � ����� 0 formatslist formatsList��  ��   ����
�� 
mlsl m   � ���
�� boovfals��  ��  ��   � m   � ���
�� 
ctxt � o      ���� 0 targetformat targetFormat �  l  � ���������  ��  ��    l  � ��������  ��  �    l  � ��~�~   D > retrieve the Citation ID of the selected reference from Sente    � |   r e t r i e v e   t h e   C i t a t i o n   I D   o f   t h e   s e l e c t e d   r e f e r e n c e   f r o m   S e n t e  O   � k     r    l  �}�| I  �{ 
�{ .SnccSnrsnull���     **** 1   �z
�z 
Sclb  �y!�x
�y 
Snj4! m  �w
�w SxooSotg�x  �}  �|   o      �v�v 0 theref theRef "�u" I �t#�s
�t .JonspClpnull���     ****# c  $%$ o  �r�r 0 theref theRef% m  �q
�q 
ctxt�s  �u   m   � �&&n                                                                                  SntE  alis      8D811D83-5A70-4713-BA96-E#2    BD ����Sente 6.app                                                    ����            ����  
 cu             d   ~/:private:var:folders:84:2v35331s5t97w8g_wvsp4nv80000gq:T:AppTranslocation:8D811D83-5A70-4713-BA96-E4F515618890:d:Sente 6.app/    S e n t e   6 . a p p  J $ 8 D 8 1 1 D 8 3 - 5 A 7 0 - 4 7 1 3 - B A 9 6 - E 4 F 5 1 5 6 1 8 8 9 0  /d/Sente 6.app  n/private/var/folders/84/2v35331s5t97w8g_wvsp4nv80000gq/T/AppTranslocation/8D811D83-5A70-4713-BA96-E4F515618890��   '(' l �p�o�n�p  �o  �n  ( )*) l �m+,�m  +   format the citation tag    , �-- 2   f o r m a t   t h e   c i t a t i o n   t a g  * ./. l �l01�l  0   Sente output   1 �22    S e n t e   o u t p u t/ 343 Z  �567�k5 = &898 o  "�j�j 0 targetformat targetFormat9 m  "%:: �;; 
 S e n t e6 k  )^<< =>= r  )4?@? b  )0ABA m  ),CC �DD  {B o  ,/�i�i 0 theref theRef@ o      �h�h 0 thetag theTag> EFE Z  5\GH�gIG = 5:JKJ o  56�f�f 0 thepn thePnK m  69LL �MM  H r  =HNON b  =DPQP o  =@�e�e 0 thetag theTagQ m  @CRR �SS  }O o      �d�d 0 thetag theTag�g  I r  K\TUT b  KXVWV b  KTXYX b  KRZ[Z o  KN�c�c 0 thetag theTag[ m  NQ\\ �]]  @Y o  RS�b�b 0 thepn thePnW m  TW^^ �__  }U o      �a�a 0 thetag theTagF `�`` l ]]�_ab�_  a   Pandoc output   b �cc    P a n d o c   o u t p u t�`  7 ded = ahfgf o  ad�^�^ 0 targetformat targetFormatg m  dghh �ii  P a n d o ce j�]j k  k�kk lml l kk�\no�\  n   replace blanks with "+"   o �pp 0   r e p l a c e   b l a n k s   w i t h   " + "m qrq r  k}sts I  ky�[u�Z�[ 0 replacetext replaceTextu vwv o  lo�Y�Y 0 theref theRefw xyx m  orzz �{{   y |�X| m  ru}} �~~  +�X  �Z  t o      �W�W 0 thetag theTagr � r  ~���� b  ~���� m  ~��� ���  [ @� o  ���V�V 0 thetag theTag� o      �U�U 0 thetag theTag� ��T� Z  �����S�� = ����� o  ���R�R 0 thepn thePn� m  ���� ���  � r  ����� b  ����� o  ���Q�Q 0 thetag theTag� m  ���� ���  ]� o      �P�P 0 thetag theTag�S  � r  ����� b  ����� b  ����� b  ����� o  ���O�O 0 thetag theTag� m  ���� ���  ,  � o  ���N�N 0 thepn thePn� m  ���� ���  ]� o      �M�M 0 thetag theTag�T  �]  �k  4 ��� l ���L�K�J�L  �K  �J  � ��� l ���I���I  � , & copy the citatin tag to the clipboard   � ��� L   c o p y   t h e   c i t a t i n   t a g   t o   t h e   c l i p b o a r d� ��� I ���H��G
�H .JonspClpnull���     ****� c  ����� o  ���F�F 0 thetag theTag� m  ���E
�E 
ctxt�G  � ��� l ���D�C�B�D  �C  �B  � ��� l ���A���A  �  
 debugging   � ���    d e b u g g i n g� ��� l ���@���@  � %  display dialog (the clipboard)   � ��� >   d i s p l a y   d i a l o g   ( t h e   c l i p b o a r d )� ��� l ���?�>�=�?  �>  �=  � ��� l ���<���<  � I C paste the CitationID and page number into the selected text editor   � ��� �   p a s t e   t h e   C i t a t i o n I D   a n d   p a g e   n u m b e r   i n t o   t h e   s e l e c t e d   t e x t   e d i t o r� ��� Z  �����;�:� > ����� o  ���9�9 0 	targetapp 	targetApp� m  ���� ��� 
 f a l s e� O  ����� k  ���� ��� I ���8�7�6
�8 .miscactvnull��� ��� null�7  �6  � ��5� O  ����� I ���4��
�4 .prcskprsnull���     ctxt� m  ���� ���  v� �3��2
�3 
faal� m  ���1
�1 eMdsKcmd�2  � m  �����                                                                                  sevs  alis    X  
Fischer HD                     BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p   
 F i s c h e r   H D  -System/Library/CoreServices/System Events.app   / ��  �5  � 4  ���0�
�0 
capp� o  ���/�/ 0 	targetapp 	targetApp�;  �:  � ��� l ���.�-�,�.  �-  �,  � ��� l ���+���+  � s m reset the clipboard to its original content, unfortunately, this action is done before the end of the script   � ��� �   r e s e t   t h e   c l i p b o a r d   t o   i t s   o r i g i n a l   c o n t e n t ,   u n f o r t u n a t e l y ,   t h i s   a c t i o n   i s   d o n e   b e f o r e   t h e   e n d   o f   t h e   s c r i p t� ��� l ���*���*  � 6 0 set the clipboard to theClipboardBefore as text   � ��� `   s e t   t h e   c l i p b o a r d   t o   t h e C l i p b o a r d B e f o r e   a s   t e x t� ��)� l ���(�'�&�(  �'  �&  �)    4 . remove for debugging / if not used as service     ��� \   r e m o v e   f o r   d e b u g g i n g   /   i f   n o t   u s e d   a s   s e r v i c e  ��� l     �%�$�#�%  �$  �#  � ��� l     �"���"  �   helper function   � ���     h e l p e r   f u n c t i o n� ��!� i    ��� I      � ���  0 replacetext replaceText� ��� o      �� 0 thetext theText� ��� o      �� "0 thesearchstring theSearchString� ��� o      �� ,0 thereplacementstring theReplacementString�  �  � k      �� ��� r     ��� o     �� "0 thesearchstring theSearchString� n     ��� 1    �
� 
txdl� 1    �
� 
ascr� ��� r    ��� n    	   2    	�
� 
citm o    �� 0 thetext theText� o      �� 0 thetextitems theTextItems�  r     o    �� ,0 thereplacementstring theReplacementString n      1    �
� 
txdl 1    �
� 
ascr 	 r    

 c     o    �� 0 thetextitems theTextItems m    �
� 
ctxt o      �� 0 thetext theText	  r     m     �   n      1    �
� 
txdl 1    �
� 
ascr � L      o    �� 0 thetext theText�  �!       �
�
   �	�
�	 .aevtoappnull  �   � ****� 0 replacetext replaceText � ���
� .aevtoappnull  �   � ****� ��   �� 	0 input  �   �� � 	0 input  �  0 appname appName H������������ Q U Y ] `���� q t�� ��������������������� ��� ��������� ��� ��� � ���&������������:C��LR\^hz}��������������������� 0 thepn thePn
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
�� .JonspClpnull���     ****�� 0 thetag theTag�� 0 replacetext replaceText
�� 
capp
�� .miscactvnull��� ��� null
�� 
faal
�� eMdsKcmd
�� .prcskprsnull���     ctxt���E�O*��l E�OjvE�O������vE�O��lvE�Oa  *a -a ,E` UO .�[a a l kh _ � �E` O��6FY h[OY��O�j E` O_ k  �a k/�&E` Y J_ j +�a a a a a �a k/a fa   !�&E` Y a "a #a $kvl %Oa &E` O�a a 'a a (a �a k/a fa   !�&E` )Oa * *a +,a ,a -l .E` /O_ /�&j 0UO_ )a 1  :a 2_ /%E` 3O�a 4  _ 3a 5%E` 3Y _ 3a 6%�%a 7%E` 3OPY V_ )a 8  K*_ /a 9a :m+ ;E` 3Oa <_ 3%E` 3O�a =  _ 3a >%E` 3Y _ 3a ?%�%a @%E` 3Y hO_ 3�&j 0O_ a A +*a B_ / *j COa  a Da Ea Fl GUUY hOP ����������� 0 replacetext replaceText�� �� ��    �������� 0 thetext theText�� "0 thesearchstring theSearchString�� ,0 thereplacementstring theReplacementString��   ���������� 0 thetext theText�� "0 thesearchstring theSearchString�� ,0 thereplacementstring theReplacementString�� 0 thetextitems theTextItems ��������
�� 
ascr
�� 
txdl
�� 
citm
�� 
ctxt�� !���,FO��-E�O���,FO��&E�O���,FO�ascr  ��ޭ