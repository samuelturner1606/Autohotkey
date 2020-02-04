# CapsLock AutoHotKey
## About
 Small personal project undertaken to make CapsLock useful! When teaching myself to touch type, I had trouble adjusting to using the left and right shift keys to capitalise letters and preferred CapsLock. However, I kept forgetting to turn off CapsLock so I decided to learn scripting with AutoHotKeys to essentially implement the iOS Shift key on my Wndows laptop.

## Functions
### Single-press CapsLock
* Only the next letter will be capitalised
* Pressing CapsLock and then a non-alphabetical key such as Numbers, Space, Enter etc. causes the key to be ignored and CapsLock turned off
* Keys such as F1-12, Shift, Ctrl, Alt, Win etc. have no effect on the script and perform normally

### Double-press CapsLock 
* All subsequent letters will be capitalised until CapsLock is pressed for a third time

## Run
### Manual
There are two options to manually run the script:
1. Save CAPS.exe to your device and double-click the file
2. Have AutoHotKey installed, save CAPS.ahk to your device, right click the file and click 'Run Script'
A green H icon should appear on your taskbar whilst the script is running. You can stop the script by right clicking on the icon and selecting suspend, pause or exit

### Automatic
To run the script automatically on Windows after the system starts up:
1. Create a shortcut for either [CAPS](CAPS.ahk) or [CAPS](CAPS.exe) (AutoHotKey must be installed if CAPS.ahk chosen)
2. Press Win + R, type shell:startup and click ok to open the startup folder in File Explorer
3. Place the shortcut into the startup folder
