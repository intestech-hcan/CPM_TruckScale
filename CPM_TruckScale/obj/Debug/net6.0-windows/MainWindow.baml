   M S B A M L   `   `   `  ����I  ECPM_TruckScale, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:CPM_TruckScaleCPM_TruckScale  5   	       CPM_TruckScale.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:CPM_TruckScale     5   	     � WindowStyle$
  None=�5       � WindowStartupLocation$ CenterScreen=�6-    � Title$ Kantar��5   	   $	��750��6   $
��1000��6%   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $��9* �6   �� 5      $	��41* �6   .+�5   
   � $��0��6   ���	#FFE0F1FF � RowDefinitions 5      �� 5      $��80 �6    �� 5      $��2 �6    �� 5      $��20 �6    �� 5      $��60 �6    �� 5      $��60 �6    �� 5      .+�5      �� $��0��6   $��Kantar��6!   $
��Left=�62   $��Center=�6M   $��35(�6h   $��50��6v   $	��150��6�   $��10,0,0,0q�6�      ContentLabelStyle#��[  6�   �� 5      
�������$��1��6'   66   �� 5      -   5         ��Name$ btnNewTruck��5      $��3��6*   
������ $��0q�6P   ��5      �� 5       �� Orientation$ 
Horizontal=�6"   $
��Auto��6;   .+�5      �� $��Images/IconMenu.png��6    $��20��6=   $��20��6H   $
��Left=�6T   $��	-25,0,0,0q�6o   $��Center=�6�   �� 5      -   5         ��Name$ txtSave��5   �   $��
Yeni Araç��6$     TextMenuStyle#��[ 65   $
��Left=�6i   $��Center=�6�   6�   5      5       5!      ]� 5"      $��1��6   $��0,-3,0,0q�6(   .+�5#      ��  �� CornerRadius$ 8��6   
�������$��1q�6?   $	��Top=�6S   ._�5$      �  5%      �� 5&      $��40 �6,   �� 5'      .+�5)      � ���	#E5FFFFFF.+�5*      �� -   5        $ btnClose��5*   !   
������ $��0q�6L   $	��Top=�6`   $��Right=�6x   $��0,5,5,0q�6�   ��5+      �� 5,   "   $��Images/IconClose.png��6)   $
��None=�6G   $��24��6V   $��24��6b   5.      �� 5/      -   5        $ btnMaximize��5/   !   $��0,5,30,0q�66   
������ $��0q�6b   $��Right=�6v   $	��Top=�6�   ��50      �� 51   "   $��Images/IconMaximize.png��6)   $
��None=�6J   53      �� 54      -   5        $ btnMinimize��54   !   $��0,5,60,0q�66   
������ $��0q�6b   $��Right=�6v   $	��Top=�6�   ��55      �� 56   "   $��Images/IconMinimize.png��6)   $
��None=�6J   58      59      � 5:      $��1��6   ���	#E5FFFFFF.+�5;      �� -   5        	 ��Name$	 contentMain��5;   -   5<      5=      5?      5@      5A      5C      5D      