startreg:
  status.reg

keydel:
  key.timeout:
    - reject: 5
    - require:
      - status: statreg

foo:
  reg.list:
    - add: tag
    - match: 'salt/beacon/minion1/status/*'
    - stamp: True

myreg:
  file.save
