This script requires VMWare Workstation 16 Player or Pro
Move the Master VM to C:\VMs to ensure seamless integration.

This script copies the master image to a new folder within c:\Vms
If you pass a null arg then the application will default the new image name as "Master-Clone"
alternatively, testers are able to pass a ticket number or a description for your cloned image.
Once completed the script will execute the VMWare Workstation player

Unfortunately, the application does not support CLI capabilities as with Oracle Virtual Box. 
(Script exists for VirtualBox Environment setup)

Once VMWare player has launched -> Select "Open a Virtual Machine" -> Navigate to c:\VMs\{arg} or "Master-Clone"
You will also notice that it is referring to "Master 10 Master" You can ignore this as it is pulling info from a vmx file. 
Select the new vmx and when prompted select "I copied it"
You can also right-click on the newly added VM (located at the top of the list) and rename it for ease. (see improvement section)


NOTES:
Can be added to shell:startup to execute on VM startup - best to add to a VM master


IMPROVEMENTS TODO:
(Script can be updated to replace this value in the file before launching VMWare Player)