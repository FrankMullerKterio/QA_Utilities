@echo off
cd "C:\Users\FrancoisMuller\VirtualBox VMs"
echo Prepairing Clean master OVA image...
VBoxManage export "Windows 10 Master" --output Windows_10_Master.ova
vboxmanage import "Windows_10_Master.ova" --vsys 0 --vmname "Kronos-v1.0.4"
vboxmanage startvm "Kronos-v1.0.4"

