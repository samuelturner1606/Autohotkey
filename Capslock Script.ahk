Menu, Tray, Icon,C:\Program Files (x86)\Capslock Script\CapsNoPress.ico
~CapsLock::
KeyWait, CapsLock ; Release CapsLock to continue script
Menu, Tray, Icon,C:\Program Files (x86)\Capslock Script\CapsSinglePress.ico
Input, SingleKey, L1, {CapsLock} ; Waits for any key press after CapsLock
if InStr(ErrorLevel, "EndKey:CapsLock") ; Detects CapsLock double-press
{
    SetCapsLockState AlwaysOn
    KeyWait, CapsLock 
    Menu, Tray, Icon,C:\Program Files (x86)\Capslock Script\CapsDoublePress.ico
    KeyWait, CapsLock, D ; Waits for CaspLock triple-press 
}
else if SingleKey is Alpha ; Alphabetical key
{
    SendInput %SingleKey%
}
SetCapsLockState, Off 
Menu, Tray, Icon,C:\Program Files (x86)\Capslock Script\CapsNoPress.ico