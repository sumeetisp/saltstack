updates:
  module.run:
    - name: win_wua.list_updates
    - install: True

restart:
  module.run:
    - name: system.reboot
    - timeout: 5
    - order: last
~
