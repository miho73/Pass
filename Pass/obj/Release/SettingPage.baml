   M S B A M L   `   `   `  ���� ?  ;Pass, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:PassPass  #clr-namespace:Pass.WPFPass.WPF      Pass.SettingPage   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     $localclr-namespace:Pass     &WPFclr-namespace:Pass.WPF     -      Pass.Localization    settings � Title# Z  $	��450��$	��800�� � 
ResizeMode$ NoResize=� � Icon$0 *pack://siteoforigin:,,,/Resources/icon.png�� � 	Resources    ComboBoxToggleButton �� 
TargetType � ColumnDefinitions ��Name �� CornerRadius	 F�Name  ComboBoxTextBox
 �� 
TargetType �� Property �� Value �� Padding J� SnapsToDevicePixels �� Triggers P� Property P� Value �� 
TargetName �� 	ClickMode d� 	IsChecked �� Path �� Mode �� RelativeSource J� IsHitTestVisible �� SelectionBoxItem �� SelectionBoxItemTemplate ��Name �� 
IsReadOnly �� 
IsReadOnly �� IsDropDownOpen � AllowsTransparency  � ActualWidth! �� MaxDropDownHeight" K� IsItemsHost-  'System.Windows.Input.KeyboardNavigation#   DirectionalNavigation$ P� 
SourceName% �� Triggers  Btn& �Name' �� Color��%	  &	        &	 A    '�� x    '�� �    7   7  &	     �� " d�.R��  �� �� $��20 �.+��� $ Border��$��2��$ 0�����	#FF3F3F3F���	#FF97A0A5$��1q��� $��0��$ 0��$��1q����	#FF3F3F3F���	#FF97A0A5$��0,0,1,0q�F� $	 Arrow��$��1��
�������$��Center=�$��Center=�=����        �    �� � 	= ��[ � z �� � z     � 	=  	= 	�� " ��.R��� $ PART_ContentHost��|�.  #��z���� "
 ��.���  �@J�SnapsToDevicePixels . ��  � ��
 �������  �@�OverridesDefaultStyle . ��  � �� �� " ��.R��� $��Border��$ 2q� . ._���  P�  �@��IsHighlighted . . ��� $ Border�� � �� �	#FF4F4F4FP�  � {� .  . ���  � �� �#888888�� "
 ��.���  �@J�SnapsToDevicePixels . ��  �@�OverridesDefaultStyle . ��  � ��$
 Auto=���  � ��$
 Auto=���  � �� . ��  � ��$	 120����  � ��$ 20����  � ��
 �������  � �� �� " ��.R�� .+�d� $��ToggleButton��8��  $��2��|�.  $ Press=� �� $ IsDropDownOpen�$ TwoWay=� �� *TemplatedParent+�� $��ContentSite�� .  #��z #��z #��z��$��3,3,23,3q�$��Center=�$
��Left=��� $ PART_EditableTextBox��8�� $
��Left=�$��Center=�$��3,3,23,3q�|�. ���	#FF3F3F3F
��� � �$y�Hidden=�# z ��Z� � $��Popup��$��Bottom=�#��z  . |�.  $��Slide=�.��� $��DropDown�� . #��z  #��z! .+��� $ DropDownBorder�����	#FF3F3F3F$��1q����#888888�� $��4,6,4,6q� . .���� " . $# 	Contained=� P�  �@��HasItems .  . ��� $ DropDownBorder�� � ��$ 95��P�  � {� .  . ���  � �� �#888888P�  �@��
IsGrouping . . ���  � �� .  P� $$ Popup�� �@�AllowsTransparency . . ��� $ DropDownBorder�� �@��CornerRadius$ 0���� $ DropDownBorder�� � ��$ 0,2,0,0q�P�  �@��
IsEditable . . ���  � �� .  �� $ PART_EditableTextBox�� � y�$ Visible=��� $ ContentSite�� � y�$ Hidden=�% �� "
 ��.���  � �� �� " ��.R�� $
& grid��.+��� $ border��$ 8��
���   �$��2q����� $' 	#FF3F3F3F��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver . . ��� $ border�� � �� �	#FF4F4F4FP�  � {� .  . ��� $
 grid�� �@J�Opacity$
 0.25Q�.��� 
���   �( � RowDefinitions( �� .+��  �� �� $��5* �.+��� -   ) ��Name$) content��$��Network��$��10,0,0,0q�$��35(�
�������$��1��$	��Top=�� -   $& network��$��1��
* � Tag$* network��$��0,56.553,10,10q�.+�� $
��20,0q�$	��Top=�.+��� +   allowSharing#��Z+ $
��Left=�$��	10,10,0,0q�$	��Top=�
�������$��15(��� ,   myName#��Z, $
��Left=�$��	10,45,0,0q�$	��Top=�
�������$��15(��� -   $ name_setting��$��Right=�$��30��$��	0,45,10,0q�- �� TextWrapping$
- Wrap=�$	��Top=�$��18(����	#FF303030
�������$��Right=�$	��490��   Pass.WPF.ToggleButton  -   .  Name$. sharing��$��30��$��	0,10,10,0q�$	��Top=�$��56��$��Right=��� /   PingTimeout#��Z/ $
��Left=�$��	10,80,0,0q�$	��Top=�
�������$��15(��� -   $) timeMs��$��30000ms��$��
526,80,0,0q�$	��Top=�
�������$��15(��� -   0 ��Name$0 PingTimeout��$��	0,88,86,0q�$	��Top=�$��Right=�$	��302��1 � Maximum$1 10000Q�2 � SmallChange$	2 100Q�3 �� TickFrequency$	3 100Q�4 � Minimum$
4 2000Q�5 � Value$
5 3000Q��� 6   pingTimeExplain#��Z6 $
��Left=�$��
20,110,0,0q�$	��Top=�
��������� #��Z/ $
��Left=�$��	10,80,0,0q�$	��Top=�
�������$��15(�� $��20,157,20,0q�$	��Top=�.+��� 7   AutoScanOnVisible#��Z7 $
��Left=�$��	10,10,0,0q�$	��Top=�
�������$��15(��� 8   AutoScanOnLaunch#��Z8 $
��Left=�$��	10,45,0,0q�$	��Top=�
�������$��15(�  -   $. autoScanOnBoot��$��30��$��	0,10,10,0q�$	��Top=�$��56��$��Right=�  -	   $. AutoScanOnLaunch��$��30��$��	0,45,10,0q�$	��Top=�$��56��$��Right=�� $��20,237,20,0q�$	��Top=�$	��107��.+��� 9   StealthMode#��Z9 $
��Left=�$��	10,10,0,0q�$	��Top=�
�������$��15(�  -
   $. StealthMode��$��30��$��	0,10,10,0q�$	��Top=�$��56��$��Right=��� :   StealthModeExplaination#��Z: $
��Left=�$��20,40,0,-15q�$	��Top=�
�������� -   $& general��$��-686,56.553,158,0q�$* general��.+�� $��
20,10,20,0q�$	��Top=�.+��� ;   AskBeforeShare#��Z; $
��Left=�$��10,0,0,0q�$	��Top=�
�������$��15(�  -   $. askBeforeShare��$��Right=�$��30��$��0,0,10,0q�$	��Top=�$��56���� <   DefaultSavingPathSetter#��Z< $��	10,35,0,0q�$	��Top=�
�������$��15(�$
��Left=��� -   $ defSavingPath��$��Right=�$��30��$��	0,35,10,0q�$
- Wrap=�$	��Top=�$��18(����	#FF303030
�������$��Right=�$	��411���� =   VisibleStatusBarOnLaunch#��Z= $��	10,70,0,0q�$	��Top=�
�������$��15(�$
��Left=�  -   $. statusVisible��$��Right=�$��30��$��	0,70,10,0q�$	��Top=�$��56���� >   OpenLogPageAlways#��Z> $��
10,105,0,0q�$	��Top=�
�������$��15(�$
��Left=�  -   $. openLogPage��$��Right=�$��30��$��
0,105,10,0q�$	��Top=�$��56���� ?   AutoStartOnComputerBoot#��Z? $��
10,140,0,0q�$	��Top=�
�������$��15(�$
��Left=�  -   $. autoStartOnBoot��$��Right=�$��30��$��
0,140,10,0q�$	��Top=�$��56���� $��Language��$��
10,175,0,0q�$	��Top=�
�������$��15(�$
��Left=��� -   @ ��Name$
@ lang��$��Right=�$��
0,175,10,0q�$	��150��$��30��$	��Top=�A �� SelectedIndex$A 0��$��15(�.@��� $��English��$��15(��� $��Korean��$��15(�� $��20,220,20,0q�$	��Top=�.+��� -   B ��Name$B resetSettings��C   ResetAllSettings#��ZC $��
10,10,10,0q�$	��Top=�$��30��#��[ $��15(�
���������Z� ��Z� �� -   $B restartPass��D   RestartPass#��ZD $��
10,45,10,0q�$	��Top=�$��30��#��[ $��15(�
�������$y�Hidden=���Z� ��Z� � -   $& about��$��694,56.553,-694,0q�$��1��$
* info��.+�� $��
20,10,20,0q�$	��Top=�.+��� E   name#��ZE $
��Left=�$	��Top=�
�������$��15(��� F   	IpAddress#��ZF $
��Left=�$��0,34.95,0,0q�$	��Top=�
�������$��15(��� G   
MacAddress#��ZG $
��Left=�$��
0,69.9,0,0q�$	��Top=�
�������$��15(��� H   PassVersion#��ZH $
��Left=�$��0,104.85,0,0q�$	��Top=�
�������$��15(��� I   PassProtocolVersion#��ZI $
��Left=�$��0,139.8,0,0q�$	��Top=�
�������$��15(��� J   DefaultSavingPath#��ZJ $
��Left=�$��0,174.75,0,0q�$	��Top=�
�������$��15(��� -   $) downloadPath��$��C:\Users\foo\Downloads��$��Right=�$��
0,175,10,0q�$	��Top=�
�������$��15(��� -   $) protocolVers��$��1.1.0��$��Right=�$��
0,140,10,0q�$	��Top=�
�������$��15(��� -   $) programVers��$��1.1.0��$��Right=�$��
0,105,10,0q�$	��Top=�
�������$��15(��� -   $) macAddr��$��1.0.0��$��Right=�$��	0,70,10,0q�$	��Top=�
�������$��15(��� -   $) ipAddr��$��1.0.0��$��Right=�$��	0,35,10,0q�$	��Top=�
�������$��15(��� -   $
) name��$	��foo��$��Right=�$��0,0,10,0q�$	��Top=�
�������$��15(��� ���	#FFF4F4F5$��1��$	��Top=�$��0,30,0,0q��� ���	#FFF4F4F5$��1��$	��Top=�$��0,65,0,0q��� ���	#FFF4F4F5$��1��$	��Top=�$��	0,135,0,0q��� ���	#FFF4F4F5$��1��$	��Top=�$��	0,100,0,0q��� ���	#FFF4F4F5$��1��$	��Top=�$��	0,170,0,0q��� 
�������$��0,0,2,0q�._�� .+��� $��0,38.94,0,0q�.+��� -   $B network_btn��K   network#��ZK $��31��$��15(�
�������
�������{�.  �� -   $B general_btn��L   general#��ZL $��31��$��15(�
�������
��������� -   $B securiry_btn��$��Security��$��31��$��15(�
�������
��������� -   $B 	about_btn��M   info#��ZM $��31��$��15(�
�������
��������� #��Z  
���   �
�������$	��Top=�$
��Left=�$��18(�$
��Bold"�� -   $& security��$��-1351,57,823,0q�$* general��.+�� $��
20,10,20,0q�$	��Top=�.+��� N   aes_iv_value#��ZN $��10,0,0,0q�$	��Top=�
�������$��15(�$
��Left=��� -    $ aes_iv��$��Right=�$��30��$
- Wrap=�$	��Top=�$��18(����	#FF303030
�������$��Right=�$	��370���� $����Warning: All incorrect settings may cause error or security problems.
All settings will be syncronized to receiver's configuration.��$��
20,0,20,10q�
�������$��15(�$��50��$��Bottom=�