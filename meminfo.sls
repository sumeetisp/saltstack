meminfo:
  module.run:
    - name: cmd.powershell
    - cmd: Get-Ciminstance Win32_OperatingSystem | select *memory*  



