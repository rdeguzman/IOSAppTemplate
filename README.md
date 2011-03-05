# Mobile Template 

- An iOS(iphone) window application
- GHUnitIOS.framework
- fmdb

## Prerequisite
Build Dir: /Volumes/temp/iphone-builds. Personal preference to set build dir in a different directory. This makes my project folder easy to copy, zip, etc. If you wish to change this, go to XCode > Preferences > Building -or- Xcode > Project > "Edit Project Settings" > Build Locations (Setting) > Build Products Path

## Installation
1. git clone git://github.com/rdeguzman/IOSAppTemplate.git

2. mv IOSAppTemplate Sample (name of your project)

3. Rename Mobile.xcodeproj to Sample.xcodeproj

4. Launch XCode by double clicking Sample.xcodeproj
  - Dont rename Mobile_Prefix.pch
  - Dont rename Mobile-Info.plist
  - Dont rename UnitTests-Info.plist

5. Reference GHUnitIOS.framework. 
  - Download from https://github.com/downloads/gabriel/gh-unit/GHUnitIOS-0.4.28.zip
  - From Xcode. Click on UnitTests/Frameworks/GHUnitIOS.framework. Its red/missing. Delete this
  - Targets > Double Click "UnitTests" > General > + (lower left) + Add Other + Location of GHUnitIOS.framework

6. Reference fmdb https://github.com/ccgus/fmdb.git
  - Delete fmdb/ (folder) in Xcode.
  - Drag fmdb/src directory under "Groups & Files"
  - Delete Reference (not "Move To Trash") fmdb.m

7. Build "Sample" 
  - Set Active Target to "Mobile"
  - Set Active Executable to "Mobile"
  - <ctrl> b to build
  - <ctrl> y to debug
  - if successful you should see "MainView" in the navigation bar
  - change product name to "Sample":
    - Double click on "Mobile" under Targets
    - Search for "Packaging"
    - Change setting of Product Name to "Sample"

8. Build "UnitTests"
  - Set Active Target to "UnitTests"
  - Set Active Executable to "UnitTests"
  - <ctrl> b to build
  - <ctrl> y to debug
  - if successful you should see the GHUnit interface
