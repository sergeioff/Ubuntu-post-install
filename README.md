# Ubuntu-post-install
This tips and scripts are used after installation of ubuntu and they simplify process of setting work environment.

## 0. Install git and clone this repository
```Shell
sudo apt-get install git-core
git clone https://github.com/sergeioff/Ubuntu-post-install
```

## 1. Activate *Canonical partners* repositories
Go to *Software & Updates - Other Software* and check the *Canonical Partners* 
![Enabling canonical partners repositories](images/canonicalPartners.png)

## 2. Drivers installation
Go to *Software & Updates - Additional Drivers* and install needed drivers.
**Reboot or logout after drivers installation**
### Check that video driver is installed correctly
Run *glxgears* from *mesa-utils* and check the performance:
```Shell
sudo apt-get install mesa-utils
glxgears
```
glxgears shows next results:

  Videocard | Performance
  ----------|------------
  Nvidia GT 540M | 4777.690 FPS
  Internal Intel HD | 60.992 FPS

## 3. Software installation
Run *install-soft.sh* script from this repository and type your password
```Shell
sudo ./install-soft.sh
```
This script will **delete** *unity-webapps-common*(Software to integrate webapps to Unity shell). **Adds** *webupd8team/java* and *numix* repositories and **installs** following software:
* Htop
* Mc
* Lynx
* Gparted
* Ubuntu restricted extras
* Smplayer
* p7zip-full
* Exfat-utils
* Fbreader
* Gnote 
* Gimp
* Kamerka
* Kazam
* Skype
* Synaptic
* Multiload indicator
* Unity tweak tool
* Speedcrunch
* Artha
* CompizConfig settings manager
* Compiz plugins
* Oracle java8
* Numix gtk theme
* Numix icons

After installation of software this script opens firefox with 3 tabs from which you can download and install latest versions of *sublime text*, *Dropbox* and *IntelliJ IDEA*.

###Fix IDEA icon in numix icons style
If you want to fix IDEA icon replace *pathToInstalledIDEA/bin/idea.png* with *images/idea.png* from this repository

Old | New
----|----
![Old icon](images/ideaOld.png) | ![New icon](images/idea.png)

## 4. Customize your ubuntu settings
Customize your ubuntu by:
* Changing system settings 
* Disabling web search in dash
* Adding workspaces

## 5. *[optional] Modify grub*
If you have other operating systems installed and want to hide grub menu while your ubuntu is loading, execute *modify-grub.sh*. 
```Shell
sudo ./modify-grub.sh
```
This script modify your grub so that it's menu not shown when the computer starts. To show it you must hold the **Shift** key when the computer starts.

## 6. *[optional] Disable webcam*
If you want to disable your webcam when the computer starts, execute *disable-webcam.sh*.
```Shell
sudo ./disable-webcam.sh
```
When you need a webcam simply type in terminal:
```Shell
sudo modprobe uvcvideo
```
If you want disable webcam in this session without reboot use this command:
```Shell
sudo modprobe -r uvcvideo
```

## 7. Change look&feel
Add some eye-candy to your system:
* Apply themes by unity-tweak-tool
* Aplly following *Compiz* settings by *CompizConfig Setting Manager*:
  * Enable *Wobbly Windows*
  * Set these animations:

      Action | Animation
      -------|----------
      Open Animation | Zoom
	  Close Animation | Curved Fold
      Minimize Animation | Horizontal Folds
      Unminimize Animation | Magic Lamp

  * Change your wallpaper. You can find some on http://4walled.cc/ , http://alpha.wallhaven.cc/ , http://simpledesktops.com/ , http://rewalls.com/
  * Arrange the unity dock icons

  ![Dock icons](images/dock.png)


**Now your system is ready to work. Have a nice day:smiley:**