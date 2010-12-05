set x=xinhahere
set f=xinhahere_dev
set z=C:\Program Files\7-Zip
md build
md build\chrome
md build\defaults
copy license.txt build
copy version.txt build
copy install.rdf.build build\install.rdf
copy chrome.manifest.build build\chrome.manifest
xcopy defaults build\defaults /E

cd chrome\%x%
"%z%\7z" a -tzip "..\..\build\chrome\%x%.jar" * -x!.svn -x!_* -r -mx=0

cd ..\..\build
pause
"%z%\7z" a -tzip "..\%f%.xpi" * -x!.svn -r -mx=9

cd ..
rd build /s/q
pause