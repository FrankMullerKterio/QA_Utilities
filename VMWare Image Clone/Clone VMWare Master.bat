@echo off
Title "Kronos VMWARE Image Clone Utility"
echo ********************************************************************************
echo * KTERIO                                                                       *
echo * VMWARE Image Cloner                                                          *
echo * Created by: Francois Muller                                                  * 
echo * Version 1.0  Updated: 28/06/2022                                             *   
echo * Documentation:                                                               *
echo * Allows for quick cloning of the WMWARE Master Image. Allows Clone name as    *
echo * arg                                                                          *
echo ********************************************************************************                                                                  

SET /P clone_name=Please provide a Image name. (Default will create Master-Clone)
IF "%clone_name%"=="" (GOTO Default_clone) else (GOTO Arg_clone)


:Default_clone
echo Cloning Master VM to Master-Clone Please wait...
xcopy "C:\VMs\Master\*.*" "C:\VMs\Master-Clone\"
echo Copy has been completed succssfull!
echo Prepraing files and sub folders!
cd c:\VMs\Master-Clone
echo rename "Windows 10 Master.nvram" "Windows 10 Master-Clone.nvram"
cd c:\VMs\Master-Clone
echo rename "Windows 10 Master.vmdk" "Windows 10 Master-Clone.vmdk"
cd c:\VMs\Master-Clone
echo rename "Windows 10 Master.vmsd" "Windows 10 Master-Clone.vmsd"
cd c:\VMs\Master-Clone
echo rename "Windows 10 Master.vmx" "Windows 10 Master-Clone.vmx"
cd c:\VMs\Master-Clone
echo rename "Windows 10 Master.vmxf" "Windows 10 Master-Clone.vmxf"
cd C:\Program Files (x86)\VMware\VMware Player
echo echo File rename completed!
call vmplayer.exe



:Arg_clone
echo Cloning Master VM to %clone_name% Please wait...
xcopy "C:\VMs\Master\*.*" "C:\VMs\%clone_name%\"
echo Copy has been completed succssfull!
echo Prepraing files and sub folders!
cd c:\VMs\%clone_name%
rename "Windows 10 Master.nvram" "Windows 10 %clone_name%.nvram"
cd c:\VMs\%clone_name%
rename "Windows 10 Master.vmdk" "Windows 10 %clone_name%.vmdk"
cd c:\VMs\%clone_name%
rename "Windows 10 Master.vmsd" "Windows 10 %clone_name%.vmsd"
cd c:\VMs\%clone_name%
rename "Windows 10 Master.vmx" "Windows 10 %clone_name%.vmx"
cd c:\VMs\%clone_name%
rename "Windows 10 Master.vmxf" "Windows 10 %clone_name%.vmxf"
cd C:\Program Files (x86)\VMware\VMware Player
echo File rename completed!
call vmplayer.exe


