~CapsLock::
Input, Key, L1
if Key is Alpha
{
    SendInput %Key%
    SetCapsLockState, Off
}
else if Key = "CapsLock"
{
    SetCapsLockState AlwaysOn
}
else 
{
    SetCapsLockState, Off
}
return