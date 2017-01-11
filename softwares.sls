Softwares Installed:
  module.run:
    - name: cmd.powershell
    - cmd: Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* |  Select-Object  DisplayName, DisplayVersion, InstallDate
