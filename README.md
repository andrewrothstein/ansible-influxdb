andrewrothstein.influxdb
=========
![Build Status](https://github.com/andrewrothstein/ansible-influxdb/actions/workflows/build.yml/badge.svg)

Installs [influxdb](https://www.influxdata.com/)

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.influxdb
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
