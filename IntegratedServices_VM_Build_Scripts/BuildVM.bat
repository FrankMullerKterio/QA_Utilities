@echo off
set master_image="Windows 10 - Service Integration Master"
set ova_image=Windows_10_Service_Integration_Master.ova
set vm_name="Service_Integration"

cd "C:\Users\FrancoisMuller\VirtualBox VMs"
echo Prepairing Clean master OVA image...
VBoxManage export %master_image% --output %ova_image%
vboxmanage import %ova_image% --vsys 0 --vmname %vm_name%
vboxmanage startvm %vm_name%

