FasdUAS 1.101.10   ��   ��    k             l     ��  ��    C = This code comes from https://gist.github.com/oliveratgithub/     � 	 	 z   T h i s   c o d e   c o m e s   f r o m   h t t p s : / / g i s t . g i t h u b . c o m / o l i v e r a t g i t h u b /   
  
 l     ��  ��    9 3 Open in AppleScript Editor and save as Application     �   f   O p e n   i n   A p p l e S c r i p t   E d i t o r   a n d   s a v e   a s   A p p l i c a t i o n      l     ��  ��    C = ------------------------------------------------------------     �   z   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -      l     ��  ��    V Pthis is required to break the filename into pieces (separate name and extension)     �   � t h i s   i s   r e q u i r e d   t o   b r e a k   t h e   f i l e n a m e   i n t o   p i e c e s   ( s e p a r a t e   n a m e   a n d   e x t e n s i o n )      l     ��������  ��  ��        l     ��������  ��  ��        l     ����  r        !   m      " " � # #  . ! 1    ��
�� 
txdl��  ��     $ % $ l     ��������  ��  ��   %  & ' & l     ��������  ��  ��   '  ( ) ( l    *���� * r     + , + 4    
�� -
�� 
psxf - m    	 . . � / / F / U s e r s / s t a n l e y t a n / D e s k t o p / s p l i t _ p d f , o      ���� 0 targetfolder targetFolder��  ��   )  0 1 0 l     ��������  ��  ��   1  2�� 2 l  P 3���� 3 O   P 4 5 4 k   O 6 6  7 8 7 r    # 9 : 9 l   ! ;���� ; I   !�� <��
�� .corecnte****       **** < l    =���� = 6   > ? > 2    ��
�� 
cwin ? =    @ A @ 1    ��
�� 
pvis A m    ��
�� boovtrue��  ��  ��  ��  ��   : o      ���� 80 totalnumberoffinderwindows TotalNumberOfFinderWindows 8  B C B Z   $ u D E F G D ?   $ ' H I H o   $ %���� 80 totalnumberoffinderwindows TotalNumberOfFinderWindows I m   % &����  E k   * G J J  K L K I  * 1�� M��
�� .coreclosnull���     obj  M 2   * -��
�� 
cwin��   L  N O N I  2 9���� P
�� .corecrel****      � null��   P �� Q��
�� 
kocl Q m   4 5��
�� 
brow��   O  R�� R O  : G S T S r   > F U V U o   > ?���� 0 targetfolder targetFolder V n       W X W 1   C E��
�� 
fvtg X 4   ? C�� Y
�� 
brow Y m   A B����  T m   : ; Z Z�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��   F  [ \ [ =   J M ] ^ ] o   J K���� 80 totalnumberoffinderwindows TotalNumberOfFinderWindows ^ m   K L����  \  _�� _ O  P ] ` a ` r   T \ b c b o   T U���� 0 targetfolder targetFolder c n       d e d 1   Y [��
�� 
fvtg e 4   U Y�� f
�� 
brow f m   W X����  a m   P Q g g�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��   G k   ` u h h  i j i I  ` g���� k
�� .corecrel****      � null��   k �� l��
�� 
kocl l m   b c��
�� 
brow��   j  m�� m O  h u n o n r   l t p q p o   l m���� 0 targetfolder targetFolder q n       r s r 1   q s��
�� 
fvtg s 4   m q�� t
�� 
brow t m   o p����  o m   h i u u�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��   C  v w v r   v � x y x l  v ~ z���� z n   v ~ { | { m   z ~��
�� 
cfol | l  v z }���� } 4  v z�� ~
�� 
cwin ~ m   x y���� ��  ��  ��  ��   y o      ���� 0 source_folder   w   �  r   � � � � � c   � � � � � n   � � � � � 2   � ���
�� 
cobj � o   � ����� 0 source_folder   � m   � ���
�� 
list � o      ���� 0 	all_files   �  � � � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � �  N e w   f i l e   n a m e : � �� ���
�� 
dtxt � m   � � � � � � �  ��   �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
ttxt � 1   � ���
�� 
rslt � o      ���� 0 new_name   �  � � � l  � ��� � ���   � � �now we start looping through all selected files. 'index' is our counter that we initially set to 1 and then count up with every file.    � � � �
 n o w   w e   s t a r t   l o o p i n g   t h r o u g h   a l l   s e l e c t e d   f i l e s .   ' i n d e x '   i s   o u r   c o u n t e r   t h a t   w e   i n i t i a l l y   s e t   t o   1   a n d   t h e n   c o u n t   u p   w i t h   e v e r y   f i l e . �  � � � l  � ��� � ���   � X Rthe 'index' number is of course required for the sequential renaming of our files!    � � � � � t h e   ' i n d e x '   n u m b e r   i s   o f   c o u r s e   r e q u i r e d   f o r   t h e   s e q u e n t i a l   r e n a m i n g   o f   o u r   f i l e s ! �  � � � Y   �M ��� � ��� � k   �H � �  � � � l  � ��� � ���   � C =using our index, we select the appropriate file from our list    � � � � z u s i n g   o u r   i n d e x ,   w e   s e l e c t   t h e   a p p r o p r i a t e   f i l e   f r o m   o u r   l i s t �  � � � r   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � 1   � ���
�� 
pidx � o   � ����� 0 	all_files   � o      ���� 0 	this_file   �  � � � r   � � � � � n   � � � � � J   � � � �  � � � 1   � ���
�� 
pnam �  ��� � 1   � ���
�� 
nmxt��   � o   � ����� 0 	this_file   � J       � �  � � � o      ���� 0 itemname itemName �  ��� � o      ���� 0 itemextension itemExtension��   �  � � � l  � ��� � ���   � k eif the index number is lower than 10, we will add a preceding "0" for a proper filename sorting later    � � � � � i f   t h e   i n d e x   n u m b e r   i s   l o w e r   t h a n   1 0 ,   w e   w i l l   a d d   a   p r e c e d i n g   " 0 "   f o r   a   p r o p e r   f i l e n a m e   s o r t i n g   l a t e r �  � � � Z   � � ��� � � A  � � � � � 1   � ���
�� 
pidx � m   � ����� 
 � r   � � � � m   �  � � � � �  0 � o      ���� 0 index_prefix  ��   � r   � � � m  
 � � � � �   � o      ���� 0 index_prefix   �  � � � l ��������  ��  ��   �  � � � l �� � ���   � f `lets check if the current file from our list (based on index-number) has even any file-extension    � � � � � l e t s   c h e c k   i f   t h e   c u r r e n t   f i l e   f r o m   o u r   l i s t   ( b a s e d   o n   i n d e x - n u m b e r )   h a s   e v e n   a n y   f i l e - e x t e n s i o n �  � � � Z  . � ��� � � =  � � � o  ���� 0 itemextension itemExtension � m   � � � � �   � k    � �  � � � l �� � ���   � 3 - "" means there is no file-extension present.    � � � � Z   " "   m e a n s   t h e r e   i s   n o   f i l e - e x t e n s i o n   p r e s e n t . �  ��� � r    � � � m   � � � � �   � o      ���� 0 file_extension  ��  ��   � k  #. � �  � � � l ##�� � ���   � G Ayup, we are currently processing a file that has a file-extension    � � � � � y u p ,   w e   a r e   c u r r e n t l y   p r o c e s s i n g   a   f i l e   t h a t   h a s   a   f i l e - e x t e n s i o n �  � � � l ##�� � ���   � X Rwe have to re-add the original file-extension after changing the name of the file!    � � � � � w e   h a v e   t o   r e - a d d   t h e   o r i g i n a l   f i l e - e x t e n s i o n   a f t e r   c h a n g i n g   t h e   n a m e   o f   t h e   f i l e ! �  ��� � r  #. � � � b  #* � � � m  #& � � �    . � o  &)���� 0 itemextension itemExtension � o      ���� 0 file_extension  ��   �  l //����   d ^let's rename our file, add the sequential number from 'index' and add the file-extension to it    � � l e t ' s   r e n a m e   o u r   f i l e ,   a d d   t h e   s e q u e n t i a l   n u m b e r   f r o m   ' i n d e x '   a n d   a d d   t h e   f i l e - e x t e n s i o n   t o   i t �� r  /H c  /@	
	 b  /< b  /8 b  /6 o  /2�� 0 new_name   o  25�~�~ 0 index_prefix   1  67�}
�} 
pidx o  8;�|�| 0 file_extension  
 m  <?�{
�{ 
TEXT l     �z�y n       1  CG�x
�x 
pnam o  @C�w�w 0 	this_file  �z  �y  ��  
�� 
pidx � m   � ��v�v  � l  � ��u�t I  � ��s�r
�s .corecnte****       **** o   � ��q�q 0 	all_files  �r  �u  �t  ��   � �p l NN�o�o   O Icongratulations for successfully accomplishing the batch renaming task :)    � � c o n g r a t u l a t i o n s   f o r   s u c c e s s f u l l y   a c c o m p l i s h i n g   t h e   b a t c h   r e n a m i n g   t a s k   : )�p   5 m    �                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��  ��       �n�m !"# �$�l�k�j�i�h�n   �g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X
�g .aevtoappnull  �   � ****�f 0 targetfolder targetFolder�e 80 totalnumberoffinderwindows TotalNumberOfFinderWindows�d 0 source_folder  �c 0 	all_files  �b 0 new_name  �a 0 	this_file  �` 0 itemname itemName�_ 0 itemextension itemExtension�^ 0 index_prefix  �] 0 file_extension  �\  �[  �Z  �Y  �X   �W%�V�U&'�T
�W .aevtoappnull  �   � ****% k    P((  ))  (**  2�S�S  �V  �U  & �R
�R 
pidx' * "�Q�P .�O�N+�M�L�K�J�I�H�G�F�E�D�C�B�A ��@ ��?�>�=�<�;�:�9�8�7�6 ��5 � � ��4 ��3
�Q 
txdl
�P 
psxf�O 0 targetfolder targetFolder
�N 
cwin+  
�M 
pvis
�L .corecnte****       ****�K 80 totalnumberoffinderwindows TotalNumberOfFinderWindows
�J .coreclosnull���     obj 
�I 
kocl
�H 
brow
�G .corecrel****      � null
�F 
fvtg
�E 
cfol�D 0 source_folder  
�C 
cobj
�B 
list�A 0 	all_files  
�@ 
dtxt
�? .sysodlogaskr        TEXT
�> 
rslt
�= 
ttxt�< 0 new_name  �; 0 	this_file  
�: 
pnam
�9 
nmxt�8 0 itemname itemName�7 0 itemextension itemExtension�6 
�5 0 index_prefix  �4 0 file_extension  
�3 
TEXT�TQ�*�,FO)��/E�O�@*�-�[�,\Ze81j 	E�O�k "*�-j O*��l O� 
�*�k/�,FUY -�k  � 
�*�k/�,FUY *��l O� 
�*�k/�,FUO*�k/a ,E` O_ a -a &E` Oa a a l O_ a ,E` O �k_ j 	kh  _ a �E/E` O_ [a ,\[a ,\ZlvE[a k/E` Z[a l/E`  ZO�a ! a "E` #Y 	a $E` #O_  a %  a &E` 'Y a (_  %E` 'O_ _ #%�%_ '%a )&_ a ,F[OY�oOPU .furlfile:///Users/stanleytan/Desktop/split_pdf�m  ,, -�2.- /�10/ 1�021 3�/43 �.
�. 
sdsk
�/ 
cfol4 �55 
 U s e r s
�0 
cfol2 �66  s t a n l e y t a n
�1 
cfol0 �77  D e s k t o p
�2 
cfol. �88  s p l i t _ p d f �-9�- 9  :;<!: == >�,?> @�+A@ B�*CB D�)ED F�(GF �'
�' 
sdsk
�( 
cfolG �HH 
 U s e r s
�) 
cfolE �II  s t a n l e y t a n
�* 
cfolC �JJ  D e s k t o p
�+ 
cfolA �KK  s p l i t _ p d f
�, 
docf? �LL  h e l l o 0 1 . j p e g; MM N�&ON P�%QP R�$SR T�#UT V�"WV �!
�! 
sdsk
�" 
cfolW �XX 
 U s e r s
�# 
cfolU �YY  s t a n l e y t a n
�$ 
cfolS �ZZ  D e s k t o p
�% 
cfolQ �[[  s p l i t _ p d f
�& 
docfO �\\  h e l l o 0 2 . j p e g< ]] ^� _^ `�a` b�cb d�ed f�gf �
� 
sdsk
� 
cfolg �hh 
 U s e r s
� 
cfole �ii  s t a n l e y t a n
� 
cfolc �jj  D e s k t o p
� 
cfola �kk  s p l i t _ p d f
�  
docf_ �ll  h e l l o 0 3 . j p e g! mm n�on p�qp r�sr t�ut v�wv �
� 
sdsk
� 
cfolw �xx 
 U s e r s
� 
cfolu �yy  s t a n l e y t a n
� 
cfols �zz  D e s k t o p
� 
cfolq �{{  s p l i t _ p d f
� 
docfo �||  h e l l o 0 4 . j p e g  �}}  c i t i b a n k" �~~  h e l l o 0 4 . j p e g# �  j p e g$ ��� 
 . j p e g�l  �k  �j  �i  �h   ascr  ��ޭ