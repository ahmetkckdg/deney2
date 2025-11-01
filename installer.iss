[Setup]
AppName=Deney Uygulamasi
AppVersion=1.0.0
AppPublisher=Senin Adin
DefaultDirName={userappdata}\DeneyUygulamasi
DefaultGroupName=Deney Uygulamasi
OutputBaseFilename=DeneyUygulamasi-Setup
OutputDir=output
Compression=lzma
SolidCompression=yes
PrivilegesRequired=lowest
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64
; SetupIconFile=icon.ico   ; (varsa aç)

[Files]
; PyInstaller onedir çıktısını komple kopyala:
Source: "dist\DeneyUygulamasi\*"; DestDir: "{app}"; Flags: recursesubdirs createallsubdirs

[Icons]
Name: "{group}\Deney Uygulamasi"; Filename: "{app}\DeneyUygulamasi.exe"
Name: "{autodesktop}\Deney Uygulamasi"; Filename: "{app}\DeneyUygulamasi.exe"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "Masaüstü kısayolu oluştur"; GroupDescription: "Ekstra seçenekler:"

[Run]
Filename: "{app}\DeneyUygulamasi.exe"; Description: "Kurulumdan sonra çalıştır"; Flags: nowait postinstall skipifsilent