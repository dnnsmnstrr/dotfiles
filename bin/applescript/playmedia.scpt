FasdUAS 1.101.10   ��   ��    k             l     ��  ��     -     � 	 	  -   
  
 l     ��  ��    ; 5 This script is made to be run within BetterTouchTool     �   j   T h i s   s c r i p t   i s   m a d e   t o   b e   r u n   w i t h i n   B e t t e r T o u c h T o o l      l     ��  ��    R L It detects which players are currently active and attempts to intelligently     �   �   I t   d e t e c t s   w h i c h   p l a y e r s   a r e   c u r r e n t l y   a c t i v e   a n d   a t t e m p t s   t o   i n t e l l i g e n t l y      l     ��  ��    $  playpause the appropriate one     �   <   p l a y p a u s e   t h e   a p p r o p r i a t e   o n e      l     ��  ��     -     �    -      l     ��������  ��  ��       !   l     �� " #��   "  - store useful states ---    # � $ $ 2 -   s t o r e   u s e f u l   s t a t e s   - - - !  % & % l     '���� ' r      ( ) ( n     * + * I    �������� 0 getactiveapp getActiveApp��  ��   +  f      ) o      ���� 0 activeappname activeAppName��  ��   &  , - , l    .���� . r     / 0 / n    1 2 1 I   	 �������� *0 getcurrentlyplaying getCurrentlyPlaying��  ��   2  f    	 0 o      ���� $0 currentlyplaying currentlyPlaying��  ��   -  3 4 3 l    5���� 5 r     6 7 6 n    8 9 8 I    �������� "0 getspotifystate getSpotifyState��  ��   9  f     7 o      ���� 0 spotifystate spotifyState��  ��   4  : ; : l     ��������  ��  ��   ;  < = < l     �� > ?��   >  - debugging stuff ---    ? � @ @ * -   d e b u g g i n g   s t u f f   - - - =  A B A l     ��������  ��  ��   B  C D C l     �� E F��   E N Huncomment this to get the bundle identifier of the currently playing app    F � G G � u n c o m m e n t   t h i s   t o   g e t   t h e   b u n d l e   i d e n t i f i e r   o f   t h e   c u r r e n t l y   p l a y i n g   a p p D  H I H l     �� J K��   J  return currentlyPlaying    K � L L . r e t u r n   c u r r e n t l y P l a y i n g I  M N M l     �� O P��   O  return spotifyState    P � Q Q & r e t u r n   s p o t i f y S t a t e N  R S R l     �� T U��   T  my playpause()    U � V V  m y   p l a y p a u s e ( ) S  W X W l     �� Y Z��   Y  return    Z � [ [  r e t u r n X  \ ] \ l     ��������  ��  ��   ]  ^ _ ^ l     �� ` a��   ` 2 ,- quickly pause spotify if it is playing ---    a � b b X -   q u i c k l y   p a u s e   s p o t i f y   i f   i t   i s   p l a y i n g   - - - _  c d c l   / e���� e Z    / f g���� f =     h i h o    ���� 0 spotifystate spotifyState i m     j j � k k  p l a y i n g g k    + l l  m n m O   ( o p o I  " '������
�� .spfyPlPsnull��� ��� null��  ��   p m     q q�                                                                                      @ alis    &  Macintosh HD                   BD ����Spotify.app                                                    ����            ����  
 cu             Applications  /:Applications:Spotify.app/     S p o t i f y . a p p    M a c i n t o s h   H D  Applications/Spotify.app  / ��   n  r�� r L   ) + s s m   ) * t t � u u  S p o t i f y   p a u s e d��  ��  ��  ��  ��   d  v w v l     ��������  ��  ��   w  x y x l     �� z {��   z ! - handle foreground app ---    { � | | 6 -   h a n d l e   f o r e g r o u n d   a p p   - - - y  } ~ } l     ��������  ��  ��   ~   �  l  0� ����� � Z   0� � � ��� � =   0 3 � � � o   0 1���� 0 activeappname activeAppName � m   1 2 � � � � �  S p o t i f y � k   6 E � �  � � � O   6 C � � � k   : B � �  � � � I  : ?������
�� .spfyPlPsnull��� ��� null��  ��   �  ��� � L   @ B � � m   @ A � � � � � * S p o t i f y   i n   f o r e g r o u n d��   � m   6 7 � ��                                                                                      @ alis    &  Macintosh HD                   BD ����Spotify.app                                                    ����            ����  
 cu             Applications  /:Applications:Spotify.app/     S p o t i f y . a p p    M a c i n t o s h   H D  Applications/Spotify.app  / ��   �  ��� � l  D D��������  ��  ��  ��   �  � � � =   H K � � � o   H I���� 0 activeappname activeAppName � m   I J � � � � �  i T u n e s �  � � � k   N ] � �  � � � O   N [ � � � k   R Z � �  � � � o   R W���� 0 	playpause   �  ��� � L   X Z � � m   X Y � � � � � ( i T u n e s   i n   f o r e g r o u n d��   � m   N O � ��                                                                                      @ alis    8  Macintosh HD                   BD ����Podcasts.app                                                   ����            ����  
 cu             Applications  #/:System:Applications:Podcasts.app/     P o d c a s t s . a p p    M a c i n t o s h   H D   System/Applications/Podcasts.app  / ��   �  ��� � l  \ \��������  ��  ��  ��   �  � � � =   ` c � � � o   ` a���� 0 activeappname activeAppName � m   a b � � � � �  I I N A �  � � � k   f { � �  � � � O   f y � � � k   l x � �  � � � l  l s � � � � I  l s�� ���
�� .prcskcodnull���     **** � m   l o���� 1��   �  
 space bar    � � � �    s p a c e   b a r �  ��� � L   t x � � m   t w � � � � � $ I I N A   i n   f o r e g r o u n d��   � m   f i � ��                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �  ��� � l  z z��������  ��  ��  ��   �  � � � =   ~ � � � � o   ~ ���� 0 activeappname activeAppName � m    � � � � � �  K o d i �  � � � k   � � � �  � � � O   � � � � � k   � � � �  � � � l  � � � � � � I  � ��� ���
�� .prcskcodnull���     **** � m   � ����� 1��   �  
 space bar    � � � �    s p a c e   b a r �  ��� � L   � � � � m   � � � � � � � $ K o d i   i n   f o r e g r o u n d��   � m   � � � ��                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �  ��� � l  � ���������  ��  ��  ��   �  � � � =   � � � � � o   � ����� 0 activeappname activeAppName � m   � � � � � � �  A m a z o n   M u s i c �  � � � k   � � � �  � � � O   � � � � � k   � � � �  � � � l  � � � � � � I  � ��� ���
�� .prcskcodnull���     **** � m   � ����� 1��   �  
 space bar    � � � �    s p a c e   b a r �  ��� � L   � � � � m   � � � � � � � 4 A m a z o n   M u s i c   i n   f o r e g r o u n d��   � m   � � � ��                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �  � � � l  � ��� � ��   �  my playpause     �  m y   p l a y p a u s e �  l  � �����   ) #return "Amazon Music in foreground"    � F r e t u r n   " A m a z o n   M u s i c   i n   f o r e g r o u n d " �� l  � ���������  ��  ��  ��   � 	 =  � �

 n   � � 1   � ���
�� 
prun m   � ��                                                                                  sfri  alis    "  Macintosh HD                   BD ����
Safari.app                                                     ����            ����  
 cu             Applications  /:Applications:Safari.app/   
 S a f a r i . a p p    M a c i n t o s h   H D  Applications/Safari.app   / ��   m   � ���
�� boovtrue	 �� O   �� k   ��  r   � � n  � � I   � ��������� (0 getactivesafaritab getActiveSafariTab��  ��    f   � � o      ���� 0 	activetab 	activeTab �� Z   ������ >  � � o   � ����� 0 	activetab 	activeTab m   � � � 
 e r r o r X   �� ��!  X   ��"��#" O  �$%$ k  �&& '(' l ��)*��  )  Netflix   * �++  N e t f l i x( ,��, Z  �-./��- C  !010 1  ��
�� 
pURL1 m   22 �33 : h t t p s : / / w w w . n e t f l i x . c o m / w a t c h. k  $244 565 I $+��7��
�� .sfridojsnull���     ctxt7 m  $'88 �99 v a r   v   =   d o c u m e n t . q u e r y S e l e c t o r ( ' v i d e o ' ) ; 
 	 	 	 	 	 	 	 	 i f   ( v . p a u s e d )   { 
 	 	 	 	 	 	 	 	     v . p l a y ( ) ; 
 	 	 	 	 	 	 	 	 } 
 	 	 	 	 	 	 	 	 e l s e   { 
 	 	 	 	 	 	 	 	     v . p a u s e ( ) ; 
 	 	 	 	 	 	 	 	 }��  6 :;: l ,,��<=��  <  Alternative:   = �>>  A l t e r n a t i v e :; ?@? l ,,�AB�  A � �do JavaScript " document.getElementsByClassName('PlayerControlsNeo__button-control-row')[0].getElementsByTagName('button')[0].click()"   B �CC d o   J a v a S c r i p t   "   d o c u m e n t . g e t E l e m e n t s B y C l a s s N a m e ( ' P l a y e r C o n t r o l s N e o _ _ b u t t o n - c o n t r o l - r o w ' ) [ 0 ] . g e t E l e m e n t s B y T a g N a m e ( ' b u t t o n ' ) [ 0 ] . c l i c k ( ) "@ DED L  ,0FF m  ,/GG �HH  N e t f l i xE I�~I l 11�}JK�}  J  YouTube   K �LL  Y o u T u b e�~  / MNM G  5NOPO C  5>QRQ 1  5:�|
�| 
pURLR m  :=SS �TT 8 h t t p : / / w w w . y o u t u b e . c o m / w a t c hP C  AJUVU 1  AF�{
�{ 
pURLV m  FIWW �XX : h t t p s : / / w w w . y o u t u b e . c o m / w a t c hN Y�zY Z  Q�Z[�y�xZ =  QZ\]\ o  QT�w�w 0 	activetab 	activeTab] n  TY^_^ 1  UY�v
�v 
pidx_ o  TU�u�u 0 t  [ l ]�`ab` Z  ]�cd�tec =  ]bfgf o  ]^�s�s 0 activeappname activeAppNameg m  ^ahh �ii  S a f a r id k  eqjj klk I el�rm�q
�r .sfridojsnull���     ctxtm m  ehnn �oo � d o c u m e n t . g e t E l e m e n t s B y C l a s s N a m e ( ' y t p - p l a y - b u t t o n   y t p - b u t t o n ' ) [ 0 ] . c l i c k ( ) ;�q  l pqp l mm�prs�p  r &  tell application "System Events"   s �tt @ t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "q uvu l mm�owx�o  w  key code 49 -- space bar   x �yy 0 k e y   c o d e   4 9   - -   s p a c e   b a rv z{z l mm�n|}�n  |  end tell   } �~~  e n d   t e l l{ �m L  mq�� m  mp�� ��� * Y o u T u b e   i n   f o r e g r o u n d�m  �t  e k  t��� ��� I t{�l��k
�l .sfridojsnull���     ctxt� m  tw�� ��� � d o c u m e n t . g e t E l e m e n t s B y C l a s s N a m e ( ' y t p - p l a y - b u t t o n   y t p - b u t t o n ' ) [ 0 ] . c l i c k ( ) ;�k  � ��j� L  |��� m  |�� ��� * Y o u T u b e   i n   b a c k g r o u n d�j  a  YouTube Player is open   b ��� , Y o u T u b e   P l a y e r   i s   o p e n�y  �x  �z  ��  ��  % o  �i�i 0 t  �� 0 t  # n   ���� 2  �h
�h 
bTab� o   � �g�g 0 w  �� 0 w  ! 2  � ��f
�f 
cwin��  ��  ��   m   � ����                                                                                  sfri  alis    "  Macintosh HD                   BD ����
Safari.app                                                     ����            ����  
 cu             Applications  /:Applications:Safari.app/   
 S a f a r i . a p p    M a c i n t o s h   H D  Applications/Safari.app   / ��  ��  ��  ��  ��   � ��� l     �e�d�c�e  �d  �c  � ��� l     �b���b  � ? 9- handle background playing using btt's player status ---   � ��� r -   h a n d l e   b a c k g r o u n d   p l a y i n g   u s i n g   b t t ' s   p l a y e r   s t a t u s   - - -� ��� l �'��a�`� Z  �'����_� =  ����� o  ���^�^ $0 currentlyplaying currentlyPlaying� m  ���� ��� $ c o m . s p o t i f y . c l i e n t� k  ���� ��� Z  �����]�� = ����� n  ����� 1  ���\
�\ 
prun� m  �����                                                                                      @ alis    &  Macintosh HD                   BD ����Spotify.app                                                    ����            ����  
 cu             Applications  /:Applications:Spotify.app/     S p o t i f y . a p p    M a c i n t o s h   H D  Applications/Spotify.app  / ��  � m  ���[
�[ boovtrue� Z  �����Z�� =  ����� o  ���Y�Y 0 spotifystate spotifyState� m  ���� ���  s t o p p e d� n ����� I  ���X�W�V�X 0 startplaylist startPlaylist�W  �V  �  f  ���Z  � k  ���� ��� O ����� I ���U�T�S
�U .spfyPlPsnull��� ��� null�T  �S  � m  �����                                                                                      @ alis    &  Macintosh HD                   BD ����Spotify.app                                                    ����            ����  
 cu             Applications  /:Applications:Spotify.app/     S p o t i f y . a p p    M a c i n t o s h   H D  Applications/Spotify.app  / ��  � ��R� L  ���� m  ���� ��� * S p o t i f y   i n   b a c k g r o u n d�R  �]  � L  ���� m  ���� ��� & S p o t i f y   n o t   r u n n i n g� ��Q� l ���P�O�N�P  �O  �N  �Q  � ��� =  ����� o  ���M�M $0 currentlyplaying currentlyPlaying� m  ���� ���   c o m . a p p l e . S a f a r i� ��� k  ���� ��� n ����� I  ���L�K�J�L 0 	playpause  �K  �J  �  f  ��� ��� L  ���� m  ���� ��� ( S a f a r i   i n   b a c k g r o u n d� ��I� l ���H�G�F�H  �G  �F  �I  � ��� =  ����� o  ���E�E $0 currentlyplaying currentlyPlaying� m  ���� ��� & c o m . c o l l i d e r l i . i i n a� ��� k  ��� ��� O  ���� I ��D��C
�D .BtttNaTrnull���     ****� m  ��� ��� 
 p a u s e�C  � m  �����                                                                                      @ alis    F  Macintosh HD                   BD ����BetterTouchTool.app                                            ����            ����  
 cu             Applications  #/:Applications:BetterTouchTool.app/   (  B e t t e r T o u c h T o o l . a p p    M a c i n t o s h   H D   Applications/BetterTouchTool.app  / ��  � ��� L  �� m  �� ��� $ I I N A   i n   b a c k g r o u n d� ��� l �B�A�@�B  �A  �@  � ��?� l �>���>  � ; 5add your own media app by replacing bundle.identifier   � ��� j a d d   y o u r   o w n   m e d i a   a p p   b y   r e p l a c i n g   b u n d l e . i d e n t i f i e r�?  � ��� =  ��� o  �=�= $0 currentlyplaying currentlyPlaying� m  �� ��� " b u n d l e . i d e n t i f i e r� ��<� k  #�� ��� l �;���;  � J Dif your app exposes applescript funtions, you can target it directly   � ��� � i f   y o u r   a p p   e x p o s e s   a p p l e s c r i p t   f u n t i o n s ,   y o u   c a n   t a r g e t   i t   d i r e c t l y�    n  I  �:�9�8�: 0 	playpause  �9  �8    f   �7 L  # m  " � * Y o u r A p p   i n   b a c k g r o u n d�7  �<  �_  �a  �`  � 	 l     �6�5�4�6  �5  �4  	 

 l     �3�3   1 +- apps that don't get recognized by btt ---    � V -   a p p s   t h a t   d o n ' t   g e t   r e c o g n i z e d   b y   b t t   - - -  l (B�2�1 Z  (B�0�/ = (1 n  (/ 1  +/�.
�. 
prun m  (+�                                                                                      @ alis    :  Macintosh HD                   BD ����Amazon Music.app                                               ����            ����  
 cu             Applications   /:Applications:Amazon Music.app/  "  A m a z o n   M u s i c . a p p    M a c i n t o s h   H D  Applications/Amazon Music.app   / ��   m  /0�-
�- boovtrue k  4>  n 49 I  59�,�+�*�, 0 	playpause  �+  �*    f  45 �) L  :> m  :=   �!! 4 A m a z o n   M u s i c   i n   b a c k g r o u n d�)  �0  �/  �2  �1   "#" l     �(�'�&�(  �'  �&  # $%$ l     �%&'�%  & 9 3- if nothing else got triggered, resume spotify ---   ' �(( f -   i f   n o t h i n g   e l s e   g o t   t r i g g e r e d ,   r e s u m e   s p o t i f y   - - -% )*) l Cn+�$�#+ Z  Cn,-.�", =  CH/0/ o  CD�!�! 0 spotifystate spotifyState0 m  DG11 �22  p a u s e d- k  KZ33 454 O KU676 I OT� ��
�  .spfyPlPsnull��� ��� null�  �  7 m  KL88�                                                                                      @ alis    &  Macintosh HD                   BD ����Spotify.app                                                    ����            ����  
 cu             Applications  /:Applications:Spotify.app/     S p o t i f y . a p p    M a c i n t o s h   H D  Applications/Spotify.app  / ��  5 9�9 L  VZ:: m  VY;; �<< : p l a y i n g   S p o t i f y   i n   b a c k g r o u n d�  . =>= =  ]b?@? o  ]^�� 0 spotifystate spotifyState@ m  ^aAA �BB  s t o p p e d> C�C n ejDED I  fj���� 0 startplaylist startPlaylist�  �  E  f  ef�  �"  �$  �#  * FGF l     ����  �  �  G HIH l     �JK�  J  -------------------   K �LL & - - - - - - - - - - - - - - - - - - -I MNM l osO��O L  osPP m  orQQ �RR  r e a c h e d   e n d�  �  N STS l     �UV�  U  -------------------   V �WW & - - - - - - - - - - - - - - - - - - -T XYX l     ����  �  �  Y Z[Z l     �\]�  \  --  Functions  ----   ] �^^ & - -     F u n c t i o n s     - - - -[ _`_ l     ���
�  �  �
  ` aba l     �	cd�	  c ( " Return the active app as a String   d �ee D   R e t u r n   t h e   a c t i v e   a p p   a s   a   S t r i n gb fgf i     hih I      ���� 0 getactiveapp getActiveApp�  �  i k     jj klk O    mnm r    opo 6  qrq 4   �s
� 
prcss m    �� r =  	 tut n   
 vwv 1   
 �
� 
pisfw  g   
 
u m    �
� boovtruep o      �� 0 	activeapp 	activeAppn m     xx�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  l y� y L    zz n    {|{ 1    ��
�� 
pnam| o    ���� 0 	activeapp 	activeApp�   g }~} l     ��������  ��  ��  ~ � l     ������  � G A Return the index of the current tab in Safari's frontmost window   � ��� �   R e t u r n   t h e   i n d e x   o f   t h e   c u r r e n t   t a b   i n   S a f a r i ' s   f r o n t m o s t   w i n d o w� ��� i    ��� I      �������� (0 getactivesafaritab getActiveSafariTab��  ��  � O     !��� Q     ���� O   ��� L    �� n    ��� 1    ��
�� 
pidx� n    ��� 1    ��
�� 
cTab� 4   ���
�� 
cwin� m    ���� � m    ���                                                                                  sfri  alis    "  Macintosh HD                   BD ����
Safari.app                                                     ����            ����  
 cu             Applications  /:Applications:Safari.app/   
 S a f a r i . a p p    M a c i n t o s h   H D  Applications/Safari.app   / ��  � R      ������
�� .ascrerr ****      � ****��  ��  � L     �� m    �� ��� @ C o u l d   n o t   g e t   c u r r e n t   s a f a r i   t a b� m     ���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l     ��������  ��  ��  � ��� l     ������  � Z T Return the the bundle identifier of the currently playing app, as determined by BTT   � ��� �   R e t u r n   t h e   t h e   b u n d l e   i d e n t i f i e r   o f   t h e   c u r r e n t l y   p l a y i n g   a p p ,   a s   d e t e r m i n e d   b y   B T T� ��� i    ��� I      �������� *0 getcurrentlyplaying getCurrentlyPlaying��  ��  � Q     ���� O   ��� L    �� I   �����
�� .BttGVarSnull���     ****� m    �� ��� , B T T C u r r e n t l y P l a y i n g A p p��  � m    ���                                                                                      @ alis    F  Macintosh HD                   BD ����BetterTouchTool.app                                            ����            ����  
 cu             Applications  #/:Applications:BetterTouchTool.app/   (  B e t t e r T o u c h T o o l . a p p    M a c i n t o s h   H D   Applications/BetterTouchTool.app  / ��  � R      ������
�� .ascrerr ****      � ****��  ��  � L    �� m    �� ��� F C o u l d   n o t   g e t   c u r r e n t l y   p l a y i n g   a p p� ��� l     ��������  ��  ��  � ��� l     ������  � = 7 Return the player state of spotify (playing or paused)   � ��� n   R e t u r n   t h e   p l a y e r   s t a t e   o f   s p o t i f y   ( p l a y i n g   o r   p a u s e d )� ��� i    ��� I      �������� "0 getspotifystate getSpotifyState��  ��  � k     �� ��� Z     ������� =    ��� n     ��� 1    ��
�� 
prun� m     ���                                                                                      @ alis    &  Macintosh HD                   BD ����Spotify.app                                                    ����            ����  
 cu             Applications  /:Applications:Spotify.app/     S p o t i f y . a p p    M a c i n t o s h   H D  Applications/Spotify.app  / ��  � m    ��
�� boovtrue� O   ��� L    �� c    ��� 1    ��
�� 
pPlS� m    ��
�� 
ctxt� m    	���                                                                                      @ alis    &  Macintosh HD                   BD ����Spotify.app                                                    ����            ����  
 cu             Applications  /:Applications:Spotify.app/     S p o t i f y . a p p    M a c i n t o s h   H D  Applications/Spotify.app  / ��  ��  ��  � ���� L    �� m    �� ���  n o t   r u n n i n g��  � ��� l     ��������  ��  ��  � ��� i    ��� I      �������� 0 	playpause  ��  ��  � Q     ���� k    �� ��� O    ��� k    �� ��� l   ������  � 7 1trigger_action "{\"BTTPredefinedActionType\":23}"   � ��� b t r i g g e r _ a c t i o n   " { \ " B T T P r e d e f i n e d A c t i o n T y p e \ " : 2 3 } "� ���� l   ���� I   �����
�� .BtttNaTrnull���     ****� m    �� ���  p l a y p a u s e��  � H B this requires a named trigger with the play/pause action assigned   � ��� �   t h i s   r e q u i r e s   a   n a m e d   t r i g g e r   w i t h   t h e   p l a y / p a u s e   a c t i o n   a s s i g n e d��  � m    ���                                                                                      @ alis    F  Macintosh HD                   BD ����BetterTouchTool.app                                            ����            ����  
 cu             Applications  #/:Applications:BetterTouchTool.app/   (  B e t t e r T o u c h T o o l . a p p    M a c i n t o s h   H D   Applications/BetterTouchTool.app  / ��  � ���� L    �� m    �� ���   S y s t e m   p l a y p a u s e��  � R      ������
�� .ascrerr ****      � ****��  ��  � L    �� m    �� ��� , E r r o r   o n   B T T   p l a y p a u s e� ��� l     ��������  ��  ��  � ��� i    ��� I      �������� 0 startplaylist startPlaylist��  ��  � Q     ���� k    �� � � O     l    I   ����
�� .BtttNaTrnull���     **** m     � * p l a y   c u r r e n t   p l a y l i s t��   0 * this requires corresponding named trigger    �		 T   t h i s   r e q u i r e s   c o r r e s p o n d i n g   n a m e d   t r i g g e r m    

�                                                                                      @ alis    F  Macintosh HD                   BD ����BetterTouchTool.app                                            ����            ����  
 cu             Applications  #/:Applications:BetterTouchTool.app/   (  B e t t e r T o u c h T o o l . a p p    M a c i n t o s h   H D   Applications/BetterTouchTool.app  / ��    �� L     m     � @ p l a y i n g   c u r r e n t   S p o t i f y   p l a y l i s t��  � R      ������
�� .ascrerr ****      � ****��  ��  � L     m     � . E r r o r   s t a r t i n g   p l a y l i s t�  l     ��������  ��  ��    i     I      �������� ,0 isotherplayerrunning isOtherPlayerRunning��  ��   r      n     I    �������� *0 getcurrentlyplaying getCurrentlyPlaying��  ��    f      o      ���� 0 currentplayer currentPlayer �� l     ��������  ��  ��  ��       
�� !"#$%��   ������������������ 0 getactiveapp getActiveApp�� (0 getactivesafaritab getActiveSafariTab�� *0 getcurrentlyplaying getCurrentlyPlaying�� "0 getspotifystate getSpotifyState�� 0 	playpause  �� 0 startplaylist startPlaylist�� ,0 isotherplayerrunning isOtherPlayerRunning
�� .aevtoappnull  �   � **** ��i����&'���� 0 getactiveapp getActiveApp��  ��  & ���� 0 	activeapp 	activeApp' x��(����
�� 
prcs(  
�� 
pisf
�� 
pnam�� � *�k/�[�,\Ze81E�UO��,E �������)*���� (0 getactivesafaritab getActiveSafariTab��  ��  )  * �������������
�� 
cwin
�� 
cTab
�� 
pidx��  ��  �� "�  � *�k/�,�,EUW 	X  �U  �������+,���� *0 getcurrentlyplaying getCurrentlyPlaying��  ��  +  , ���������
�� .BttGVarSnull���     ****��  ��  ��  � �j UW 	X  �! �������-.���� "0 getspotifystate getSpotifyState��  ��  -  . ��������
�� 
prun
�� 
pPlS
�� 
ctxt�� ��,e  � *�,�&UY hO�" �������/0���� 0 	playpause  ��  ��  /  0 ���������
�� .BtttNaTrnull���     ****��  �  ��  � �j UO�W 	X  �# �~��}�|12�{�~ 0 startplaylist startPlaylist�}  �|  1  2 
�z�y�x
�z .BtttNaTrnull���     ****�y  �x  �{  � �j UO�W 	X  �$ �w�v�u34�t�w ,0 isotherplayerrunning isOtherPlayerRunning�v  �u  3 �s�s 0 currentplayer currentPlayer4 �r�r *0 getcurrentlyplaying getCurrentlyPlaying�t )j+  E�% �q5�p�o67�n
�q .aevtoappnull  �   � ****5 k    s88  %99  ,::  3;;  c<<  == �>> ?? )@@ M�m�m  �p  �o  6 �l�k�l 0 w  �k 0 t  7 E�j�i�h�g�f�e j q�d t � � � � � � ��c�b � � � � ��a�`�_�^�]�\�[�Z�Y28�XGSW�W�Vhn������U����T�����S�� 1;AQ�j 0 getactiveapp getActiveApp�i 0 activeappname activeAppName�h *0 getcurrentlyplaying getCurrentlyPlaying�g $0 currentlyplaying currentlyPlaying�f "0 getspotifystate getSpotifyState�e 0 spotifystate spotifyState
�d .spfyPlPsnull��� ��� null�c 1
�b .prcskcodnull���     ****
�a 
prun�` (0 getactivesafaritab getActiveSafariTab�_ 0 	activetab 	activeTab
�^ 
cwin
�] 
kocl
�\ 
cobj
�[ .corecnte****       ****
�Z 
bTab
�Y 
pURL
�X .sfridojsnull���     ctxt
�W 
bool
�V 
pidx�U 0 startplaylist startPlaylist�T 0 	playpause  
�S .BtttNaTrnull���     ****�nt)j+  E�O)j+ E�O)j+ E�O��  � *j UO�Y hO��  � 
*j O�UOPYV��  � 
b  O�UOPY>��  a  a j Oa UOPY �a   a  a j Oa UOPY �a   a  a j Oa UOPY �a a ,e  �a  �)j+ E` O_ a  � �*a -[a a l  kh   ��a !-[a a l  kh � r*a ",a # a $j %Oa &OPY U*a ",a '
 *a ",a (a )& 8_ �a *,  (�a +  a ,j %Oa -Y a .j %Oa /Y hY hU[OY��[OY�hY hUY hO�a 0  7�a ,e  $�a 1  
)j+ 2Y � *j UOa 3Y a 4OPY O�a 5  )j+ 6Oa 7OPY 8�a 8  a 9 	a :j ;UOa <OPY �a =  )j+ 6Oa >Y hOa ?a ,e  )j+ 6Oa @Y hO�a A  � *j UOa BY �a C  
)j+ 2Y hOa Dascr  ��ޭ