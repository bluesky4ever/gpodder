; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{ABE123A1-41D1-4917-8E1E-C7E37991B673}
AppName=gPodder
AppVersion=3.0.4
AppPublisher=Thomas Perl
AppPublisherURL=http://gpodder.org/
AppSupportURL=http://gpodder.org/
AppUpdatesURL=http://gpodder.org/
DefaultDirName={pf}\gPodder
DefaultGroupName=gPodder
LicenseFile=C:\Users\thp\gpodder\COPYING
InfoBeforeFile=C:\Users\thp\gpodder\README
OutputDir=C:\Users\thp\gpodder\tools\win32-setup
OutputBaseFilename=gpodder-3.0.4-setup
Compression=lzma
SolidCompression=yes
WizardSmallImageFile=C:\Users\thp\gpodder\tools\win32-setup\wizard-small-image.bmp
WizardImageFile=C:\Users\thp\gpodder\tools\win32-setup\wizard-image.bmp

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "C:\Users\thp\gpodder\gpodder.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\thp\gpodder\gpo.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\thp\gpodder\COPYING"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\thp\gpodder\README"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\thp\gpodder\bin\*"; DestDir: "{app}\bin"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\thp\gpodder\share\*"; DestDir: "{app}\share"; Excludes: "*.h,*\qml\*"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\thp\gpodder\src\*"; DestDir: "{app}\src"; Excludes: "*.pyc,*.py~,*\qmlui\*"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\gPodder"; Filename: "{app}\gpodder.exe"
Name: "{group}\gPodder (set download folder)"; Filename: "{app}\gpodder.exe"; Parameters: "--select-folder"
Name: "{group}\gPodder (CLI)"; Filename: "{app}\gpo.exe"
Name: "{group}\{cm:ProgramOnTheWeb,gPodder}"; Filename: "http://gpodder.org/"
Name: "{group}\{cm:UninstallProgram,gPodder}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\gPodder"; Filename: "{app}\gpodder.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\gPodder"; Filename: "{app}\gpodder.exe"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\gpodder.exe"; Description: "{cm:LaunchProgram,gPodder}"; Flags: nowait postinstall skipifsilent

