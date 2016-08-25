# How to install HaxeDevelop

### Windows

1. Download HaxeDevelop. You can download HaxeDevelop by clicking [here](http://haxedevelop.org/download.html). Click on the "Download" button, and the program will begin downloading to your computer.
1. Open your "Downloads" folder. After the download is completed, there will be a HaxeDevelop installer. Double click on the installer to begin the installation process.
1. The installation process you have these settings:
  
    - Preferred language - Default English
    - Standalone/portable mode - Runs as standalone using only local setting files
    - Multi instance mode - Allows multiple instances of HaxeDevelop to be executed.
    - Registry modifications - Associates integral file types and adds the required uninstall configuration
    
1. Select the destination folder and press the  _install_ button.
1. Read the information on the final window and click on the "Finish" button.
  
### OS X

1. Install brew
1. `brew install wine`
1. `brew install winetricks`
1. `winetricks dotnet35`
1. `winetricks corefonts`
1. `wine HaxeDevelop64.exe` (from the directory containing the extracted zip of HaxeDevelop - not the installer)