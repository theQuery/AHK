#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Gui, Font, s14 w800
Gui, Add, Text, y20 x10, Insert the text that you want to paste through SSH below. Then click Paste.
Gui, Add, Button, Default x+20 y10 w80 h40 vPaste, Paste

Gui, Font, s12 w400
Gui, Add, Edit, x10 r20 w1000 vEdit

Gui, Show,, SSH Paste
return

ButtonPaste:
    Gui, Submit
    SendInput, %Edit%
    Gui, Show
return

GuiClose:
ExitApp