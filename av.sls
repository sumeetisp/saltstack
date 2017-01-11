create_tmp_dir:
  file.directory:
    - name: /tmp/Mcafree

sudoers_backup:
  cmd.run:
    - name: cp /etc/sudoers /etc/sudoers_bck

sudoers_requiretty:
  cmd.run:
    - name: sed -e '/requiretty/s/^/#/g' -i /etc/sudoers

sudoers_visiblepw:
  cmd.run:
    - name: sed -e '/visiblepw/s/^/#/g' -i /etc/sudoers


selinux_mode:
  cmd.run:
    - name:  sed -i 's/enforcing/disabled/g' /etc/selinux/config
    - onlyif: grep -q  "SELINUX=enforcing" /etc/selinux/config
{% if grains['osrelease'] >= "7" %}
download_packages:
  file.managed:
    - name: /tmp/Mcafree/agentPackages.zip
    - source: salt://agentPackages.zip

unzip_packages:
  cmd.run:
    - cwd: /tmp/Mcafree
    - name: unzip agentPackages.zip
    - unless: 'rpm -qa | grep -E "MFEcma|MFErt"'
    - require:
      - download_packages

install_av:
  cmd.run:
    - cwd: /tmp/Mcafree
    - name: sh install.sh -i
    - onlyif: 'uname -r | grep 2.6.38'
    - require:
      - unzip_packages
{% endif %}
{% if grains['osrelease'] >= "6" and grains['osrelease'] < "7" %}
download_packages:
  file.managed:
    - name: /tmp/Mcafree/agentPackages.zip
    - source: salt://agentPackages.zip

unzip_packages:
  cmd.run:
    - cwd: /tmp/Mcafree
    - name: unzip agentPackages.zip
    - require:
      - download_packages

install_av:
  cmd.run:
    - cwd: /tmp/Mcafree
    - name: sh install.sh -i
    - unless: 'rpm -qa | grep -E "MFEcma|MFErt"'
    - require:
      - unzip_packages
{% endif %}


clean_up:
  file.absent:
    - name: /tmp/Mcafree
