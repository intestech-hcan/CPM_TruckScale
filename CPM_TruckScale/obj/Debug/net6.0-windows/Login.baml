   M S B A M L   `   `   `  ����I  ECPM_TruckScale, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:CPM_TruckScaleCPM_TruckScale  5   	       CPM_TruckScale.Login   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:CPM_TruckScale     5   	     � WindowStyle$
  None=�5       � WindowStartupLocation$ CenterScreen=�6-    � Title$ 
Giriş Yap��5   	   $	��400��6   $	��610��6(   .��5	      �� -   5         �� CornerRadius$ 9��5	      
�������$��1q�64   ._�5   
   � ��5      �� 5       j� Stretch$ UniformToFill=�6    �� ImageSource$ Images/Background.png��65    � ColumnDefinitions 5      �� 5      $	��270 �6#   �� 5      $��2 �6#   �� 5      .+�5      � ���	#D8EAF4F7$��0��6*    � RowDefinitions 5      �� 5      �� 5      .+�5      �� $��0��6   $��KANTAR��6%   $
��Left=�66   $��Bottom=�6Q   $��60(�6l   $��90��6{   $	��250��6�      ContentLabelStyle#��[  6�   �� 5      $��1��6    �� TextWrapping$
 Wrap=�6'   $"��Uygulamasına Hoş Geldiniz ��6;   $
��Left=�6^   $	��Top=�6y   $��10,0,0,0q�6�   $��60��6�   $	��190��6�     ContentTextStyle#��[ 6�   $��25(�6�   5      �� 5      $��1��6   
�������$
��Auto��67   $
��Auto��6D   � 5      ���	#D8DADFE4$��2��6*    5      �� 5       $	��20* �6    �� 5!      $	��45* �6    �� 5"      $	��45* �6    �� 5#      $	��25* �6    �� 5$      $	��45* �6    �� 5%      $	��58* �6    �� 5&      $	��26* �6    .+�5(      �� -   5        	 ��Name$	 btnClose��5(      
������ $��0q�6D   $��Right=�6X   $��0q�6t   ��5)      �� 5*      $��Images/IconClose.png��6!   $
��None=�6?   5,      �� 5-      -   5        $	 btnMinimize��5-      
������ $��0q�6G   $��Right=�6[   $��0,0,30,0q�6w   ��5.      �� 5/      $��Images/IconMinimize.png��6!   $
��None=�6B   51      �� 52      $��1��6   $
��Auto��6&   $��Kullanıcı Adı��64   $��30,0,0,0q�6L     
LabelStyle#��[ 6^   �� 53      -   5        
 ��Name$
 txtUserName��53      $��2��6I   $��25,0,0,0q�6V     TextLoginStyle#��[ 6h   ��6/   �� *
UserName+6h   �� 55      $��3��6   $��Şifre��6'   $��30,0,0,0q�68   #��[ 6J   G� 56      -   5         G�Name$ txtPassword��56      $��4��64   $��25,0,0,0q�6A     PasswordBoxStyle#��[ 6S   �� 58      -   5        $	 btnLogin��58      $��
Giriş Yap��6+   $��Right=�6?   $��5��6[   $��Bottom=�6h   $��44��6�   $	��106��6�   ���#20A1DA
������  �� 	IsDefault$
 True��6�   $��0q�6�   $��0,0,35,0q�6  $��Ubuntu)�6  $
��Bold"�6.  $��16(�6@  
�������  RoundedButtonStyle#��[ 6a  59      5:      5=      5>      5?      