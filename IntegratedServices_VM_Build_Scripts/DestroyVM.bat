@echo off
set vm_name="Service_Integration"

echo Preparing to shut down VM
vboxmanage controlvm %vm_name% poweroff soft
echo Waiting for VM to shutdown
echo VM successfully shutdown
echo Waiting for Image to become unlocked
timeout 3
VBoxManage unregistervm --delete %vm_name%
echo VM image has been successfully deleted

