# Caps Lock script using AutoHotKey
## About
Small personal project undertaken to make Caps Lock useful! When teaching myself to touch type, I had trouble adjusting to using the left and right Shift keys to capitalise letters and preferred using Caps Lock. However, I kept forgetting to turn off Caps Lock so I decided to learn how to script with AutoHotKeys to essentially implement the iOS Shift key on my Windows laptop.

## Features
### Off state

### Single-press state
* Only the next letter will be capitalised
* Pressing Caps Lock and then a non-alphabetical key such as Numbers, Space, Enter etc. causes the key to be ignored and Caps Lock turned off
* Keys such as F1-12, Shift, Ctrl, Alt, Win etc. are not affected by the script and perform normally

### Double-press state
* All subsequent letters will be capitalised until Caps Lock is pressed for a third time

### Optional taskbar icons
* An icon for the script will be displayed on your taskbar and will change depending on the three Caps Lock states

I created the icons in Autodesk Sketchbook and converted them to the ico format using [ICOConvert](https://icoconvert.com/). The design of the icons are obviously based on the iOS Shift key.

## Install
### Method 1 - Includes taskbar icons
1. Download the [zip file](https://github.com/samuelturner1606/CapslockScript/raw/master/Capslock%20Script.zip)
2. Right click the zip file
3. Click 'Extract All...' 
4. Extract to wherever

#### Note:
If the icons are hidden from your taskbar, go to your taskbar settings, scroll down to notification area and click on 'select which...' and make sure Capslock Script is turned on.

For the script to work, the folder must be named 'Capslock Script' and must contain the following files: [Capslock Script.exe](Capslock%20Script.exe), [No-press icon](CapsNoPress.ico), [Single-press icon](CapsSinglePress.ico) and [Double-press icon](CapsDoublePress.ico).

### Method 2 - No taskbar icons
Simply download [CAPS.exe](CAPS.exe).

##### Or if you want to edit the script in the future.

Download [CAPS.ahk](CAPS.ahk) as well as install [AutoHotKey](https://www.autohotkey.com).

### Method 3 - [Setup installer](https://github.com/samuelturner1606/CapslockScript/raw/master/Capslock_Script_Setup.exe) (not recommended)
1. Click on the above link to download the setup file
2. Dismiss security warnings if you get them like I do (yes my own file displays security warnings to me when I download it from my own GitHub!)
3. Click yes to allow the installer to make changes to your device

A folder named 'Capslock Script' should have been created at C:\Program Files (x86) and should contain: an older version of [Capslock Script.ahk](Capslock%20Script.ahk), an older version of [Capslock Script.exe](Capslock%20Script.exe), [No-press icon](CapsNoPress.ico), [Single-press icon](CapsSinglePress.ico) and [Double-press icon](CapsDoublePress.ico).

#### Pro
- Script will be placed with other apps on your start menu and can be uninstalled in the same manner as other apps
#### Con
- the files must not be moved (or renamed) after installation otherwise the script won't work

#### Reason for installer and challenges faced:

I made the installer because I couldn't find a good way of obtaining the path of taskbar icon files using the AutoHotKey scripting language. So I decided to restrict the files to C:\Program Files (x86)\Capslock Script\. 

I originally tried creating the installer using the defaulft Windows Wizard iExpress but it wouldn't let me create a new folder in Program Files and I didn't know how to grant administrator privileges with Batch files to resolve this. So I used the free installer creator [Inno Setup](https://www.jrsoftware.org/isinfo.php) to make the [setup file](Capslock_Script_Setup.exe). 

I later found the AutoHotKey command A_ScriptDir to locate the path of the script file which meant I could easily locate the taskbar icons. This practically made the installer method redundant apart from its one pro. I've decided to keep it however because I spent too many hours working on it and it at least demonstrates that I have basic experience of making installers.

## Run
### Manually 
1. Locate the files you installed and right click on the script file
2. Select 'Open' if it is an .exe file or select 'Run Script' if .ahk file

### Automatically after Windows login
1. Locate the files you installed and right click on the script file
2. Select 'Create shortcut' and save to your Desktop
3. Press Win + R, type shell:startup and click ok to open your startup folder in File Explorer
4. Place the shortcut into your startup folder

## Uninstall
Stop the script from running (right click the taskbar icon or if there isn't one go to task manager...) and delete the installed files.
