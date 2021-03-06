   M S B A M L   `   `   `  ����D  @PianoRoll, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:PianoRoll	PianoRoll  5   	       PianoRoll.Settings   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:PianoRoll     5   	   -   5          � Title$  Settings��5   	    � ShowInTaskbar .   � 
ResizeMode$ NoResize=�6^    � SizeToContent$ WidthAndHeight=�6t   ���	#FF323232 � WindowStartupLocation$ Manual=�6�    � WindowStyle$ 
ToolWindow=�6�    � Topmost . .��5	      �� $��5q�6   .+�5
   
   �� -   5        $��SettingsShowLines��5
      $��Show lines on background��6,      DarkCheckBox#���   6o    � ToolTip$. (Divide the semitones by horizontal lines��6�   �� 5   
   -   5        $��SettingsShowNotes��5      $��Show note names��6,   #���   6F   $; 5Show note names on the left side of the visualization��6�   �� 5   
   #��["�6   $��16q�6S   �� 5   
   -   5        $��SettingsNormalize��5      $��Normalize tempo��6,   #���   6F   $: 4Detect the meter and normalize tempo according to it��6�   �� 5   
   -   5        $��SettingsShowBeats��5      $��Play detected beats��6,   #���   6J   $? 9Detect the meter and play the beats for better evaluation��6�   �� 5   
   -   5        $��SettingsProlongNotes��5      $��Prolong sustained notes��6/   #���   6Q   $x rSome notes are externally extended by a sustain control event, do you want to extend them explicitly to show their��6�   �� 5   
   -   5        $��SettingsShowKey��5      $��Detect key signature��6*   #���   6I   $; 5Detects the key and shows it in the upper left corner��6�   �� 5   
   -   5        $��SettingsShowChords��5      $��Detect chords��6-   #���   6E   $@ :Detects chords (and saves them when saving to a .mus file)��6�   �� 5   
   -	   5        $��SettingsPlayChords��5      $��Play chords��6-   #���   6C   $J DNot only detect the chords, but also play them for better evaluation��6�   �� 5   
   -
   5        $��SettingsDiscretizeBends��5      $��Discretize pitch bends��62   #���   6S   $H BApproximate the \'continuous\' pitch bends by semitone transitions��6�   �� 5   
   -   5        $��SettingsTransposeToC��5      $��Transpose to Cmaj / Amin��6/   #���   6R   $o iUse the detected key to transopose into an unified key, suggested setting before traning a neural network��6�   �� 5   
   -   5        $��SettingsRandomize��5      $(��"Randomize .mus file during loading��6,   #���   6Y   $[ USlightly randomizes the onset times and volumes of notes to get more \'real\' results��6�   �� 5   
   #��["�6   $��16q�6S   � 5   
    � ColumnDefinitions 5      �� 5      $��* �6#   �� 5      $��* �6#   .+�5      �� $��0��6   $��Pixels per second: ��6$     	DarkLabel#���  6B   $��Center=�6f   �� 5      -   5        	 ��Name$	 
PpsTextbox��5   &   $��1��6   $��23��6:   
 �� TextWrapping$

 Wrap=�6F   $��TextBox��6Z   $��60��6i     DarkTextBox#���  6�   $��Center=�6�   $��Right=�6�   $; 5Or in another words -- the speed of the visualization��6�   5      � 5   
    5       �� 5!      $��* �6#   �� 5"      $��* �6#   .+�5$      �� $��0��6   $ ��MIDI device latency (ms): ��6$   #���  6I   $��Center=�6m   �� 5%      -   5        $��LatencyTextbox��5%   &   $��1��6   $��23��6<   $

 Wrap=�6H   $��TextBox��6\   $��60��6k   #���  6�   $��Center=�6�   $��Right=�6�   $� �Your MIDI device probably has some latency (~250-1000 ms). This has to be set correctly in order to have the piano roll in sync.��6  5&      � 5'   
    5(      �� 5)      $��* �6#   �� 5*      $��* �6#   .+�5,      �� $��0��6   $)��#Frame length for .mus format (ms): ��6$   #���  6R   $��Center=�6v   �� 5-      -   5        $��FrameLengthTextbox��5-   &   $��1��6   $��23��6@   $

 Wrap=�6L   $��TextBox��6`   $��60��6o   #���  6z   $��Center=�6�   $L FHow many millisecond last 1/12 of a beat in .mus file (default: 50 ms)��6�   5.      � 5/   
    50      �� 51      $��* �6#   �� 52      $��* �6#   .+�54      �� $��0��6   $(��"# of predictors for key detector: ��6$   #���  6Q   $��Center=�6u   �� 55      -   5        $��TreesTextbox��55   &   $��1��6   $��23��6:   $

 Wrap=�6F   $��TextBox��6Z   $��60��6i   #���  6t   $��Center=�6�   $��Right=�6�   $� �Number of learners used in the random forest model for key and chord detector. The more tree, the more accurate results, but it takes longer time (default: 30)��6�   56      57      58      