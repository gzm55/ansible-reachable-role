[![Build Status](https://travis-ci.org/gzm55/ansible-reachable-role.svg?branch=master)](https://travis-ci.org/gzm55/ansible-reachable-role)

reachable
=========

Role for testing reachability of remote tcp ports of ansible connections for each host.

For `ssh`/`paramiko`/`smart` connection, use `ansible_port` or 22 port,
for `winrm` connection, use `ansible_port` or [5985/5986](https://az1ss.prod.mediav.com:8443/manager?project=etl-reports&flow=360realtime),
for `funcd` connection, use [51234](http://advanced-sysadmin-stuff.blogspot.co.id/2011/03/func-fedora-unified-network-controller.html),
for other local or local container connection, just skip checking.


Requirements
------------

python modules:
* ansible>=2.0
* jinja2>=2.6

Role Variables
--------------

No.

Dependencies
------------

* `gzm55.require_implicity_localhost`
* `gzm55.require_disabe_become`
* `gzm55.local_id_plugin`

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      gather_facts: False
      roles:
         - gzm55.reachable

License
-------

BSD
