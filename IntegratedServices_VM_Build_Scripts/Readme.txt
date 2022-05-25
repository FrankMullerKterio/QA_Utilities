The 2 scripts found will start up and tear down VMs created for testing
Both files utilise variables. This allows the scripts to be used as a template to spin up and destroy any other VMs.
It is important that you have a Master image to start with.
These images can be requested and will also be added to a shared drive for rapid deployment.


In this example: We are Cloning the Master VM as a new Image.
All VMs are then destroyd upon request after all tests, regardless of the test outcome.
In the even that you need to keep the VM's live, then ignore the Destroy.bat command.
Users can manualy turn of the VM.

This build can also be run localy. You will need
VirtualBox
Initial VM images
Build and destroy script from Git Repo