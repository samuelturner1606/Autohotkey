~CapsLock::
if (A_ThisHotkey = A_PriorHotkey)
{
    MsgBox testing
}
else 
{
    Input, Key, L1, {CapsLock}
    if Key is Alpha
    {
        SendInput %Key%
    }
    SetCapsLockState, Off
}
return 