   M S B A M L   `   `   `  ���� F  BVideoPlayer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:VideoPlayer.ClassesVideoPlayer.Classes  &     VideoPlayer.Controls.VideoPlayer   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5classes!clr-namespace:VideoPlayer.Classes     .��� -     �Name$  
LayoutRoot��
����·�$��Stretch=�$��Stretch=�.+�]� -   ��.  .+�� -   $��PlaylistControls��$��Right=� � RowDefinitions �� �� $��30 �.+��� -   $��ListBoxPlaylist��
�������$	��174��$��0��$��
-174,0,0,0q�$��2������ *ItemsSources+���� .R���  �� Orientation$ Vertical=����� .R��� '   !VideoPlayer.Classes.ContentMargin   Margin$ 15q����� � -   $��PlayerControls��$
��Left=�$��Stretch=�$��Stretch=�$	��415�� �� �� $��50 ��� $��50 �.+�� -   $  GridVideoPanel��$��0��.+��� $ 
Horizontal=�.+�r� -    r�Name$ videoElement�� r� LoadedBehavior$ Manual=� r� UnloadedBehavior$ Manual=�$	��415�� r� Source �� *VideoSource+� -   $  ControlsPanels��$��1�� �� ��  � ColumnDefinitions �� .+�� -	   	 �Name$	 progressBar��
���  ��$��0��$��0���� -
   
 ��Name$
 
seekSlider��$��0��$��0�� �� IsMoveToPointEnabled .  �� TickPlacement$
 None=� J� SnapsToDevicePixels .   J� IsManipulationEnabled .  �� IsSnapToTickEnabled .   �� IsSelectionRangeEnabled .  ��.   �� AutoToolTipPlacement$
 None=� J� 	AllowDrop .  $	��5 3q� � Value ��  �� ElementName$ VideoElement�� �� Path$ Position� J� OpacityMask Z� � $��1��$��0�� ��  �� �� �� .+��� -   $
��Play��$��0��$��0���� -   $��Pause��$��0��$��1���� -   $
��Stop��$��0��$��2��� -   $  InformationPanels��$��2��.+��  �� ��  �� $
��138* ��� $
��139* �.+��� $��0��$��0��.��	Volume:�� -   $
 volumeSlider��$��Right=�$��0��$��0��$	 0.5Q� � Maximum$ 1Q� � SmallChange$
 0.01Q� � LargeChange$	 0.1Q�$��0,4,5,3q�$	��147���� -    ��Name$ currentTime�� �� TextAlignment$ Right=�$��2��$��0���� -   $��0��$��1��$��Show/Hide Playlist���� -   $��ButtonBrowse��$��2��$��1��$��Browse��