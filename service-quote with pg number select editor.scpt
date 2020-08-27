FasdUAS 1.101.10   ��   ��    k             l      ��  ��    This script produces a Sente CitationID wrapped in curly braces and attaches text selected in Sente as page numbers after the @ symbol. I.e. {CitationIDofSelectedReference@SelectedText}. It then tries to copy this string into a text editor of the user's choice.      � 	 	   T h i s   s c r i p t   p r o d u c e s   a   S e n t e   C i t a t i o n I D   w r a p p e d   i n   c u r l y   b r a c e s   a n d   a t t a c h e s   t e x t   s e l e c t e d   i n   S e n t e   a s   p a g e   n u m b e r s   a f t e r   t h e   @   s y m b o l .   I . e .   { C i t a t i o n I D o f S e l e c t e d R e f e r e n c e @ S e l e c t e d T e x t } .   I t   t h e n   t r i e s   t o   c o p y   t h i s   s t r i n g   i n t o   a   t e x t   e d i t o r   o f   t h e   u s e r ' s   c h o i c e .     
  
 l      ��  ��       Problem: Unicode support      �   4   P r o b l e m :   U n i c o d e   s u p p o r t        l     ��������  ��  ��        l      ��  ��    ( " v3: completely rewrote the script     �   D   v 3 :   c o m p l e t e l y   r e w r o t e   t h e   s c r i p t      l     ��������  ��  ��        i         I     �� ��
�� .aevtoappnull  �   � ****  J          ��  o      ���� 	0 input  ��  ��    l   �    !  k    � " "  # $ # l     % & ' % r      ( ) ( o     ���� 	0 input   ) o      ���� 0 thepn thePn & "  use fake data for debugging    ' � * * 8   u s e   f a k e   d a t a   f o r   d e b u g g i n g $  + , + l   ��������  ��  ��   ,  - . - l   �� / 0��   / Y S the clipboard should be reset to its original content after the end of this script    0 � 1 1 �   t h e   c l i p b o a r d   s h o u l d   b e   r e s e t   t o   i t s   o r i g i n a l   c o n t e n t   a f t e r   t h e   e n d   o f   t h i s   s c r i p t .  2 3 2 r     4 5 4 l    6���� 6 I   ���� 7
�� .JonsgClp****    ��� null��   7 �� 8��
�� 
rtyp 8 m    ��
�� 
ctxt��  ��  ��   5 o      ���� (0 theclipboardbefore theClipboardBefore 3  9 : 9 l   �� ; <��   ; R L activeEditorsList will be populated in the course of the script's execution    < � = = �   a c t i v e E d i t o r s L i s t   w i l l   b e   p o p u l a t e d   i n   t h e   c o u r s e   o f   t h e   s c r i p t ' s   e x e c u t i o n :  > ? > r     @ A @ J    ����   A o      ���� &0 activeeditorslist activeEditorsList ?  B C B l   �� D E��   D v p set a list of text editors whose running status is to be checked. The order can be set to one's own preferences    E � F F �   s e t   a   l i s t   o f   t e x t   e d i t o r s   w h o s e   r u n n i n g   s t a t u s   i s   t o   b e   c h e c k e d .   T h e   o r d e r   c a n   b e   s e t   t o   o n e ' s   o w n   p r e f e r e n c e s C  G H G r     I J I J     K K  L M L m     N N � O O  S c r i v e n e r M  P Q P m     R R � S S  S u b l i m e   T e x t Q  T U T m     V V � W W  M i c r o s o f t   W o r d U  X Y X m     Z Z � [ [  T e x t E d i t Y  \�� \ m     ] ] � ^ ^ 
 n v A L T��   J o      ���� 0 editorslist editorsList H  _ ` _ l   �� a b��   a #  set a list of output formats    b � c c :   s e t   a   l i s t   o f   o u t p u t   f o r m a t s `  d e d l   # f g h f r    # i j i J    ! k k  l m l m     n n � o o 
 S e n t e m  p�� p m     q q � r r  P a n d o c��   j o      ���� 0 formatslist formatsList g   add Zotero in the future    h � s s 2   a d d   Z o t e r o   i n   t h e   f u t u r e e  t u t l  $ $��������  ��  ��   u  v w v l  $ $�� x y��   x - '    Generate variable with running apps    y � z z N         G e n e r a t e   v a r i a b l e   w i t h   r u n n i n g   a p p s w  { | { O   $ 8 } ~ } r   * 7  �  l  * 3 ����� � n   * 3 � � � 1   / 3��
�� 
pnam � 2   * /��
�� 
prcs��  ��   � o      ���� "0 activeprocesses activeProcesses ~ m   $ ' � ��                                                                                  sevs  alis    X  
Fischer HD                     BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p   
 F i s c h e r   H D  -System/Library/CoreServices/System Events.app   / ��   |  � � � l  9 9��������  ��  ��   �  � � � l  9 9�� � ���   � 3 -    Generate list of running text editors        � � � � Z         G e n e r a t e   l i s t   o f   r u n n i n g   t e x t   e d i t o r s         �  � � � X   9 h ��� � � Z   M c � ����� � E  M R � � � o   M P���� "0 activeprocesses activeProcesses � o   P Q���� 0 appname appName � k   U _ � �  � � � r   U Z � � � o   U V���� 0 appname appName � o      ���� 0 activeeditor activeEditor �  ��� � r   [ _ � � � o   [ \���� 0 appname appName � n       � � �  ;   ] ^ � o   \ ]���� &0 activeeditorslist activeEditorsList��  ��  ��  �� 0 appname appName � o   < =���� 0 editorslist editorsList �  � � � l  i i��������  ��  ��   �  � � � l  i i�� � ���   � � � ask user to select from running text editors if there are more then one. Otherwiese continue with the sole running text editor or abort the script    � � � �&   a s k   u s e r   t o   s e l e c t   f r o m   r u n n i n g   t e x t   e d i t o r s   i f   t h e r e   a r e   m o r e   t h e n   o n e .   O t h e r w i e s e   c o n t i n u e   w i t h   t h e   s o l e   r u n n i n g   t e x t   e d i t o r   o r   a b o r t   t h e   s c r i p t �  � � � r   i r � � � l  i n ����� � I  i n�� ���
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
appr � m   � � � � � � � 0 A v a i l a b l e   o u t p u t   f o r m a t s � �� � �
�� 
prmp � m   � �   � T P i c k   a n   o u t p u t   f o r m a t   f o r   t h e   c i t a t i o n   t a g � ��
�� 
inSL l  � ����� n   � � 4   � ���
�� 
cobj m   � �����  o   � ����� 0 formatslist formatsList��  ��   ����
�� 
mlsl m   � ���
�� boovfals��  ��  ��   � m   � ���
�� 
ctxt � o      ���� 0 targetformat targetFormat � 	
	 l  � ���������  ��  ��  
  l  � ���~�}�  �~  �}    l  � ��|�|   D > retrieve the Citation ID of the selected reference from Sente    � |   r e t r i e v e   t h e   C i t a t i o n   I D   o f   t h e   s e l e c t e d   r e f e r e n c e   f r o m   S e n t e  O   � k     r    l  �{�z I  �y
�y .SnccSnrsnull���     **** 1   �x
�x 
Sclb �w�v
�w 
Snj4 m  �u
�u SxooSotg�v  �{  �z   o      �t�t 0 theref theRef �s I �r �q
�r .JonspClpnull���     ****  c  !"! o  �p�p 0 theref theRef" m  �o
�o 
ctxt�q  �s   m   � �##n                                                                                  SntE  alis      58B76E54-B222-474C-861D-9#2    BD ����Sente 6.app                                                    ����            ����  
 cu             d   ~/:private:var:folders:84:2v35331s5t97w8g_wvsp4nv80000gq:T:AppTranslocation:58B76E54-B222-474C-861D-965D7484D65A:d:Sente 6.app/    S e n t e   6 . a p p  J $ 5 8 B 7 6 E 5 4 - B 2 2 2 - 4 7 4 C - 8 6 1 D - 9 6 5 D 7 4 8 4 D 6 5 A  /d/Sente 6.app  n/private/var/folders/84/2v35331s5t97w8g_wvsp4nv80000gq/T/AppTranslocation/58B76E54-B222-474C-861D-965D7484D65A��   $%$ l �n�m�l�n  �m  �l  % &'& l �k()�k  (   format the citation tag    ) �** 2   f o r m a t   t h e   c i t a t i o n   t a g  ' +,+ l �j-.�j  -   Sente output   . �//    S e n t e   o u t p u t, 010 Z  �234�i2 = &565 o  "�h�h 0 targetformat targetFormat6 m  "%77 �88 
 S e n t e3 k  )^99 :;: r  )4<=< b  )0>?> m  ),@@ �AA  {? o  ,/�g�g 0 theref theRef= o      �f�f 0 thetag theTag; BCB Z  5\DE�eFD = 5:GHG o  56�d�d 0 thepn thePnH m  69II �JJ  E r  =HKLK b  =DMNM o  =@�c�c 0 thetag theTagN m  @COO �PP  }L o      �b�b 0 thetag theTag�e  F r  K\QRQ b  KXSTS b  KTUVU b  KRWXW o  KN�a�a 0 thetag theTagX m  NQYY �ZZ  @V o  RS�`�` 0 thepn thePnT m  TW[[ �\\  }R o      �_�_ 0 thetag theTagC ]�^] l ]]�]^_�]  ^   Pandoc output   _ �``    P a n d o c   o u t p u t�^  4 aba = ahcdc o  ad�\�\ 0 targetformat targetFormatd m  dgee �ff  P a n d o cb g�[g k  k�hh iji l kk�Zkl�Z  k   replace blanks with "+"   l �mm 0   r e p l a c e   b l a n k s   w i t h   " + "j non r  k}pqp I  ky�Yr�X�Y 0 replacetext replaceTextr sts o  lo�W�W 0 theref theReft uvu m  orww �xx   v y�Vy m  ruzz �{{  +�V  �X  q o      �U�U 0 thetag theTago |}| r  ~�~~ b  ~���� m  ~��� ���  [ @� o  ���T�T 0 thetag theTag o      �S�S 0 thetag theTag} ��R� Z  �����Q�� = ����� o  ���P�P 0 thepn thePn� m  ���� ���  � r  ����� b  ����� o  ���O�O 0 thetag theTag� m  ���� ���  ]� o      �N�N 0 thetag theTag�Q  � r  ����� b  ����� b  ����� b  ����� o  ���M�M 0 thetag theTag� m  ���� ���  ,  � o  ���L�L 0 thepn thePn� m  ���� ���  ]� o      �K�K 0 thetag theTag�R  �[  �i  1 ��� l ���J�I�H�J  �I  �H  � ��� l ���G���G  � , & copy the citatin tag to the clipboard   � ��� L   c o p y   t h e   c i t a t i n   t a g   t o   t h e   c l i p b o a r d� ��� I ���F��E
�F .JonspClpnull���     ****� c  ����� o  ���D�D 0 thetag theTag� m  ���C
�C 
ctxt�E  � ��� l ���B�A�@�B  �A  �@  � ��� l ���?���?  �  
 debugging   � ���    d e b u g g i n g� ��� l ���>���>  � %  display dialog (the clipboard)   � ��� >   d i s p l a y   d i a l o g   ( t h e   c l i p b o a r d )� ��� l ���=�<�;�=  �<  �;  � ��� l ���:���:  � I C paste the CitationID and page number into the selected text editor   � ��� �   p a s t e   t h e   C i t a t i o n I D   a n d   p a g e   n u m b e r   i n t o   t h e   s e l e c t e d   t e x t   e d i t o r� ��� Z  �����9�8� > ����� o  ���7�7 0 	targetapp 	targetApp� m  ���� ��� 
 f a l s e� O  ����� k  ���� ��� I ���6�5�4
�6 .miscactvnull��� ��� null�5  �4  � ��3� O  ����� I ���2��
�2 .prcskprsnull���     ctxt� m  ���� ���  v� �1��0
�1 
faal� m  ���/
�/ eMdsKcmd�0  � m  �����                                                                                  sevs  alis    X  
Fischer HD                     BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p   
 F i s c h e r   H D  -System/Library/CoreServices/System Events.app   / ��  �3  � 4  ���.�
�. 
capp� o  ���-�- 0 	targetapp 	targetApp�9  �8  � ��� l ���,�+�*�,  �+  �*  � ��� l ���)���)  � s m reset the clipboard to its original content, unfortunately, this action is done before the end of the script   � ��� �   r e s e t   t h e   c l i p b o a r d   t o   i t s   o r i g i n a l   c o n t e n t ,   u n f o r t u n a t e l y ,   t h i s   a c t i o n   i s   d o n e   b e f o r e   t h e   e n d   o f   t h e   s c r i p t� ��� l ���(���(  � 6 0 set the clipboard to theClipboardBefore as text   � ��� `   s e t   t h e   c l i p b o a r d   t o   t h e C l i p b o a r d B e f o r e   a s   t e x t� ��'� l ���&�%�$�&  �%  �$  �'     4 . remove for debugging / if not used as service    ! ��� \   r e m o v e   f o r   d e b u g g i n g   /   i f   n o t   u s e d   a s   s e r v i c e  ��� l     �#�"�!�#  �"  �!  � ��� l     � ���   �   helper function   � ���     h e l p e r   f u n c t i o n� ��� i    ��� I      ���� 0 replacetext replaceText� ��� o      �� 0 thetext theText� ��� o      �� "0 thesearchstring theSearchString� ��� o      �� ,0 thereplacementstring theReplacementString�  �  � k      �� ��� r     ��� o     �� "0 thesearchstring theSearchString� n     ��� 1    �
� 
txdl� 1    �
� 
ascr� ��� r    ��� n    	��� 2    	�
� 
citm� o    �� 0 thetext theText� o      �� 0 thetextitems theTextItems� � � r     o    �� ,0 thereplacementstring theReplacementString n      1    �
� 
txdl 1    �
� 
ascr   r     c    	
	 o    �� 0 thetextitems theTextItems
 m    �
� 
ctxt o      �� 0 thetext theText  r     m     �   n      1    �
� 
txdl 1    �
� 
ascr �
 L      o    �	�	 0 thetext theText�
  �       ��   ��
� .aevtoappnull  �   � ****� 0 replacetext replaceText � ���
� .aevtoappnull  �   � ****� ��   � �  	0 input  �   ������ 	0 input  �� 0 appname appName H������������ N R V Z ]���� n q�� ��������������������� ��� ��������� ��� ��� � � ��#������������7@��IOY[ewz��������������������� 0 thepn thePn
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
�� .prcskprsnull���     ctxt���E�O*��l E�OjvE�O������vE�O��lvE�Oa  *a -a ,E` UO .�[a a l kh _ � �E` O��6FY h[OY��O�j E` O_ k  �a k/�&E` Y J_ j +�a a a a a �a k/a fa   !�&E` Y a "a #a $kvl %Oa &E` O�a a 'a a (a �a k/a fa   !�&E` )Oa * *a +,a ,a -l .E` /O_ /�&j 0UO_ )a 1  :a 2_ /%E` 3O�a 4  _ 3a 5%E` 3Y _ 3a 6%�%a 7%E` 3OPY V_ )a 8  K*_ /a 9a :m+ ;E` 3Oa <_ 3%E` 3O�a =  _ 3a >%E` 3Y _ 3a ?%�%a @%E` 3Y hO_ 3�&j 0O_ a A +*a B_ / *j COa  a Da Ea Fl GUUY hOP ����������� 0 replacetext replaceText�� ����   �������� 0 thetext theText�� "0 thesearchstring theSearchString�� ,0 thereplacementstring theReplacementString��   ���������� 0 thetext theText�� "0 thesearchstring theSearchString�� ,0 thereplacementstring theReplacementString�� 0 thetextitems theTextItems ��������
�� 
ascr
�� 
txdl
�� 
citm
�� 
ctxt�� !���,FO��-E�O���,FO��&E�O���,FO� ascr  ��ޭ