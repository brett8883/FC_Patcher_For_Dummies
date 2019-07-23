@echo off
mode con: cols=107 lines=40
Echo *****************************************************************************************************
Echo *****************************************************************************************************
ECHO FC_Patcher for Dummies
echo By Brett8883
Echo *****************************************************************************************************
Echo *****************************************************************************************************
Echo. 
Echo Thanks for trying FC_Patcher for Dummies!
echo.
IF EXIST "run_me.py" (
  goto setup
) ELSE (
  wget https://github.com/o-gs/DJI_FC_Patcher/raw/master/run_me.py
)
:setup
cls
Echo *****************************************************************************************************
Echo *****************************************************************************************************
ECHO FC_Patcher for Dummies Set Up Widget
echo By Brett8883
Echo *****************************************************************************************************
Echo *****************************************************************************************************
ECHO.
ECHO Hi, I am the FC_Patcher for Dummies Set Up Widget. If this is the first time you have used 
ECHO FC_Patcher for Dummies I can help you get things set up.
ECHO.
echo First off FC_Patcher for Dummies requires WSL (Windows Subsystem for Linux) running on a Windows 10 PC
echo. 
ECHO If you don't know what WSL is or you know it is not already enabled then I can help getting it set up 
echo.
echo.
echo.
Echo Is WSL set up on your PC?
echo.
echo  1)Yes, WSL is now installed but I may need to install other dependencies
ECHO.
Echo  2)I don't know what the heck WSL is or I need help getting it set up 
ECHO.
echo  3)YES! Skip all this set up crap... This isn't my first time using FC_Patcher for Dummies 
echo.
choice /C 123 /D 1 /T 99 /M "Is WSL set up on your PC?"
If Errorlevel 3 goto ok
If Errorlevel 2 goto setupWSL
If Errorlevel 1 goto CheckSystem

echo  If you already know the system requirements are installed on WSL 
echo (python2, pythone3 and PyCrypto)
echo or wish to install them yourself you can skip this part
echo.
echo Would you like me to check that everything is set up?
echo.
echo  1)Yes, help me check everything and install if needed
Echo  2)No,  skip this part
echo.
choice /C 12 /D 1 /T 99 /M "Please choose an option"
If Errorlevel 2 goto ok
If Errorlevel 1 goto CheckSystem

:setupWSL
cls
Echo *****************************************************************************************************
Echo *****************************************************************************************************
ECHO FC_Patcher for Dummies Set Up Widget
echo By Brett8883
Echo *****************************************************************************************************
Echo *****************************************************************************************************
Echo OH NO! It doesn't sound like you have WSL set up on your computer! 
echo.
ECHO I can help you get WSL set up but you'll need admin privilege on your machine and be running Windows 10.  
echo.
echo Would you like me to help you get WSL set up?
echo.
echo  1)Yes, help me get WSL set up
Echo  2)No, I'll do it myself
echo  3)I don't have admin privilege on this machine
echo.
choice /C 123 /D 1 /T 99 /M "Please choose an option"
if Errorlevel 3 goto sorry
If Errorlevel 2 goto myself
If Errorlevel 1 goto helpwsl

:helpwsl
cls
Echo *****************************************************************************************************
Echo *****************************************************************************************************
ECHO FC_Patcher for Dummies Set Up Widget
echo By Brett8883
Echo *****************************************************************************************************
Echo *****************************************************************************************************
ECHo.
echo Ok I can help you get WSL set up on your windows 10 machine since you have admin privilege
echo.
echo I will open PowerShell as an admin. You will then need to give your machine the command to 
Echo enable WSL, I will provide the command which you can copy and paste.
echo.
Echo Once enabled, PowerShell will instruct you to restart your machine.
echo. 
Echo Restart it. 
Echo. 
echo You will then need to go to the Microsoft store from your computer and download and install Ubuntu 
Echo which is the most common Linux depo. There are others but if you are following these instructions, 
Echo trust me, Ubuntu is just fine for you.
echo.
Echo Once Ubuntu is installed, restart FC_Patcher for Dummies and we will set up the dependencies on WSL
echo.
echo Please continue when ready 
pause
cls
Echo *****************************************************************************************************
Echo *****************************************************************************************************
ECHO FC_Patcher for Dummies Set Up Widget
echo By Brett8883
Echo *****************************************************************************************************
Echo *****************************************************************************************************
Echo.
Echo Please allow PowerShell to open and give it admin rights if it asks for it. 
echo. See you on after you get Ubuntu installed!
Echo. 
Timeout 6
Powershell.exe powershell -Command "Start-Process PowerShell -Verb RunAs"
cls
Echo *****************************************************************************************************
Echo *****************************************************************************************************
ECHO FC_Patcher for Dummies Set Up Widget
echo By Brett8883
Echo *****************************************************************************************************
Echo *****************************************************************************************************
ECHO.
Echo Now copy this next line with [ctrl]+c and then paste it into PowerShell and press [enter]
Echo.
echo.
echo Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
echo.
echo. 
echo When Powershell says to restart your computer do that and when you computer starts up 
echo download and install Ubuntu from the Mircrosoft store
pause 
cls
echo See you once you have Ubuntu installed and then we will install all the rest of the dependencies
pause 
exit 

:sorry
cls
Echo *****************************************************************************************************
Echo *****************************************************************************************************
ECHO FC_Patcher for Dummies Set Up Widget
echo By Brett8883
Echo *****************************************************************************************************
Echo *****************************************************************************************************
Echo.
echo So sorry! WSL requires admin privilege and FC_Patcher for Dummies requires WSL
echo. 
ECHO It's me, not you...But... this isn't gonna work... 
echo. 
ECHo get a computer you have admin privilege on and then we can talk. 
ECHO. 
ECHO BYE!
pause 
exit

:myself
cls
Echo *****************************************************************************************************
Echo *****************************************************************************************************
ECHO FC_Patcher for Dummies Set Up Widget
echo By Brett8883
Echo *****************************************************************************************************
Echo *****************************************************************************************************
echo. 
echo It's cool... I get it...I won't take it personally :)
echo.
echo You can enable Windows Subsystem for Linux by opening a PowerShell window with admin privilege
echo and then type:
Echo. 
echo Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
echo. 
echo It might be best to copy and paste that... 
echo. 
echo Windows will then prompt you to restart your machine. Go ahead and do that. 
echo. 
echo You will then need to go to the Microsoft Store 
echo and download and install Ubuntu
echo https://www.microsoft.com/en-us/p/ubuntu/9nblggh4msv6?activetab=pivot:overviewtab
echo. 
Echo Once you have Ubuntu installed and running please restart FC_Patcher for Dummies.
Echo. 
Echo This is the end of the program untill you install and set up WSL.
echo I will remain open in case you need me for copying the about command into PowerShell
Echo if this is no longer needed press any key to close me 
pause 
exit

:CheckSystem
cls
Echo *****************************************************************************************************
Echo *****************************************************************************************************
ECHO FC_Patcher for Dummies Set Up Widget
echo By Brett8883
Echo *****************************************************************************************************
Echo *****************************************************************************************************
Echo Ok I will now check your system to ensure all prerequisites are installed on your system 
echo and install them if missing. This requires admin privilege and you will be asked to enter 
echo admin password several times including right now. 
echo.
echo Your password will not be shown on your screen for security purposes 
echo but it is being typed in even though it may not seem like it. 
echo.
echo Press [enter] after you have typed in your password
echo.
echo This time I need your password to check your system and update anything that is already installed 
echo but needs updating
wsl.exe sudo apt update && upgrade
echo.
ECHo Done! Please continue when ready
cls
Echo *****************************************************************************************************
Echo *****************************************************************************************************
ECHO FC_Patcher for Dummies Set Up Widget
echo By Brett8883
Echo *****************************************************************************************************
Echo *****************************************************************************************************
echo.
echo I need your password again for the second time. This install is for python-dev.
echo This one might take a couple minutes to install if it is needed 
wsl.exe sudo apt-get install python-dev
echo Done! Please continue when ready
pause
cls
Echo *****************************************************************************************************
Echo *****************************************************************************************************
ECHO FC_Patcher for Dummies Set Up Widget
echo By Brett8883
Echo *****************************************************************************************************
Echo *****************************************************************************************************
echo.
Echo I need your password again to check for and install pip if needed
wsl.exe sudo apt-get install python-pip
echo.
ECHo Done! Please continue when ready
pause
cls
Echo *****************************************************************************************************
Echo *****************************************************************************************************
ECHO FC_Patcher for Dummies Set Up Widget
echo By Brett8883
Echo *****************************************************************************************************
Echo *****************************************************************************************************
echo.
echo I need your password one more time to check for and install PyCrypto if needed
wsl.exe pip install pycrypto
ECHo Done! Please continue when ready
pause
cls
Echo *****************************************************************************************************
Echo *****************************************************************************************************
ECHO FC_Patcher for Dummies Set Up Widget
echo By Brett8883
Echo *****************************************************************************************************
Echo *****************************************************************************************************
echo.
echo Your system has been set up. You do not need to do this again and can skip this step in the future
timeout 5
goto main

:ok
cls
echo Ok but if you don't have everything installed properly this process will not work. 
timeout 5
goto main

:main
cls
Echo *****************************************************************************************************
Echo *****************************************************************************************************
ECHO FC_Patcher for Dummies
echo By Brett8883
Echo *****************************************************************************************************
Echo *****************************************************************************************************
ECHO  Please choose your Aircraft
ECHO.
ECHO -------------------------------------------------------------------------------------------
ECHO	1) Mavic Pro 1 / Mavic Platinum / Mavic Artic White
ECHO	2) Spark
ECHO	3) Phantom 4 Pro
ECHO	4) Phantom 4 Standard
ECHO	5) Phantom 4 Advanced
ECHO	6) Phantom 4 Pro V2
ECHO	7) Inspire 2
ECHO.
choice /C 1234567 /D 1 /T 99 /M "Please select connected device"
If Errorlevel 7 goto I2
If Errorlevel 6 goto P4Pv2
If Errorlevel 5 goto p4a
If Errorlevel 4 goto p4s
If Errorlevel 3 goto p4p
If Errorlevel 2 goto SPK
If Errorlevel 1 goto MP

:MP 
@Echo off
cls
set AC=Mavic
set M=wm220
set fw=V01.04.0300
goto makepatch

:SPK
@echo off
cls
set AC=Spark
set fw=V1.00.0900 
set M=wm100
goto makepatch

:p4p
@echo off
cls
set AC=P4P
set fc=03.02.44.31
set fw=V1.05.0600
set M=wm331
goto makepatch

:p4a
@echo off
cls
set AC=P4A
set fw=V1.00.0128
set M=wm332
goto makepatch

:p4s
@echo off
cls
set AC=P4
set fw=V2.00.0700
set M=wm330
goto makepatch

:P4Pv2
cls 
set AC=P4PV2
set fw=V01.00.1500
set M=wm335
goto makepatch

:I2
cls
set AC=I2
set fw=V1.02.0200
set M=wm620
goto makepatch

:makepatch
cls
Echo *****************************************************************************************************
Echo *****************************************************************************************************
ECHO FC_Patcher for Dummies Set Up Widget
echo By Brett8883
Echo *****************************************************************************************************
Echo *****************************************************************************************************
Echo.
Echo You made it!!!
echo.
echo we are just about ready to start FC_Patcher! Just one last thing. 
ECHO. 
ECho Please ensure that the fully stock version of the 
echo %fw%_%AC%_dji_system.bin for %AC% is in your FC_Patcher_For_Dummies folder.
echo.
echo should be in the same folder as the Start_here.cmd 
echo. 
echo If you still need to get a copy of %fw%_%AC%_dji_system.bin then you can download it using 
echo DankDroneDownloader https://github.com/cs2000/DankDroneDownloader
echo.
echo Continue once %fw%_%AC%_dji_system.bin in in the correct folder.
Eco.
pause
wsl.exe python3 run_me.py %m% "$PWD"/%fw%_%AC%_dji_system.bin