FasdUAS 1.101.10   ��   ��    k             l      ��  ��    This script produces a Sente CitationID wrapped in curly braces and attaches text selected in Sente as page numbers after the @ symbol. I.e. {CitationIDofSelectedReference@SelectedText}. It then tries to copy this string into a text editor of the user's choice.      � 	 	   T h i s   s c r i p t   p r o d u c e s   a   S e n t e   C i t a t i o n I D   w r a p p e d   i n   c u r l y   b r a c e s   a n d   a t t a c h e s   t e x t   s e l e c t e d   i n   S e n t e   a s   p a g e   n u m b e r s   a f t e r   t h e   @   s y m b o l .   I . e .   { C i t a t i o n I D o f S e l e c t e d R e f e r e n c e @ S e l e c t e d T e x t } .   I t   t h e n   t r i e s   t o   c o p y   t h i s   s t r i n g   i n t o   a   t e x t   e d i t o r   o f   t h e   u s e r ' s   c h o i c e .     
  
 l     ��������  ��  ��        l      ��  ��    � � v2b: 
	- added the sub routine testing whether the selected text editor is running
	- added the sub routine for selecting the text editors. This was necessary to wrapp the script as service.     �  ~   v 2 b :   
 	 -   a d d e d   t h e   s u b   r o u t i n e   t e s t i n g   w h e t h e r   t h e   s e l e c t e d   t e x t   e d i t o r   i s   r u n n i n g 
 	 -   a d d e d   t h e   s u b   r o u t i n e   f o r   s e l e c t i n g   t h e   t e x t   e d i t o r s .   T h i s   w a s   n e c e s s a r y   t o   w r a p p   t h e   s c r i p t   a s   s e r v i c e .      l     ��������  ��  ��        i         I      �� ���� 0 process     ��  o      ���� 	0 input  ��  ��    k     �       l     ��������  ��  ��        r         o     ���� 	0 input    o      ���� 0 thepn thePn     !   l   ��������  ��  ��   !  " # " l   �� $ %��   $ M G input the text editors of your choice in the order of your preferences    % � & & �   i n p u t   t h e   t e x t   e d i t o r s   o f   y o u r   c h o i c e   i n   t h e   o r d e r   o f   y o u r   p r e f e r e n c e s #  ' ( ' r     ) * ) J     + +  , - , m     . . � / /  S c r i v e n e r -  0 1 0 m     2 2 � 3 3  M i c r o s o f t   W o r d 1  4 5 4 m     6 6 � 7 7  T e x t E d i t 5  8 9 8 m     : : � ; ; 
 n v A L T 9  <�� < m    	 = = � > >  S u b l i m e   T e x t��   * o      ���� 0 
targetapps 
targetApps (  ? @ ? l   ��������  ��  ��   @  A B A l   �� C D��   C P J this prompts a list of the applications above for the user to select from    D � E E �   t h i s   p r o m p t s   a   l i s t   o f   t h e   a p p l i c a t i o n s   a b o v e   f o r   t h e   u s e r   t o   s e l e c t   f r o m B  F G F l   �� H I��   H ; 5 set targetApp to selectTargetApp(targetApps) as text    I � J J j   s e t   t a r g e t A p p   t o   s e l e c t T a r g e t A p p ( t a r g e t A p p s )   a s   t e x t G  K L K r     M N M c     O P O m     Q Q � R R  S c r i v e n e r P m    ��
�� 
ctxt N o      ���� 0 	targetapp 	targetApp L  S T S l   ��������  ��  ��   T  U V U l   ��������  ��  ��   V  W X W l   �� Y Z��   Y n h this combines the Citation ID of the selected reference with the selected text into the required string    Z � [ [ �   t h i s   c o m b i n e s   t h e   C i t a t i o n   I D   o f   t h e   s e l e c t e d   r e f e r e n c e   w i t h   t h e   s e l e c t e d   t e x t   i n t o   t h e   r e q u i r e d   s t r i n g X  \ ] \ O    N ^ _ ^ k    M ` `  a b a r    # c d c l   ! e���� e I   !�� f g
�� .SnccSnrsnull���     **** f 1    ��
�� 
Sclb g �� h��
�� 
Snj4 h m    ��
�� SxooSotg��  ��  ��   d o      ���� 0 theref theRef b  i j i Z   $ E k l�� m k =  $ ' n o n o   $ %���� 0 thepn thePn o m   % & p p � q q   l r   * 1 r s r b   * / t u t b   * - v w v m   * + x x � y y  { w o   + ,���� 0 theref theRef u m   - . z z � { {  } s o      ���� 
0 output  ��   m r   4 E | } | b   4 C ~  ~ b   4 ? � � � b   4 = � � � b   4 9 � � � m   4 7 � � � � �  { � o   7 8���� 0 theref theRef � m   9 < � � � � �  @ � o   = >���� 0 thepn thePn  m   ? B � � � � �  } } o      ���� 
0 output   j  ��� � I  F M�� ���
�� .JonspClpnull���     **** � c   F I � � � o   F G���� 
0 output   � m   G H��
�� 
ctxt��  ��   _ m     � ��                                                                                  SntE  alis    �  	Dessau HD                  �e&�H+   �jSente 6.app                                                    +����=        ����  	                Reference Manager     �e
�      ���     �j C���  GDessau HD:Applications: Office-Research: Reference Manager: Sente 6.app     S e n t e   6 . a p p   	 D e s s a u   H D  :Applications/Office-Research/Reference Manager/Sente 6.app  / ��   ]  � � � l  O O��������  ��  ��   �  � � � Q   O � � ��� � Z   R � � ��� � � I   R X�� ����� 0 appisrunning appIsRunning �  ��� � o   S T���� 0 	targetapp 	targetApp��  ��   � O   [  � � � k   d ~ � �  � � � I  d i������
�� .miscactvnull��� ��� null��  ��   �  ��� � O   j ~ � � � I  p }�� � �
�� .prcskprsnull���     ctxt � m   p s � � � � �  v � �� ���
�� 
faal � m   v y��
�� eMdsKcmd��   � m   j m � ��                                                                                  sevs  alis    �  	Dessau HD                  �e&�H+  ��System Events.app                                              ���(        ����  	                CoreServices    �e
�      ���    ������  :Dessau HD:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 D e s s a u   H D  -System/Library/CoreServices/System Events.app   / ��  ��   � 4   [ a�� �
�� 
capp � o   _ `���� 0 	targetapp 	targetApp��   � k   � � � �  � � � l  � ���������  ��  ��   �  ��� � O   � � � � � I  � ��� ���
�� .sysodlogaskr        TEXT � b   � � � � � o   � ����� 0 	targetapp 	targetApp � m   � � � � � � �     i s   n o t   r u n n i n g .��   � m   � � � ��                                                                                  sevs  alis    �  	Dessau HD                  �e&�H+  ��System Events.app                                              ���(        ����  	                CoreServices    �e
�      ���    ������  :Dessau HD:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 D e s s a u   H D  -System/Library/CoreServices/System Events.app   / ��  ��   � R      ������
�� .ascrerr ****      � ****��  ��  ��   �  ��� � l  � ���������  ��  ��  ��     � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 0 appisrunning appIsRunning �  ��� � o      ���� 0 appname appName��  ��   � O     � � � E     � � � l   	 ����� � n    	 � � � 1    	��
�� 
pnam � 2   ��
�� 
prcs��  ��   � o   	 
���� 0 appname appName � m      � ��                                                                                  sevs  alis    �  	Dessau HD                  �e&�H+  ��System Events.app                                              ���(        ����  	                CoreServices    �e
�      ���    ������  :Dessau HD:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 D e s s a u   H D  -System/Library/CoreServices/System Events.app   / ��   �  � � � l     ��������  ��  ��   �  ��� � l      �� � ���   �on selectTargetApp(appList)	tell application "System Events" to choose from list appList with prompt "Pick the word editor of your choice to send the reference's CitationID to" default items (item 1 of appList) without multiple selections allowedend selectTargetApp    � � � � o n   s e l e c t T a r g e t A p p ( a p p L i s t )  	 t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "   t o   c h o o s e   f r o m   l i s t   a p p L i s t   w i t h   p r o m p t   " P i c k   t h e   w o r d   e d i t o r   o f   y o u r   c h o i c e   t o   s e n d   t h e   r e f e r e n c e ' s   C i t a t i o n I D   t o "   d e f a u l t   i t e m s   ( i t e m   1   o f   a p p L i s t )   w i t h o u t   m u l t i p l e   s e l e c t i o n s   a l l o w e d  e n d   s e l e c t T a r g e t A p p��       �� � � ���   � ������ 0 process  �� 0 appisrunning appIsRunning � �� ���� � ����� 0 process  �� �� ���  �  ���� 	0 input  ��   � �������������� 	0 input  �� 0 thepn thePn�� 0 
targetapps 
targetApps�� 0 	targetapp 	targetApp�� 0 theref theRef�� 
0 output   �   . 2 6 : =�� Q�� �������� p x z � � ��~�}�|�{ � ��z�y�x ��w�v�u�� 
�� 
ctxt
�� 
Sclb
�� 
Snj4
�� SxooSotg
� .SnccSnrsnull���     ****
�~ .JonspClpnull���     ****�} 0 appisrunning appIsRunning
�| 
capp
�{ .miscactvnull��� ��� null
�z 
faal
�y eMdsKcmd
�x .prcskprsnull���     ctxt
�w .sysodlogaskr        TEXT�v  �u  �� ��E�O������vE�O��&E�O� 7*�,��l E�O��  �%�%E�Y a �%a %�%a %E�O��&j UO E*�k+  )*a �/ *j Oa  a a a l UUY a  �a %j UW X  hOP � �t ��s�r � ��q�t 0 appisrunning appIsRunning�s �p ��p  �  �o�o 0 appname appName�r   � �n�n 0 appname appName �  ��m�l
�m 
prcs
�l 
pnam�q � 	*�-�,�Uascr  ��ޭ