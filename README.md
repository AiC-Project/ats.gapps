OpenGapps Installer for AiC
===========================

This repository provides OpenGapps installer scripts for each version of AiC.

- One script (``installer.sh``) is the script to run in order to install gapps on the device
- The other one is run on the device, it is automatically used by the first one. This is a modified *update-binary* script from OpenGapps.


Install OpenGapps
-----------------

- Install adb for your operating system
- Clone the repo or get the two scripts in any other way: 

Example:
```
git clone https://github.com/AiC-Project/ats.gapps.git
```

- Download the OpenGapps package (preferably "micro") for your version (x86, 4.4 or 5.1) [here](http://opengapps.org/)
- Use adb connect to connect to your AiC device

Example:
```
adb connect 192.168.122.200
```

- run the script with the opengapps zip path as a parameter

Example:
```
./install.sh open_gapps-x86-4.4-micro-20170107.zip
```
Wait a bit after the script terminates and the device should restart. If it doesn’t, restart it manually.
OpenGapps should now be installed.


Why is this needed?
-------------------

Due to the nature of AiC, we do not have a recovery, which is the required
environment for running the OpengApps scripts. So we need to wrap around those
scripts to install OpenGapps.
