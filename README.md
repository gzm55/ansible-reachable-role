[![Build Status](https://travis-ci.org/gzm55/ansible-reachable-role.svg?branch=master)](https://travis-ci.org/gzm55/ansible-reachable-role)

reachable
=========

Role for testing reachability of ssh ports for each host.

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
