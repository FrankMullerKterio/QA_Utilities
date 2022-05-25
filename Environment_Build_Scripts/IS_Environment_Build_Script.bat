cd c:\Work
git clone https://github.com/John-Judd/innax-service-web-ui.git
cd innax-service-web-ui
git checkout dev_1.0.0-IS-62
call vsMSBuildCmd.bat
cd C:\Work\innax-service-web-ui
del package-lock.json
del .\node_modules\ -y
npm install
npm start
