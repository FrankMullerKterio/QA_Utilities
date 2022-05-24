@echo off
echo Preparing to shut down VM
vboxmanage controlvm "Kronos-v1.0.4" poweroff soft
echo Waiting for VM to shutdown
echo timeout /t 20 /nobreak
echo VM successfully shutdown
VBoxManage unregistervm --delete "Kronos-v1.0.4"
echo VM Successfully deleted!
echo Have a good day
timeout /t 10