FasdUAS 1.101.10   ��   ��    k             l      ��  ��    This script produces a Sente CitationID wrapped in curly braces and attaches text selected in Sente as page numbers after the @ symbol. I.e. {CitationIDofSelectedReference@SelectedText}. It then tries to copy this string into a text editor of the user's choice.      � 	 	   T h i s   s c r i p t   p r o d u c e s   a   S e n t e   C i t a t i o n I D   w r a p p e d   i n   c u r l y   b r a c e s   a n d   a t t a c h e s   t e x t   s e l e c t e d   i n   S e n t e   a s   p a g e   n u m b e r s   a f t e r   t h e   @   s y m b o l .   I . e .   { C i t a t i o n I D o f S e l e c t e d R e f e r e n c e @ S e l e c t e d T e x t } .   I t   t h e n   t r i e s   t o   c o p y   t h i s   s t r i n g   i n t o   a   t e x t   e d i t o r   o f   t h e   u s e r ' s   c h o i c e .     
  
 l     ��������  ��  ��        l      ��  ��    � � v2b: 
	- added the sub routine testing whether the selected text editor is running
	- added the sub routine for selecting the text editors. This was necessary to wrapp the script as service.     �  ~   v 2 b :   
 	 -   a d d e d   t h e   s u b   r o u t i n e   t e s t i n g   w h e t h e r   t h e   s e l e c t e d   t e x t   e d i t o r   i s   r u n n i n g 
 	 -   a d d e d   t h e   s u b   r o u t i n e   f o r   s e l e c t i n g   t h e   t e x t   e d i t o r s .   T h i s   w a s   n e c e s s a r y   t o   w r a p p   t h e   s c r i p t   a s   s e r v i c e .      l     ��������  ��  ��        i         I      �� ���� 0 process     ��  o      ���� 	0 input  ��  ��    k     �       l     ��������  ��  ��        r         o     ���� 	0 input    o      ���� 0 thepn thePn     !   l   ��������  ��  ��   !  " # " l   �� $ %��   $ M G input the text editors of your choice in the order of your preferences    % � & & �   i n p u t   t h e   t e x t   e d i t o r s   o f   y o u r   c h o i c e   i n   t h e   o r d e r   o f   y o u r   p r e f e r e n c e s #  ' ( ' r     ) * ) J     + +  , - , m     . . � / /  S c r i v e n e r -  0 1 0 m     2 2 � 3 3  M i c r o s o f t   W o r d 1  4 5 4 m     6 6 � 7 7  T e x t E d i t 5  8 9 8 m     : : � ; ; 
 n v A L T 9  <�� < m    	 = = � > >  S u b l i m e   T e x t��   * o      ���� 0 
targetapps 
targetApps (  ? @ ? l   ��������  ��  ��   @  A B A l   �� C D��   C P J this prompts a list of the applications above for the user to select from    D � E E �   t h i s   p r o m p t s   a   l i s t   o f   t h e   a p p l i c a t i o n s   a b o v e   f o r   t h e   u s e r   t o   s e l e c t   f r o m B  F G F r     H I H c     J K J I    �� L���� "0 selecttargetapp selectTargetApp L  M�� M o    ���� 0 
targetapps 
targetApps��  ��   K m    ��
�� 
ctxt I o      ���� 0 	targetapp 	targetApp G  N O N l   ��������  ��  ��   O  P Q P l   ��������  ��  ��   Q  R S R l   �� T U��   T n h this combines the Citation ID of the selected reference with the selected text into the required string    U � V V �   t h i s   c o m b i n e s   t h e   C i t a t i o n   I D   o f   t h e   s e l e c t e d   r e f e r e n c e   w i t h   t h e   s e l e c t e d   t e x t   i n t o   t h e   r e q u i r e d   s t r i n g S  W X W O    S Y Z Y k    R [ [  \ ] \ r    ( ^ _ ^ l   & `���� ` I   &�� a b
�� .SnccSnrsnull���     **** a 1     ��
�� 
Sclb b �� c��
�� 
Snj4 c m   ! "��
�� SxooSotg��  ��  ��   _ o      ���� 0 theref theRef ]  d e d Z   ) J f g�� h f =  ) , i j i o   ) *���� 0 thepn thePn j m   * + k k � l l   g r   / 6 m n m b   / 4 o p o b   / 2 q r q m   / 0 s s � t t  { r o   0 1���� 0 theref theRef p m   2 3 u u � v v  } n o      ���� 
0 output  ��   h r   9 J w x w b   9 H y z y b   9 D { | { b   9 B } ~ } b   9 >  �  m   9 < � � � � �  { � o   < =���� 0 theref theRef ~ m   > A � � � � �  @ | o   B C���� 0 thepn thePn z m   D G � � � � �  } x o      ���� 
0 output   e  ��� � I  K R�� ���
�� .JonspClpnull���     **** � c   K N � � � o   K L���� 
0 output   � m   L M��
�� 
ctxt��  ��   Z m     � ��                                                                                  SntE  alis    �  	Dessau HD                  �e&�H+   �jSente 6.app                                                    +����=        ����  	                Reference Manager     �e
�      ���     �j C���  GDessau HD:Applications: Office-Research: Reference Manager: Sente 6.app     S e n t e   6 . a p p   	 D e s s a u   H D  :Applications/Office-Research/Reference Manager/Sente 6.app  / ��   X  � � � l  T T��������  ��  ��   �  � � � Q   T � � ��� � Z   W � � ��� � � I   W ]�� ����� 0 appisrunning appIsRunning �  ��� � o   X Y���� 0 	targetapp 	targetApp��  ��   � O   ` � � � � k   i � � �  � � � I  i n������
�� .miscactvnull��� ��� null��  ��   �  ��� � O   o � � � � I  u ��� � �
�� .prcskprsnull���     ctxt � m   u x � � � � �  v � �� ���
�� 
faal � m   { ~��
�� eMdsKcmd��   � m   o r � ��                                                                                  sevs  alis    �  	Dessau HD                  �e&�H+  ��System Events.app                                              ���(        ����  	                CoreServices    �e
�      ���    ������  :Dessau HD:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 D e s s a u   H D  -System/Library/CoreServices/System Events.app   / ��  ��   � 4   ` f�� �
�� 
capp � o   d e���� 0 	targetapp 	targetApp��   � k   � � � �  � � � l  � ���������  ��  ��   �  ��� � O   � � � � � I  � ��� ���
�� .sysodlogaskr        TEXT � b   � � � � � o   � ����� 0 	targetapp 	targetApp � m   � � � � � � �     i s   n o t   r u n n i n g .��   � m   � � � ��                                                                                  sevs  alis    �  	Dessau HD                  �e&�H+  ��System Events.app                                              ���(        ����  	                CoreServices    �e
�      ���    ������  :Dessau HD:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 D e s s a u   H D  -System/Library/CoreServices/System Events.app   / ��  ��   � R      ������
�� .ascrerr ****      � ****��  ��  ��   �  ��� � l  � ���������  ��  ��  ��     � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 0 appisrunning appIsRunning �  ��� � o      ���� 0 appname appName��  ��   � O     � � � E     � � � l   	 ����� � n    	 � � � 1    	��
�� 
pnam � 2   ��
�� 
prcs��  ��   � o   	 
���� 0 appname appName � m      � ��                                                                                  sevs  alis    �  	Dessau HD                  �e&�H+  ��System Events.app                                              ���(        ����  	                CoreServices    �e
�      ���    ������  :Dessau HD:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 D e s s a u   H D  -System/Library/CoreServices/System Events.app   / ��   �  � � � l     ��������  ��  ��   �  ��� � i     � � � I      �� ����� "0 selecttargetapp selectTargetApp �  ��� � o      ���� 0 applist appList��  ��   � O     � � � I   �� � �
�� .gtqpchltns    @   @ ns   � o    ���� 0 applist appList � �� � �
�� 
prmp � m     � � � � � � P i c k   t h e   w o r d   e d i t o r   o f   y o u r   c h o i c e   t o   s e n d   t h e   r e f e r e n c e ' s   C i t a t i o n I D   t o � �� � �
�� 
inSL � l    ����� � n     � � � 4   	 �� �
�� 
cobj � m   
 ����  � o    	���� 0 applist appList��  ��   � �� ���
�� 
mlsl � m    ��
�� boovfals��   � m      � ��                                                                                  sevs  alis    �  	Dessau HD                  �e&�H+  ��System Events.app                                              ���(        ����  	                CoreServices    �e
�      ���    ������  :Dessau HD:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 D e s s a u   H D  -System/Library/CoreServices/System Events.app   / ��  ��       �� � � � ���   � ����~�� 0 process  � 0 appisrunning appIsRunning�~ "0 selecttargetapp selectTargetApp � �} �|�{ � ��z�} 0 process  �| �y ��y  �  �x�x 	0 input  �{   � �w�v�u�t�s�r�w 	0 input  �v 0 thepn thePn�u 0 
targetapps 
targetApps�t 0 	targetapp 	targetApp�s 0 theref theRef�r 
0 output   �   . 2 6 : =�q�p�o ��n�m�l�k k s u � � ��j�i�h�g � ��f�e�d ��c�b�a�q �p "0 selecttargetapp selectTargetApp
�o 
ctxt
�n 
Sclb
�m 
Snj4
�l SxooSotg
�k .SnccSnrsnull���     ****
�j .JonspClpnull���     ****�i 0 appisrunning appIsRunning
�h 
capp
�g .miscactvnull��� ��� null
�f 
faal
�e eMdsKcmd
�d .prcskprsnull���     ctxt
�c .sysodlogaskr        TEXT�b  �a  �z ��E�O������vE�O*�k+ �&E�O� 7*�,��l E�O��  �%�%E�Y a �%a %�%a %E�O��&j UO E*�k+  )*a �/ *j Oa  a a a l UUY a  �a %j UW X  hOP � �` ��_�^ � ��]�` 0 appisrunning appIsRunning�_ �\ ��\  �  �[�[ 0 appname appName�^   � �Z�Z 0 appname appName �  ��Y�X
�Y 
prcs
�X 
pnam�] � 	*�-�,�U � �W ��V�U � ��T�W "0 selecttargetapp selectTargetApp�V �S ��S  �  �R�R 0 applist appList�U   � �Q�Q 0 applist appList �  ��P ��O�N�M�L�K
�P 
prmp
�O 
inSL
�N 
cobj
�M 
mlsl�L 
�K .gtqpchltns    @   @ ns  �T � �����k/�f� U ascr  ��ޭ