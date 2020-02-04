#NoTrayIcon
~CapsLock::
KeyWait, CapsLock ; Release CapsLock to continue script
Input, SingleKey, L1, {CapsLock} ; Waits for any key press after CapsLock
if InStr(ErrorLevel, "EndKey:CapsLock") ; Detects CapsLock double-press
{
    SetCapsLockState AlwaysOn
    KeyWait, CapsLock 
    KeyWait, CapsLock, D ; Waits for CaspLock triple-press 
}
else if SingleKey is Alpha ; Alphabetical key
{
    SendInput %SingleKey%
}
SetCapsLockState, Off 
return
