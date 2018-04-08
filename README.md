ansible-software
================

Painless software provisioning for your developer machine.

Inspired by the magnificent [puppet-software](
https://github.com/edestecd/puppet-software) Puppet module.

Usage
-----

```bash
$ ansible-playbook playbook.yml --ask-become-pass
```

Prerequisites
-------------

Obviously, you need [Ansible](
http://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
to run this playbook. Using Python 3 is recommended on modern systems, e.g.

```bash
$ sudo apt-get install python3-pip
$ sudo pip3 install ansible
```
