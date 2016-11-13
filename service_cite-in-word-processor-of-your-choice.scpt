FasdUAS 1.101.10   ��   ��    k             l      ��  ��    This script produces a Sente CitationID wrapped in curly braces and attaches text selected in Sente as page numbers after the @ symbol. I.e. {CitationIDofSelectedReference@SelectedText}. It then tries to copy this string into a text editor of the user's choice.      � 	 	   T h i s   s c r i p t   p r o d u c e s   a   S e n t e   C i t a t i o n I D   w r a p p e d   i n   c u r l y   b r a c e s   a n d   a t t a c h e s   t e x t   s e l e c t e d   i n   S e n t e   a s   p a g e   n u m b e r s   a f t e r   t h e   @   s y m b o l .   I . e .   { C i t a t i o n I D o f S e l e c t e d R e f e r e n c e @ S e l e c t e d T e x t } .   I t   t h e n   t r i e s   t o   c o p y   t h i s   s t r i n g   i n t o   a   t e x t   e d i t o r   o f   t h e   u s e r ' s   c h o i c e .     
  
 l     ��������  ��  ��        l      ��  ��    ( " v3: completely rewrote the script     �   D   v 3 :   c o m p l e t e l y   r e w r o t e   t h e   s c r i p t      l     ��������  ��  ��        l     ��  ��    R L activeEditorsList will be populated in the course of the script's execution     �   �   a c t i v e E d i t o r s L i s t   w i l l   b e   p o p u l a t e d   i n   t h e   c o u r s e   o f   t h e   s c r i p t ' s   e x e c u t i o n      l     ����  r         J     ����    o      ���� &0 activeeditorslist activeEditorsList��  ��        l     ��   ��    G A set a list of text editors whose running status is to be checked      � ! ! �   s e t   a   l i s t   o f   t e x t   e d i t o r s   w h o s e   r u n n i n g   s t a t u s   i s   t o   b e   c h e c k e d   " # " l    $���� $ r     % & % J     ' '  ( ) ( m     * * � + +  S c r i v e n e r )  , - , m     . . � / /  U l y s s e s -  0 1 0 m     2 2 � 3 3  M i c r o s o f t   W o r d 1  4 5 4 m    	 6 6 � 7 7  T e x t E d i t 5  8 9 8 m   	 
 : : � ; ; 
 n v A L T 9  < = < m   
  > > � ? ?  S u b l i m e   T e x t =  @�� @ m     A A � B B 
 P a g e s��   & o      ���� 0 editorslist editorsList��  ��   #  C D C l     ��������  ��  ��   D  E F E l     �� G H��   G - '    Generate variable with running apps    H � I I N         G e n e r a t e   v a r i a b l e   w i t h   r u n n i n g   a p p s F  J K J l    L���� L O     M N M r     O P O l    Q���� Q n     R S R 1    ��
�� 
pnam S 2    ��
�� 
prcs��  ��   P o      ���� "0 activeprocesses activeProcesses N m     T T�                                                                                  sevs  alis    �  
Fischer HD                 �nlGH+     �System Events.app                                               �����        ����  	                CoreServices    �n^7      ����       �   �   �  ;Fischer HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p   
 F i s c h e r   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��   K  U V U l     ��������  ��  ��   V  W X W l     �� Y Z��   Y 3 -    Generate list of running text editors        Z � [ [ Z         G e n e r a t e   l i s t   o f   r u n n i n g   t e x t   e d i t o r s         X  \ ] \ l   G ^���� ^ X    G _�� ` _ Z   . B a b���� a E  . 1 c d c o   . /���� "0 activeprocesses activeProcesses d o   / 0���� 0 appname appName b k   4 > e e  f g f r   4 9 h i h o   4 5���� 0 appname appName i o      ���� 0 activeeditor activeEditor g  j�� j r   : > k l k o   : ;���� 0 appname appName l n       m n m  ;   < = n o   ; <���� &0 activeeditorslist activeEditorsList��  ��  ��  �� 0 appname appName ` o   ! "���� 0 editorslist editorsList��  ��   ]  o p o l     ��������  ��  ��   p  q r q l     �� s t��   s � � ask user to select from running text editors if there are more then one. Otherwiese continue with the sole running text editor or abort the script    t � u u&   a s k   u s e r   t o   s e l e c t   f r o m   r u n n i n g   t e x t   e d i t o r s   i f   t h e r e   a r e   m o r e   t h e n   o n e .   O t h e r w i e s e   c o n t i n u e   w i t h   t h e   s o l e   r u n n i n g   t e x t   e d i t o r   o r   a b o r t   t h e   s c r i p t r  v w v l  H Q x���� x r   H Q y z y l  H M {���� { I  H M�� |��
�� .corecnte****       **** | o   H I���� &0 activeeditorslist activeEditorsList��  ��  ��   z o      ���� 0 editorcount editorCount��  ��   w  } ~ } l  R � ����  Z   R � � ��� � � ?   R W � � � o   R U���� 0 editorcount editorCount � m   U V����   � r   Z � � � � c   Z | � � � l  Z x ����� � I  Z x�� � �
�� .gtqpchltns    @   @ ns   � o   Z [���� &0 activeeditorslist activeEditorsList � �� � �
�� 
appr � m   ^ a � � � � � ( R u n n i n g   t e x t   e d i t o r s � �� � �
�� 
prmp � m   d g � � � � � p P i c k   a   t e x t   e d i t o r   t o   s e n d   t h e   r e f e r e n c e ' s   C i t a t i o n I D   t o � �� � �
�� 
inSL � l  j n ����� � n   j n � � � 4   k n�� �
�� 
cobj � m   l m����  � o   j k���� &0 activeeditorslist activeEditorsList��  ��   � �� ���
�� 
mlsl � m   q r��
�� boovfals��  ��  ��   � m   x {��
�� 
ctxt � o      ���� 0 	targetapp 	targetApp��   � k   � � � �  � � � l  � ��� � ���   �   Handle 0 items    � � � �    H a n d l e   0   i t e m s �  � � � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � B T h e r e   a r e   n o   r u n n i n g   t e x t   e d i t o r s � �� ���
�� 
btns � J   � � � �  ��� � m   � � � � � � �  O K��  ��   �  ��� � r   � � � � � m   � � � � � � � 
 f a l s e � o      ���� 0 	targetapp 	targetApp��  ��  ��   ~  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � n h this combines the Citation ID of the selected reference with the selected text into the required string    � � � � �   t h i s   c o m b i n e s   t h e   C i t a t i o n   I D   o f   t h e   s e l e c t e d   r e f e r e n c e   w i t h   t h e   s e l e c t e d   t e x t   i n t o   t h e   r e q u i r e d   s t r i n g �  � � � l  � � ����� � O   � � � � � k   � � � �  � � � r   � � � � � l  � � ����� � I  � ��� � �
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
ctxt��  ��   � m   � � � ��                                                                                  SntE  alis    �  
Fischer HD                 �nlGH+   j�Sente 6.app                                                     /�Cқs        ����  	                Reference Manager     �n^7      қe     j� $   �  HFischer HD:Applications: Office-Research: Reference Manager: Sente 6.app    S e n t e   6 . a p p   
 F i s c h e r   H D  :Applications/Office-Research/Reference Manager/Sente 6.app  / ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � F @ this calls the pbpaste shell script to strip out any formatting    � � � � �   t h i s   c a l l s   t h e   p b p a s t e   s h e l l   s c r i p t   t o   s t r i p   o u t   a n y   f o r m a t t i n g �  � � � l     �� � ���   � = 7 this also, unfortunately, prevents full unicode output    � � � � n   t h i s   a l s o ,   u n f o r t u n a t e l y ,   p r e v e n t s   f u l l   u n i c o d e   o u t p u t �  � � � l     �� � ���   � 5 / do shell script "pbpaste -Prefer txt | pbcopy"    � � � � ^   d o   s h e l l   s c r i p t   " p b p a s t e   - P r e f e r   t x t   |   p b c o p y " �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � I C paste the CitationID and page number into the selected text editor    � � � � �   p a s t e   t h e   C i t a t i o n I D   a n d   p a g e   n u m b e r   i n t o   t h e   s e l e c t e d   t e x t   e d i t o r �  � � � l  � ����� � Z   � � ���� � >  � � � � � o   � ��~�~ 0 	targetapp 	targetApp � m   � � � � � � � 
 f a l s e � O   �  � � � k   � � � �  �  � I  � ��}�|�{
�} .miscactvnull��� ��� null�|  �{    �z O   � � I  � ��y
�y .prcskprsnull���     ctxt m   � � �  v �x�w
�x 
faal m   � ��v
�v eMdsKcmd�w   m   � �		�                                                                                  sevs  alis    �  
Fischer HD                 �nlGH+     �System Events.app                                               �����        ����  	                CoreServices    �n^7      ����       �   �   �  ;Fischer HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p   
 F i s c h e r   H D  -System/Library/CoreServices/System Events.app   / ��  �z   � 4   � ��u

�u 
capp
 o   � ��t�t 0 	targetapp 	targetApp��  �  ��  ��   � �s l     �r�q�p�r  �q  �p  �s       �o�o   �n
�n .aevtoappnull  �   � **** �m�l�k�j
�m .aevtoappnull  �   � **** k        "  J  \  v  }  �  ��i�i  �l  �k   �h�h 0 appname appName 3�g * . 2 6 : > A�f�e T�d�c�b�a�`�_�^�]�\ ��[ ��Z�Y�X�W�V�U ��T ��S � ��R�Q�P�O�N � ��M�L ��K�J�I�H�G�g &0 activeeditorslist activeEditorsList�f �e 0 editorslist editorsList
�d 
prcs
�c 
pnam�b "0 activeprocesses activeProcesses
�a 
kocl
�` 
cobj
�_ .corecnte****       ****�^ 0 activeeditor activeEditor�] 0 editorcount editorCount
�\ 
appr
�[ 
prmp
�Z 
inSL
�Y 
mlsl�X 
�W .gtqpchltns    @   @ ns  
�V 
ctxt�U 0 	targetapp 	targetApp
�T 
btns
�S .sysodlogaskr        TEXT
�R 
Sclb
�Q 
Snj4
�P SxooSotg
�O .SnccSnrsnull���     ****�N 0 theref theRef�M 
0 output  
�L .JonspClpnull���     ****
�K 
capp
�J .miscactvnull��� ��� null
�I 
faal
�H eMdsKcmd
�G .prcskprsnull���     ctxt�jjvE�O��������vE�O� 	*�-�,E�UO (�[��l kh  ͠ �E` O��6FY h[OY��O�j E` O_ j +�a a a a a ��k/a fa  a &E` Y a a a kvl  Oa !E` Oa " 1*a #,a $a %l &E` 'Oa (_ '%a )%E` *O_ *a &j +UO_ a , )*a -_ / *j .O� a /a 0a 1l 2UUY h ascr  ��ޭ