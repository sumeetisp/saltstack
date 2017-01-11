meminfo:
  module.run:
    - name: cmd.powershell
    - cmd: Get-Ciminstance Win32_OperatingSystem | select *memory*

Patch_List:
  module.run:
    - name: cmd.powershell
    - cmd: Get-WmiObject -Class Win32_QuickFixEngineering -ComputerName .| Select-Object -Property InstalledOn,Description,HotFixID,InstalledBy


Uptime:
  module.run:
    - name: status.uptime
    - kwargs: human_readable=True


Disk Utilization:
  module.run:
    - name: disk.usage

Softwares Installed:
  module.run:
    - name: pkg.list_pkgs
