   M S B A M L   `   `   `  ����I  ECPM_TruckScale, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:CPM_TruckScaleCPM_TruckScale  5   	   %    CPM_TruckScale.Intes_MessageBox   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:CPM_TruckScale     5   	   -   5          � Title$  MyMessageBox��5   	   $
��Auto��6   $	��465��6,   $	��465��6<    � WindowStartupLocation$ CenterScreen=�6H   
������� � WindowStyle$
 None=�6�    � SizeToContent$ Height=�6�    � ContextMenu 5	      �� 5
   
   -   5         ��Name$ 
DetailMenu��5
      .@�5      m� -   5         m�Name$ menu_Detail��5      $��Detay Göster��6,   ��5      �� 5       �� 
TargetType" m�6   .�5      -   5        5      5      5      .��5      �  � ColumnDefinitions 5   
   �� 5      $	��200 �6   �� 5      .+�5   
   �� $��0��6   ���	#28000000.+�5      �� -   5        	 ��Name$	 
imgMessage��5   0   $��Images/Warning.png��6   $	��150��6D   $	��150��6Q   $��
25,15,25,0q�6]   5      �� 5   
   -   5        $��1��5      $	��Top=�6<   $��Right=�6T   $��0q�6p   $��0q�6{   ��5       �� 5!      $��Images/IconClose.png��6   $
��None=�67   5#      � 5$   
   $��1��6   
������ 
 � RowDefinitions
 5%      �� 5&      �� 5'      $
��Auto �6    .+�5*      �� $��0��6   $
��Auto��6=   $
��Bold"�6J   $��Ubuntu)�6\   $��14(�6p   ���#335766$��28��6�   $	��Top=�6�   $
��Left=�6�   $��17,20q�6�   ��6"   �� *Header+6�   �� 5+      -   5         ��Name$ 
txtContent��5+      $��0��6*    �� TextWrapping$ WrapWithOverflow=�67   $
��Auto��6q   $��	17,60,0,0q�6   $��Regular"�6�   $��Ubuntu)�6�   $��0q�6�   $��12(�6�   ���#335766 �� 
IsReadOnly$
 True��6�   ��6W   �� *	Message+.��6  5,      �� 5.      -   5        $ ResponseTextBox��5.   #   $��0��6   $	��Top=�6<   $��
25,80,20,0q�6T   $��25��6h   $��2q�6t   ���	#4C406C80$	��200��6�   y�6�   �� *IsTxtVisible+� 5/      $��Bottom=�6   $��30��6.   $��1��6:   $��0,0,8,8q�6G   
������  50      �� 51      �� 52      �� 53      .+�55      �� -	   5         ��Name$ Button1��55   )   $��1��6   $��Right=�6W   $��Center=�6t   
������ $��2q�6�   ���	#4C406C80$��Ubuntu)�6�   $��Medium"�6�   $��11(�6�   $��25��6
  $��70��6  ���	#FF667880   RoundedButtonStyle#��[  6N  ��6:   �� *
Content1+6N  �� 56      -
   5        $ Button2��56   )   $��2��6   $��Right=�6W   $��Center=�6t   ���#20A1DA$��2q�6�   ���	#4C406C80$��Ubuntu)�6�   $��Medium"�6�   $��12(�6�   $��25��6  $��70��6  
�������#��[  6G  ��6:   �� *
Content2+6G  58      59      5;      5<      