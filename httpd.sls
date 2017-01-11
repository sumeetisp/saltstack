install_httpd:
  pkg.installed:
    - name: tomcat
    - service.running:
      - require:
        - pkg: tomcat
      - watch:
        - file:  {{ pillar['tomcat_conf'] }}
        - file: {{ pillar['tomcat_users'] }}

edit_java_config:
  file.append:
    - name: {{ pillar['tomcat_conf'] }}
    - text: 'JAVA_OPTS="-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx512m -XX:MaxPermSize=256m -XX:+UseConcMarkSweepGC"'

add_httpd_users:
  file.blockreplace:
    - name: {{ pillar['tomcat_users'] }}
    - marker_start: <tomcat-users>
    - marker_end: </tomcat-users>
    - content: <user username="admin" password="password" roles="manager-gui,admin-gui"/>

{% for package in ['tomcat-webapps','tomcat-admin-webapps','tomcat-docs-webapp','tomcat-javadoc'] %}
{{package}}:
  pkg.installed
{% endfor %}

tomcat:
   service.running:
    - enable: True
