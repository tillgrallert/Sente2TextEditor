FasdUAS 1.101.10   ��   ��    k             l      ��  ��    This script produces a Sente CitationID wrapped in curly braces and attaches text selected in Sente as page numbers after the @ symbol. I.e. {CitationIDofSelectedReference@SelectedText}. It then tries to copy this string into a text editor of the user's choice.      � 	 	   T h i s   s c r i p t   p r o d u c e s   a   S e n t e   C i t a t i o n I D   w r a p p e d   i n   c u r l y   b r a c e s   a n d   a t t a c h e s   t e x t   s e l e c t e d   i n   S e n t e   a s   p a g e   n u m b e r s   a f t e r   t h e   @   s y m b o l .   I . e .   { C i t a t i o n I D o f S e l e c t e d R e f e r e n c e @ S e l e c t e d T e x t } .   I t   t h e n   t r i e s   t o   c o p y   t h i s   s t r i n g   i n t o   a   t e x t   e d i t o r   o f   t h e   u s e r ' s   c h o i c e .     
  
 l     ��������  ��  ��        l      ��  ��    ( " v3: completely rewrote the script     �   D   v 3 :   c o m p l e t e l y   r e w r o t e   t h e   s c r i p t      l     ��������  ��  ��        i         I      �� ���� 0 process     ��  o      ���� 	0 input  ��  ��    k           l     ��������  ��  ��        r         o     ���� 	0 input    o      ���� 0 thepn thePn     !   l   ��������  ��  ��   !  " # " l   �� $ %��   $ R L activeEditorsList will be populated in the course of the script's execution    % � & & �   a c t i v e E d i t o r s L i s t   w i l l   b e   p o p u l a t e d   i n   t h e   c o u r s e   o f   t h e   s c r i p t ' s   e x e c u t i o n #  ' ( ' r     ) * ) J    ����   * o      ���� &0 activeeditorslist activeEditorsList (  + , + l  	 	�� - .��   - G A set a list of text editors whose running status is to be checked    . � / / �   s e t   a   l i s t   o f   t e x t   e d i t o r s   w h o s e   r u n n i n g   s t a t u s   i s   t o   b e   c h e c k e d ,  0 1 0 r   	  2 3 2 J   	  4 4  5 6 5 m   	 
 7 7 � 8 8  S c r i v e n e r 6  9 : 9 m   
  ; ; � < <  M i c r o s o f t   W o r d :  = > = m     ? ? � @ @  T e x t E d i t >  A B A m     C C � D D 
 n v A L T B  E F E m     G G � H H  S u b l i m e   T e x t F  I�� I m     J J � K K 
 P a g e s��   3 o      ���� 0 editorslist editorsList 1  L M L l   ��������  ��  ��   M  N O N l   �� P Q��   P - '    Generate variable with running apps    Q � R R N         G e n e r a t e   v a r i a b l e   w i t h   r u n n i n g   a p p s O  S T S O      U V U r     W X W l    Y���� Y n     Z [ Z 1    ��
�� 
pnam [ 2    ��
�� 
prcs��  ��   X o      ���� "0 activeprocesses activeProcesses V m     \ \�                                                                                  sevs  alis    �  
Fischer HD                 �nzWH+     �System Events.app                                               ���        ����  	                CoreServices    �n^7      ����       �   �   �  ;Fischer HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p   
 F i s c h e r   H D  -System/Library/CoreServices/System Events.app   / ��   T  ] ^ ] l  ! !��������  ��  ��   ^  _ ` _ l  ! !�� a b��   a 3 -    Generate list of running text editors        b � c c Z         G e n e r a t e   l i s t   o f   r u n n i n g   t e x t   e d i t o r s         `  d e d X   ! H f�� g f Z   1 C h i���� h E  1 4 j k j o   1 2���� "0 activeprocesses activeProcesses k o   2 3���� 0 appname appName i k   7 ? l l  m n m r   7 : o p o o   7 8���� 0 appname appName p o      ���� 0 activeeditor activeEditor n  q�� q r   ; ? r s r o   ; <���� 0 appname appName s n       t u t  ;   = > u o   < =���� &0 activeeditorslist activeEditorsList��  ��  ��  �� 0 appname appName g o   $ %���� 0 editorslist editorsList e  v w v l  I I��������  ��  ��   w  x y x l  I I�� z {��   z � � ask user to select from running text editors if there are more then one. Otherwiese continue with the sole running text editor or abort the script    { � | |&   a s k   u s e r   t o   s e l e c t   f r o m   r u n n i n g   t e x t   e d i t o r s   i f   t h e r e   a r e   m o r e   t h e n   o n e .   O t h e r w i e s e   c o n t i n u e   w i t h   t h e   s o l e   r u n n i n g   t e x t   e d i t o r   o r   a b o r t   t h e   s c r i p t y  } ~ } r   I P  �  l  I N ����� � I  I N�� ���
�� .corecnte****       **** � o   I J���� &0 activeeditorslist activeEditorsList��  ��  ��   � o      ���� 0 editorcount editorCount ~  � � � Z   Q � � ��� � � ?   Q T � � � o   Q R���� 0 editorcount editorCount � m   R S����   � r   W u � � � c   W s � � � l  W o ����� � I  W o�� � �
�� .gtqpchltns    @   @ ns   � o   W X���� &0 activeeditorslist activeEditorsList � �� � �
�� 
appr � m   Y Z � � � � � ( R u n n i n g   t e x t   e d i t o r s � �� � �
�� 
prmp � m   [ ^ � � � � � p P i c k   a   t e x t   e d i t o r   t o   s e n d   t h e   r e f e r e n c e ' s   C i t a t i o n I D   t o � �� � �
�� 
inSL � l  a e ����� � n   a e � � � 4   b e�� �
�� 
cobj � m   c d����  � o   a b���� &0 activeeditorslist activeEditorsList��  ��   � �� ���
�� 
mlsl � m   h i��
�� boovfals��  ��  ��   � m   o r��
�� 
ctxt � o      ���� 0 	targetapp 	targetApp��   � k   x � � �  � � � l  x x�� � ���   �   Handle 0 items    � � � �    H a n d l e   0   i t e m s �  � � � I  x ��� � �
�� .sysodlogaskr        TEXT � m   x { � � � � � B T h e r e   a r e   n o   r u n n i n g   t e x t   e d i t o r s � �� ���
�� 
btns � J   ~ � � �  ��� � m   ~ � � � � � �  O K��  ��   �  ��� � r   � � � � � m   � � � � � � � 
 f a l s e � o      ���� 0 	targetapp 	targetApp��   �  � � � l  � ���������  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � n h this combines the Citation ID of the selected reference with the selected text into the required string    � � � � �   t h i s   c o m b i n e s   t h e   C i t a t i o n   I D   o f   t h e   s e l e c t e d   r e f e r e n c e   w i t h   t h e   s e l e c t e d   t e x t   i n t o   t h e   r e q u i r e d   s t r i n g �  � � � O   � � � � � k   � � � �  � � � r   � � � � � l  � � ����� � I  � ��� � �
�� .SnccSnrsnull���     **** � 1   � ���
�� 
Sclb � �� ���
�� 
Snj4 � m   � ���
�� SxooSotg��  ��  ��   � o      ���� 0 theref theRef �  � � � Z   � � � ��� � � =  � � � � � o   � ����� 0 thepn thePn � m   � � � � � � �   � r   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  { � o   � ����� 0 theref theRef � m   � � � � � � �  } � o      ���� 
0 output  ��   � r   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  { � o   � ����� 0 theref theRef � m   � � � � � � �  @ � o   � ����� 0 thepn thePn � m   � � � � � � �  } � o      ���� 
0 output   �  ��� � I  � ��� ���
�� .JonspClpnull���     **** � c   � � � � � o   � ����� 
0 output   � m   � ���
�� 
ctxt��  ��   � m   � � � ��                                                                                  SntE  alis    �  
Fischer HD                 �nzWH+   j�Sente 6.app                                                     /�Cқ�'        ����  	                Reference Manager     �n^7      қe     j� $   �  HFischer HD:Applications: Office-Research: Reference Manager: Sente 6.app    S e n t e   6 . a p p   
 F i s c h e r   H D  :Applications/Office-Research/Reference Manager/Sente 6.app  / ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � F @ this calls the pbpaste shell script to strip out any formatting    � � � � �   t h i s   c a l l s   t h e   p b p a s t e   s h e l l   s c r i p t   t o   s t r i p   o u t   a n y   f o r m a t t i n g �  � � � l  � ��� � ���   � = 7 this also, unfortunately, prevents full unicode output    � � � � n   t h i s   a l s o ,   u n f o r t u n a t e l y ,   p r e v e n t s   f u l l   u n i c o d e   o u t p u t �    l  � �����   5 / do shell script "pbpaste -Prefer txt | pbcopy"    � ^   d o   s h e l l   s c r i p t   " p b p a s t e   - P r e f e r   t x t   |   p b c o p y "  l  � ���������  ��  ��    l  � ���	
��  	 I C paste the CitationID and page number into the selected text editor   
 � �   p a s t e   t h e   C i t a t i o n I D   a n d   p a g e   n u m b e r   i n t o   t h e   s e l e c t e d   t e x t   e d i t o r �� Z   ����� >  � � o   � ��� 0 	targetapp 	targetApp m   � � � 
 f a l s e O   � k   �  I  � ��~�}�|
�~ .miscactvnull��� ��� null�}  �|   �{ O   � I  ��z
�z .prcskprsnull���     ctxt m   � � �  v �y�x
�y 
faal m   � ��w
�w eMdsKcmd�x   m   � �  �                                                                                  sevs  alis    �  
Fischer HD                 �nzWH+     �System Events.app                                               ���        ����  	                CoreServices    �n^7      ����       �   �   �  ;Fischer HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p   
 F i s c h e r   H D  -System/Library/CoreServices/System Events.app   / ��  �{   4   � ��v!
�v 
capp! o   � ��u�u 0 	targetapp 	targetApp��  ��  ��    "�t" l     �s�r�q�s  �r  �q  �t       �p#$�p  # �o�o 0 process  $ �n �m�l%&�k�n 0 process  �m �j'�j '  �i�i 	0 input  �l  % �h�g�f�e�d�c�b�a�`�_�^�h 	0 input  �g 0 thepn thePn�f &0 activeeditorslist activeEditorsList�e 0 editorslist editorsList�d "0 activeprocesses activeProcesses�c 0 appname appName�b 0 activeeditor activeEditor�a 0 editorcount editorCount�` 0 	targetapp 	targetApp�_ 0 theref theRef�^ 
0 output  & . 7 ; ? C G J�] \�\�[�Z�Y�X�W ��V ��U�T�S�R�Q ��P ��O � ��N�M�L�K � � � � � ��J�I�H�G�F�E�] 
�\ 
prcs
�[ 
pnam
�Z 
kocl
�Y 
cobj
�X .corecnte****       ****
�W 
appr
�V 
prmp
�U 
inSL
�T 
mlsl�S 
�R .gtqpchltns    @   @ ns  
�Q 
ctxt
�P 
btns
�O .sysodlogaskr        TEXT
�N 
Sclb
�M 
Snj4
�L SxooSotg
�K .SnccSnrsnull���     ****
�J .JonspClpnull���     ****
�I 
capp
�H .miscactvnull��� ��� null
�G 
faal
�F eMdsKcmd
�E .prcskprsnull���     ctxt�k�E�OjvE�O�������vE�O� 	*�-�,E�UO &�[��l kh �� �E�O��6FY h[OY��O�j E�O�j #����a a ��k/a fa  a &E�Y a a a kvl Oa E�Oa  E*a ,a a l E�O�a    a !�%a "%E�Y a #�%a $%�%a %%E�O�a &j &UO�a ' '*a (�/ *j )O� a *a +a ,l -UUY h ascr  ��ޭ