uptime:
   module.run:
     - name: status.uptime
     - kwargs:
       human_readable: True

disk_usage:
   module.run:
     - name: status.diskusage

status:
   module.run:
     - name: test.ping

cpu_usage:
   module.run:
     - name: status.cpustats

mem_usage:
   module.run:
     - name: status.meminfo

#package_list:
#   cmd.script:
#     - name: packages.sh
#     - source: salt://tmp/packages.sh
