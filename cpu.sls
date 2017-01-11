meminfo:
  cmd.run:
    - name: Get-Ciminstance Win32_OperatingSystem | select *cpu*
    - shell: powershell

