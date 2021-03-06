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
 ����   . o      ���� &0 activeeditorslist activeEditorsList��  ��   +  / 0 / l     �� 1 2��   1 v p set a list of text editors whose running status is to be checked. The order can be set to one's own preferences    2 � 3 3 �   s e t   a   l i s t   o f   t e x t   e d i t o r s   w h o s e   r u n n i n g   s t a t u s   i s   t o   b e   c h e c k e d .   T h e   o r d e r   c a n   b e   s e t   t o   o n e ' s   o w n   p r e f e r e n c e s 0  4 5 4 l    6���� 6 r     7 8 7 J     9 9  : ; : m     < < � = =  S c r i v e n e r ;  > ? > m     @ @ � A A  S u b l i m e   T e x t ?  B C B m     D D � E E  M i c r o s o f t   W o r d C  F G F m     H H � I I  T e x t E d i t G  J�� J m     K K � L L 
 n v A L T��   8 o      ���� 0 editorslist editorsList��  ��   5  M N M l     �� O P��   O #  set a list of output formats    P � Q Q :   s e t   a   l i s t   o f   o u t p u t   f o r m a t s N  R S R l    T U V T r     W X W J     Y Y  Z [ Z m     \ \ � ] ]  P a n d o c [  ^�� ^ m     _ _ � ` ` 
 S e n t e��   X o      ���� 0 formatslist formatsList U   add Zotero in the future    V � a a 2   a d d   Z o t e r o   i n   t h e   f u t u r e S  b c b l     ��������  ��  ��   c  d e d l     �� f g��   f - '    Generate variable with running apps    g � h h N         G e n e r a t e   v a r i a b l e   w i t h   r u n n i n g   a p p s e  i j i l    2 k���� k O     2 l m l r   $ 1 n o n l  $ - p���� p n   $ - q r q 1   ) -��
�� 
pnam r 2   $ )��
�� 
prcs��  ��   o o      ���� "0 activeprocesses activeProcesses m m     ! s s�                                                                                  sevs  alis    X  
Fischer HD                     BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p   
 F i s c h e r   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��   j  t u t l     ��������  ��  ��   u  v w v l     �� x y��   x 3 -    Generate list of running text editors        y � z z Z         G e n e r a t e   l i s t   o f   r u n n i n g   t e x t   e d i t o r s         w  { | { l  3 b }���� } X   3 b ~��  ~ Z   G ] � ����� � E  G L � � � o   G J���� "0 activeprocesses activeProcesses � o   J K���� 0 appname appName � k   O Y � �  � � � r   O T � � � o   O P���� 0 appname appName � o      ���� 0 activeeditor activeEditor �  ��� � r   U Y � � � o   U V���� 0 appname appName � n       � � �  ;   W X � o   V W���� &0 activeeditorslist activeEditorsList��  ��  ��  �� 0 appname appName  o   6 7���� 0 editorslist editorsList��  ��   |  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � � � ask user to select from running text editors if there are more then one. Otherwiese continue with the sole running text editor or abort the script    � � � �&   a s k   u s e r   t o   s e l e c t   f r o m   r u n n i n g   t e x t   e d i t o r s   i f   t h e r e   a r e   m o r e   t h e n   o n e .   O t h e r w i e s e   c o n t i n u e   w i t h   t h e   s o l e   r u n n i n g   t e x t   e d i t o r   o r   a b o r t   t h e   s c r i p t �  � � � l  c l ����� � r   c l � � � l  c h ����� � I  c h�� ���
�� .corecnte****       **** � o   c d���� &0 activeeditorslist activeEditorsList��  ��  ��   � o      ���� 0 editorcount editorCount��  ��   �  � � � l  m � ����� � Z   m � � � � � � =   m r � � � o   m p���� 0 editorcount editorCount � m   p q����  � r   u � � � � c   u } � � � l  u { ����� � n   u { � � � 4   v {�� �
�� 
cobj � m   y z����  � o   u v���� &0 activeeditorslist activeEditorsList��  ��   � m   { |��
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
prmp � m   � � � � � � � T P i c k   a n   o u t p u t   f o r m a t   f o r   t h e   c i t a t i o n   t a g � �� � �
�� 
inSL � l  � � ����� � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 formatslist formatsList��  ��   � �� ��
�� 
mlsl � m   � ��~
�~ boovfals�  ��  ��   � m   � ��}
�} 
ctxt � o      �|�| 0 targetformat targetFormat��  ��   �  � � � l     �{�z�y�{  �z  �y   �  � � � l     �x�w�v�x  �w  �v   �    l     �u�u   D > retrieve the Citation ID of the selected reference from Sente    � |   r e t r i e v e   t h e   C i t a t i o n   I D   o f   t h e   s e l e c t e d   r e f e r e n c e   f r o m   S e n t e  l  ��t�s O   �	 k   �

  r   � l  �	�r�q I  �	�p
�p .SnccSnrsnull���     **** 1   � ��o
�o 
Sclb �n�m
�n 
Snj4 m  �l
�l SxooSotg�m  �r  �q   o      �k�k 0 theref theRef �j I �i�h
�i .JonspClpnull���     **** c   o  �g�g 0 theref theRef m  �f
�f 
ctxt�h  �j  	 m   � �n                                                                                  SntE  alis      8D811D83-5A70-4713-BA96-E#2    BD ����Sente 6.app                                                    ����            ����  
 cu             d   ~/:private:var:folders:84:2v35331s5t97w8g_wvsp4nv80000gq:T:AppTranslocation:8D811D83-5A70-4713-BA96-E4F515618890:d:Sente 6.app/    S e n t e   6 . a p p  J $ 8 D 8 1 1 D 8 3 - 5 A 7 0 - 4 7 1 3 - B A 9 6 - E 4 F 5 1 5 6 1 8 8 9 0  /d/Sente 6.app  n/private/var/folders/84/2v35331s5t97w8g_wvsp4nv80000gq/T/AppTranslocation/8D811D83-5A70-4713-BA96-E4F515618890��  �t  �s    l     �e�d�c�e  �d  �c    l     �b�b     format the citation tag    � 0   f o r m a t   t h e   c i t a t i o n   t a g   l     �a!"�a  !   Sente output   " �##    S e n t e   o u t p u t  $%$ l z&�`�_& Z  z'()�^' =  *+* o  �]�] 0 targetformat targetFormat+ m  ,, �-- 
 S e n t e( k  #4.. /0/ r  #2121 b  #.343 b  #*565 m  #&77 �88  {6 o  &)�\�\ 0 theref theRef4 m  *-99 �::  }2 o      �[�[ 0 thetag theTag0 ;�Z; l 33�Y<=�Y  <   Pandoc output   = �>>    P a n d o c   o u t p u t�Z  ) ?@? = 7>ABA o  7:�X�X 0 targetformat targetFormatB m  :=CC �DD  P a n d o c@ E�WE k  AvFF GHG l AA�VIJ�V  I   replace blanks with "+"   J �KK 0   r e p l a c e   b l a n k s   w i t h   " + "H LML r  ASNON I  AO�UP�T�U 0 replacetext replaceTextP QRQ o  BE�S�S 0 theref theRefR STS m  EHUU �VV   T W�RW m  HKXX �YY  +�R  �T  O o      �Q�Q 0 thetag theTagM Z[Z l TT�P\]�P  \ l f Problem: one can send multiple Citation IDs to this script, each of which needs to be prefixed with @   ] �^^ �   P r o b l e m :   o n e   c a n   s e n d   m u l t i p l e   C i t a t i o n   I D s   t o   t h i s   s c r i p t ,   e a c h   o f   w h i c h   n e e d s   t o   b e   p r e f i x e d   w i t h   @[ _`_ r  Tfaba I  Tb�Oc�N�O 0 replacetext replaceTextc ded o  UX�M�M 0 thetag theTage fgf m  X[hh �ii  ;g j�Lj m  [^kk �ll  ;   @�L  �N  b o      �K�K 0 thetag theTag` m�Jm r  gvnon b  grpqp b  gnrsr m  gjtt �uu  [ @s o  jm�I�I 0 thetag theTagq m  nqvv �ww  ]o o      �H�H 0 thetag theTag�J  �W  �^  �`  �_  % xyx l     �G�F�E�G  �F  �E  y z{z l     �D|}�D  | , & copy the citatin tag to the clipboard   } �~~ L   c o p y   t h e   c i t a t i n   t a g   t o   t h e   c l i p b o a r d{ � l {���C�B� I {��A��@
�A .JonspClpnull���     ****� c  {���� o  {~�?�? 0 thetag theTag� m  ~�>
�> 
ctxt�@  �C  �B  � ��� l     �=�<�;�=  �<  �;  � ��� l     �:���:  �  
 debugging   � ���    d e b u g g i n g� ��� l     �9���9  � %  display dialog (the clipboard)   � ��� >   d i s p l a y   d i a l o g   ( t h e   c l i p b o a r d )� ��� l     �8�7�6�8  �7  �6  � ��� l     �5���5  � I C paste the CitationID and page number into the selected text editor   � ��� �   p a s t e   t h e   C i t a t i o n I D   a n d   p a g e   n u m b e r   i n t o   t h e   s e l e c t e d   t e x t   e d i t o r� ��� l ����4�3� Z  �����2�1� > ����� o  ���0�0 0 	targetapp 	targetApp� m  ���� ��� 
 f a l s e� O  ����� k  ���� ��� I ���/�.�-
�/ .miscactvnull��� ��� null�.  �-  � ��,� O  ����� I ���+��
�+ .prcskprsnull���     ctxt� m  ���� ���  v� �*��)
�* 
faal� m  ���(
�( eMdsKcmd�)  � m  �����                                                                                  sevs  alis    X  
Fischer HD                     BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p   
 F i s c h e r   H D  -System/Library/CoreServices/System Events.app   / ��  �,  � 4  ���'�
�' 
capp� o  ���&�& 0 	targetapp 	targetApp�2  �1  �4  �3  � ��� l     �%�$�#�%  �$  �#  � ��� l     �"���"  � s m reset the clipboard to its original content, unfortunately, this action is done before the end of the script   � ��� �   r e s e t   t h e   c l i p b o a r d   t o   i t s   o r i g i n a l   c o n t e n t ,   u n f o r t u n a t e l y ,   t h i s   a c t i o n   i s   d o n e   b e f o r e   t h e   e n d   o f   t h e   s c r i p t� ��� l     �!���!  � 6 0 set the clipboard to theClipboardBefore as text   � ��� `   s e t   t h e   c l i p b o a r d   t o   t h e C l i p b o a r d B e f o r e   a s   t e x t� ��� l     � ���   �  �  � ��� l     ����  �   helper function   � ���     h e l p e r   f u n c t i o n� ��� i     ��� I      ���� 0 replacetext replaceText� ��� o      �� 0 thetext theText� ��� o      �� "0 thesearchstring theSearchString� ��� o      �� ,0 thereplacementstring theReplacementString�  �  � k      �� ��� r     ��� o     �� "0 thesearchstring theSearchString� n     ��� 1    �
� 
txdl� 1    �
� 
ascr� ��� r    ��� n    	��� 2    	�
� 
citm� o    �� 0 thetext theText� o      �� 0 thetextitems theTextItems� ��� r    ��� o    �� ,0 thereplacementstring theReplacementString� n     ��� 1    �
� 
txdl� 1    �
� 
ascr� ��� r    ��� c    ��� o    �� 0 thetextitems theTextItems� m    �
� 
ctxt� o      �
�
 0 thetext theText� ��� r    ��� m    �� ���  � n     ��� 1    �	
�	 
txdl� 1    �
� 
ascr� ��� L     �� o    �� 0 thetext theText�  �       �����  � ��� 0 replacetext replaceText
� .aevtoappnull  �   � ****� ���� ����� 0 replacetext replaceText� ����� �  �������� 0 thetext theText�� "0 thesearchstring theSearchString�� ,0 thereplacementstring theReplacementString�   � ���������� 0 thetext theText�� "0 thesearchstring theSearchString�� ,0 thereplacementstring theReplacementString�� 0 thetextitems theTextItems� ���������
�� 
ascr
�� 
txdl
�� 
citm
�� 
ctxt�� !���,FO��-E�O���,FO��&E�O���,FO�� �����������
�� .aevtoappnull  �   � ****� k    ���  ��  *��  4��  R��  i��  {��  ���  �    �  $  �����  ��  ��  � ���� 0 appname appName� C���������� < @ D H K���� \ _�� s�������������������� ��� ��������� ��� ��� � � ���������������,79��CUX��hktv������������
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
�� .prcskprsnull���     ctxt���*��l E�OjvE�O������vE�O��lvE�O� *a -a ,E` UO .�[a a l kh  _ � �E` O��6FY h[OY��O�j E` O_ k  �a k/�&E` Y J_ j +�a a a a a �a k/a fa   �&E` Y a !a "a #kvl $Oa %E` O�a a &a a 'a �a k/a fa   �&E` (Oa ) *a *,a +a ,l -E` .O_ .�&j /UO_ (a 0  a 1_ .%a 2%E` 3OPY E_ (a 4  :*_ .a 5a 6m+ 7E` 3O*_ 3a 8a 9m+ 7E` 3Oa :_ 3%a ;%E` 3Y hO_ 3�&j /O_ a < )*a =_ / *j >O� a ?a @a Al BUUY h ascr  ��ޭ