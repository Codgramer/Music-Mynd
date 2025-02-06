[Setup]
AppId=B9F6E402-0CAE-4045-BDE6-14BD6C39C4EA
AppVersion=1.10.4+21
AppName=Harmony Music
AppPublisher=codgramer
AppPublisherURL=https://github.com/codgramer/Music-Mynd
AppSupportURL=https://github.com/codgramer/Music-Mynd
AppUpdatesURL=https://github.com/codgramer/Music-Mynd
DefaultDirName={autopf}\musicmynd
DisableProgramGroupPage=yes
OutputDir=.
OutputBaseFilename=harmonymusicv1.10.4
Compression=lzma
SolidCompression=yes
SetupIconFile=..\..\windows\runner\resources\app_icon.ico
WizardStyle=modern
PrivilegesRequired=lowest
LicenseFile=..\..\LICENSE
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\..\build\windows\x64\runner\Release\musicmynd.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\build\windows\x64\runner\Release\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\Music Mynd"; Filename: "{app}\musicmynd.exe"
Name: "{autodesktop}\Music Mynd"; Filename: "{app}\musicmynd.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\musicmynd.exe"; Description: "{cm:LaunchProgram,{#StringChange('Music Mynd', '&', '&&')}}"; Flags: nowait postinstall skipifsilent
