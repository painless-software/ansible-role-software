ansible-software
================

Painless software provisioning for your developer machine.

Inspired by the magnificent [puppet-software](
https://github.com/edestecd/puppet-software) Puppet module.

Usage
-----

```bash
$ ansible-playbook playbook.yml -K
```

Prerequisites
-------------

Obviously, you need [Ansible](
http://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
to run this playbook. Using Python 3 is recommended on modern systems, e.g.

```bash
$ sudo apt-get install python3-pip
$ pip3 install --user ansible
```

How Does It Work?
-----------------

Ansible picks up a description of the state you want your system to be in
in the form of _tasks_. You can control which tasks are executed and which
variables you pass in by help of the _inventory_. Write your own inventory
file and use it by specifying it at the command line (via the `-i` option)
to customize the behavior of the Ansible playbook runs.

If you only want to update specific features use _tags_ (via the `--tags`
or the `--skip-tags` option). You can use `--list-tags` to list all the
available tags.

More Reading
------------

- [Ansible User Guide](https://docs.ansible.com/ansible/latest/user_guide/index.html)
- [Ansible with multiple inventory files](
  http://allandenot.com/devops/2015/01/16/ansible-with-multiple-inventory-files.html)
