FasdUAS 1.101.10   ��   ��    k             l      ��  ��    This script produces a Sente CitationID wrapped in curly braces and attaches text selected in Sente as page numbers after the @ symbol. I.e. {CitationIDofSelectedReference@SelectedText}. It then tries to copy this string into a text editor of the user's choice.      � 	 	   T h i s   s c r i p t   p r o d u c e s   a   S e n t e   C i t a t i o n I D   w r a p p e d   i n   c u r l y   b r a c e s   a n d   a t t a c h e s   t e x t   s e l e c t e d   i n   S e n t e   a s   p a g e   n u m b e r s   a f t e r   t h e   @   s y m b o l .   I . e .   { C i t a t i o n I D o f S e l e c t e d R e f e r e n c e @ S e l e c t e d T e x t } .   I t   t h e n   t r i e s   t o   c o p y   t h i s   s t r i n g   i n t o   a   t e x t   e d i t o r   o f   t h e   u s e r ' s   c h o i c e .     
  
 l     ��������  ��  ��     ��  i         I      �� ���� 0 process     ��  o      ���� 	0 input  ��  ��    k     �       r         o     ���� 	0 input    o      ���� 
0 the_pn        l   ��������  ��  ��        l   ��  ��    M G input the text editors of your choice in the order of your preferences     �   �   i n p u t   t h e   t e x t   e d i t o r s   o f   y o u r   c h o i c e   i n   t h e   o r d e r   o f   y o u r   p r e f e r e n c e s      r         J    
 ! !  " # " m     $ $ � % %  S c r i v e n e r #  & ' & m     ( ( � ) )  M i c r o s o f t   W o r d '  * + * m     , , � - -  T e x t E d i t +  .�� . m     / / � 0 0 
 n v A L T��     o      ���� 0 the_targets     1 2 1 l   ��������  ��  ��   2  3 4 3 l   �� 5 6��   5 P J this prompts a list of the applications above for the user to select from    6 � 7 7 �   t h i s   p r o m p t s   a   l i s t   o f   t h e   a p p l i c a t i o n s   a b o v e   f o r   t h e   u s e r   t o   s e l e c t   f r o m 4  8 9 8 r    ! : ; : c     < = < J     > >  ?�� ? I   �� @ A
�� .gtqpchltns    @   @ ns   @ o    ���� 0 the_targets   A �� B C
�� 
prmp B m     D D � E E ~ P i c k   t h e   w o r d   e d i t o r   o f   y o u r   c h o i c e   t o   s e n d   t h e   r e f e r e n c e   I D   t o C �� F G
�� 
inSL F l    H���� H n     I J I 4    �� K
�� 
cobj K m    ����  J o    ���� 0 the_targets  ��  ��   G �� L��
�� 
mlsl L m    ��
�� boovfals��  ��   = m    ��
�� 
TEXT ; o      ���� 0 
the_target   9  M N M l  " "��������  ��  ��   N  O P O l  " "�� Q R��   Q n h this combines the Citation ID of the selected reference with the selected text into the required string    R � S S �   t h i s   c o m b i n e s   t h e   C i t a t i o n   I D   o f   t h e   s e l e c t e d   r e f e r e n c e   w i t h   t h e   s e l e c t e d   t e x t   i n t o   t h e   r e q u i r e d   s t r i n g P  T U T O   " f V W V k   & e X X  Y Z Y r   & 3 [ \ [ l  & 1 ]���� ] I  & 1�� ^ _
�� .SnccSnrsnull���     **** ^ 1   & )��
�� 
Sclb _ �� `��
�� 
Snj4 ` m   * -��
�� SxooSotg��  ��  ��   \ o      ���� 0 the_ref   Z  a b a Z   4 [ c d�� e c =  4 9 f g f o   4 5���� 
0 the_pn   g m   5 8��
�� 
null d r   < G h i h b   < E j k j b   < A l m l m   < ? n n � o o  { m o   ? @���� 0 the_ref   k m   A D p p � q q  } i o      ���� 
0 output  ��   e r   J [ r s r b   J Y t u t b   J U v w v b   J S x y x b   J O z { z m   J M | | � } }  { { o   M N���� 0 the_ref   y m   O R ~ ~ �    @ w o   S T���� 
0 the_pn   u m   U X � � � � �  } s o      ���� 
0 output   b  ��� � I  \ e�� ���
�� .JonspClpnull���     **** � c   \ a � � � o   \ ]���� 
0 output   � m   ] `��
�� 
ctxt��  ��   W m   " # � ��                                                                                  SntE  alis    �  	Dessau HD                  �e&�H+   �jSente 6.app                                                    +����=        ����  	                Reference Manager     �e
�      ���     �j C���  GDessau HD:Applications: Office-Research: Reference Manager: Sente 6.app     S e n t e   6 . a p p   	 D e s s a u   H D  :Applications/Office-Research/Reference Manager/Sente 6.app  / ��   U  � � � l  g g��������  ��  ��   �  � � � O   g � � � � k   p � � �  � � � I  p u������
�� .miscactvnull��� ��� null��  ��   �  ��� � O   v � � � � I  | ��� � �
�� .prcskprsnull���     ctxt � m   |  � � � � �  v � �� ���
�� 
faal � m   � ���
�� eMdsKcmd��   � m   v y � ��                                                                                  sevs  alis    �  	Dessau HD                  �e&�H+  ��System Events.app                                              ���(        ����  	                CoreServices    �e
�      ���    ������  :Dessau HD:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p   	 D e s s a u   H D  -System/Library/CoreServices/System Events.app   / ��  ��   � 4   g m�� �
�� 
capp � o   k l���� 0 
the_target   �  ��� � l  � ���������  ��  ��  ��  ��       �� � ���   � ���� 0 process   � �� ���� � ����� 0 process  �� �� ���  �  ���� 	0 input  ��   � �������������� 	0 input  �� 
0 the_pn  �� 0 the_targets  �� 0 
the_target  �� 0 the_ref  �� 
0 output   � ! $ ( , /���� D������������ ����������� n p | ~ ��������� � ��������� 
�� 
prmp
�� 
inSL
�� 
cobj
�� 
mlsl�� 
�� .gtqpchltns    @   @ ns  
�� 
TEXT
�� 
Sclb
�� 
Snj4
�� SxooSotg
�� .SnccSnrsnull���     ****
�� 
null
�� 
ctxt
�� .JonspClpnull���     ****
�� 
capp
�� .miscactvnull��� ��� null
�� 
faal
�� eMdsKcmd
�� .prcskprsnull���     ctxt�� ��E�O�����vE�O�����k/�f� kv�&E�O� A*�,�a l E�O�a   a �%a %E�Y a �%a %�%a %E�O�a &j UO*a �/ *j Oa  a a a l  UUOP ascr  ��ޭ