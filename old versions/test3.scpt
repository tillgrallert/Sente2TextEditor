FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l     	���� 	 r      
  
 m     ���� C  o      ���� 0 thepn thePn��  ��        l    ����  r        J    ����    o      ���� &0 activeeditorslist activeEditorsList��  ��        l  	  ����  r   	     J   	        m   	 
   �    S c r i v e n e r      m   
    �    M i c r o s o f t   W o r d       m     ! ! � " "  T e x t E d i t    # $ # m     % % � & & 
 n v A L T $  '�� ' m     ( ( � ) )  S u b l i m e   T e x t��    o      ���� 0 applist appList��  ��     * + * l     ��������  ��  ��   +  , - , l     �� . /��   . - '    Generate variable with running apps    / � 0 0 N         G e n e r a t e   v a r i a b l e   w i t h   r u n n i n g   a p p s -  1 2 1 l    3���� 3 O     4 5 4 r     6 7 6 l    8���� 8 n     9 : 9 1    ��
�� 
pnam : 2    ��
�� 
prcs��  ��   7 o      ���� "0 activeprocesses activeProcesses 5 m     ; ;�                                                                                  sevs  alis    �  	Dessau HD                  �e&�H+  ��System Events.app                                              ���(        ����  	                CoreServices    �e
�      ���    ������  :Dessau HD:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 D e s s a u   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��   2  < = < l     ��������  ��  ��   =  > ? > l     �� @ A��   @ 3 -    Generate list of running text editors        A � B B Z         G e n e r a t e   l i s t   o f   r u n n i n g   t e x t   e d i t o r s         ?  C D C l    I E���� E X     I F�� G F Z   0 D H I���� H E  0 3 J K J o   0 1���� "0 activeprocesses activeProcesses K o   1 2���� 0 appname appName I k   6 @ L L  M N M r   6 ; O P O o   6 7���� 0 appname appName P o      ���� 0 activeeditor activeEditor N  Q�� Q r   < @ R S R o   < =���� 0 appname appName S n       T U T  ;   > ? U o   = >���� &0 activeeditorslist activeEditorsList��  ��  ��  �� 0 appname appName G o   # $���� 0 applist appList��  ��   D  V W V l     ��������  ��  ��   W  X Y X l     �� Z [��   Z � � ask user to select from running text editors if there are more then one. Otherwiese continue with the sole running text editor or abort the script    [ � \ \&   a s k   u s e r   t o   s e l e c t   f r o m   r u n n i n g   t e x t   e d i t o r s   i f   t h e r e   a r e   m o r e   t h e n   o n e .   O t h e r w i e s e   c o n t i n u e   w i t h   t h e   s o l e   r u n n i n g   t e x t   e d i t o r   o r   a b o r t   t h e   s c r i p t Y  ] ^ ] l  J S _���� _ r   J S ` a ` l  J O b���� b I  J O�� c��
�� .corecnte****       **** c o   J K���� &0 activeeditorslist activeEditorsList��  ��  ��   a o      ���� 0 editorcount editorCount��  ��   ^  d e d l  T � f���� f Z   T � g h�� i g ?   T Y j k j o   T W���� 0 editorcount editorCount k m   W X����   h k   \ � l l  m n m r   \ � o p o c   \ ~ q r q l  \ z s���� s I  \ z�� t u
�� .gtqpchltns    @   @ ns   t o   \ ]���� &0 activeeditorslist activeEditorsList u �� v w
�� 
appr v m   ` c x x � y y ( R u n n i n g   t e x t   e d i t o r s w �� z {
�� 
prmp z m   f i | | � } } p P i c k   a   t e x t   e d i t o r   t o   s e n d   t h e   r e f e r e n c e ' s   C i t a t i o n I D   t o { �� ~ 
�� 
inSL ~ l  l p ����� � n   l p � � � 4   m p�� �
�� 
cobj � m   n o����  � o   l m���� &0 activeeditorslist activeEditorsList��  ��    �� ���
�� 
mlsl � m   s t��
�� boovfals��  ��  ��   r m   z }��
�� 
ctxt p o      ���� 0 	targetapp 	targetApp n  ��� � l   � ��� � ���   �icelse if editorCount = 1 then	set dialogSingleEditor to display dialog (item 1 of activeEditorsList) & " is the only running text editor. The CitationID will be sent to " & (item 1 of activeEditorsList)	if button returned of dialogSingleEditor is "OK" then		set targetApp to (item 1 of activeEditorsList) as text	else		set targetApp to "false"	end if    � � � �� e l s e   i f   e d i t o r C o u n t   =   1   t h e n  	 s e t   d i a l o g S i n g l e E d i t o r   t o   d i s p l a y   d i a l o g   ( i t e m   1   o f   a c t i v e E d i t o r s L i s t )   &   "   i s   t h e   o n l y   r u n n i n g   t e x t   e d i t o r .   T h e   C i t a t i o n I D   w i l l   b e   s e n t   t o   "   &   ( i t e m   1   o f   a c t i v e E d i t o r s L i s t )  	 i f   b u t t o n   r e t u r n e d   o f   d i a l o g S i n g l e E d i t o r   i s   " O K "   t h e n  	 	 s e t   t a r g e t A p p   t o   ( i t e m   1   o f   a c t i v e E d i t o r s L i s t )   a s   t e x t  	 e l s e  	 	 s e t   t a r g e t A p p   t o   " f a l s e "  	 e n d   i f��  ��   i k   � � � �  � � � l  � ��� � ���   �   Handle 0 items    � � � �    H a n d l e   0   i t e m s �  � � � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � B T h e r e   a r e   n o   r u n n i n g   t e x t   e d i t o r s � �� ���
�� 
btns � J   � � � �  ��� � m   � � � � � � �  O K��  ��   �  ��� � r   � � � � � m   � � � � � � � 
 f a l s e � o      ���� 0 	targetapp 	targetApp��  ��  ��   e  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � n h this combines the Citation ID of the selected reference with the selected text into the required string    � � � � �   t h i s   c o m b i n e s   t h e   C i t a t i o n   I D   o f   t h e   s e l e c t e d   r e f e r e n c e   w i t h   t h e   s e l e c t e d   t e x t   i n t o   t h e   r e q u i r e d   s t r i n g �  � � � l  � � ����� � O   � � � � � k   � � � �  � � � r   � � � � � l  � � ����� � I  � ��� � �
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
ctxt��  ��   � m   � � � ��                                                                                  SntE  alis    �  	Dessau HD                  �e&�H+   �jSente 6.app                                                    +����=        ����  	                Reference Manager     �e
�      ���     �j C���  GDessau HD:Applications: Office-Research: Reference Manager: Sente 6.app     S e n t e   6 . a p p   	 D e s s a u   H D  :Applications/Office-Research/Reference Manager/Sente 6.app  / ��  ��  ��   �  � � � l     ��������  ��  ��   �  ��� � l  �( ����� � Z   �( � ����� � >  � � � � � o   � ����� 0 	targetapp 	targetApp � m   � � � � � � � 
 f a l s e � O   $ � � � k  # � �  � � � I ������
�� .miscactvnull��� ��� null��  ��   �  �� � O  # � � � I "�~ � �
�~ .prcskprsnull���     ctxt � m   � � � � �  v � �} ��|
�} 
faal � m  �{
�{ eMdsKcmd�|   � m   � ��                                                                                  sevs  alis    �  	Dessau HD                  �e&�H+  ��System Events.app                                              ���(        ����  	                CoreServices    �e
�      ���    ������  :Dessau HD:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 D e s s a u   H D  -System/Library/CoreServices/System Events.app   / ��  �   � 4   �z �
�z 
capp � o  �y�y 0 	targetapp 	targetApp��  ��  ��  ��  ��       �x � ��x   � �w
�w .aevtoappnull  �   � **** � �v ��u�t � ��s
�v .aevtoappnull  �   � **** � k    ( � �   � �   � �   � �  1    C  ]  d  �  ��r�r  �u  �t   � �q�q 0 appname appName � 7�p�o�n   ! % (�m�l ;�k�j�i�h�g�f�e�d�c x�b |�a�`�_�^�]�\ ��[ ��Z � ��Y�X�W�V�U � � ��T � � ��S ��R�Q ��P�O�N�p C�o 0 thepn thePn�n &0 activeeditorslist activeEditorsList�m �l 0 applist appList
�k 
prcs
�j 
pnam�i "0 activeprocesses activeProcesses
�h 
kocl
�g 
cobj
�f .corecnte****       ****�e 0 activeeditor activeEditor�d 0 editorcount editorCount
�c 
appr
�b 
prmp
�a 
inSL
�` 
mlsl�_ 
�^ .gtqpchltns    @   @ ns  
�] 
ctxt�\ 0 	targetapp 	targetApp
�[ 
btns
�Z .sysodlogaskr        TEXT
�Y 
Sclb
�X 
Snj4
�W SxooSotg
�V .SnccSnrsnull���     ****�U 0 theref theRef�T 
0 output  
�S .JonspClpnull���     ****
�R 
capp
�Q .miscactvnull��� ��� null
�P 
faal
�O eMdsKcmd
�N .prcskprsnull���     ctxt�s)�E�OjvE�O������vE�O� 	*�-�,E�UO (�[��l kh  ͠ �E` O��6FY h[OY��O�j E` O_ j -�a a a a a ��k/a fa  a &E` OPY a a a kvl  Oa !E` Oa " Q*a #,a $a %l &E` 'O�a (  a )_ '%a *%E` +Y a ,_ '%a -%�%a .%E` +O_ +a &j /UO_ a 0 )*a 1_ / *j 2O� a 3a 4a 5l 6UUY hascr  ��ޭ