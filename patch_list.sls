#Gives a list of patched installed on Windows system
Patch_List:
  module.run:
    - name: cmd.powershell
    - cmd: Get-WmiObject -Class Win32_QuickFixEngineering -ComputerName .| Select-Object -Property InstalledOn,Description,HotFixID,InstalledBy
