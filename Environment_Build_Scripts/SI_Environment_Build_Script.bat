cd c:\Work
git clone https://github.com/Kterio/services-integration.git
cd services-integration
git checkout dev_1.0.0-IS-61
call vsMSBuildCmd.bat
cd C:\Work\services-integration\
msbuild Kterio.DbLib.sln -t:restore -p:RestorePackagesConfig=true
msbuild Kterio.DbLib.sln

