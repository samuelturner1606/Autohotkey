Menu, Tray, Icon,%A_ScriptDir%\CapsNoPress.ico
~CapsLock::
KeyWait, CapsLock ; Release CapsLock to continue script
Menu, Tray, Icon,%A_ScriptDir%\CapsSinglePress.ico
Input, SingleKey, L1, {CapsLock} ; Waits for any key press after CapsLock
if InStr(ErrorLevel, "EndKey:CapsLock") ; Detects CapsLock double-press
{
    SetCapsLockState AlwaysOn
    KeyWait, CapsLock 
    Menu, Tray, Icon,%A_ScriptDir%\CapsDoublePress.ico
    KeyWait, CapsLock, D ; Waits for CaspLock triple-press 
}
else if SingleKey is Alpha ; Alphabetical key
{
    SendInput %SingleKey%
}
SetCapsLockState, Off 
Menu, Tray, Icon,%A_ScriptDir%\CapsNoPress.ico
