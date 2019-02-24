Ansible Role: Software
======================

[![Build Status](
https://img.shields.io/travis/painless-software/ansible-role-software/master.svg
)](https://travis-ci.org/painless-software/ansible-role-software)

> Painless software provisioning for your developer machine.

Ansible role for installing and configuring software on desktop computers,
such as developer notebooks in your office.

Inspired by the magnificent [puppet-software](
https://github.com/edestecd/puppet-software) Puppet module.

Requirements
------------

Supported operating systems and GNU/Linux distributions:

- Ubuntu 18.04 LTS Bionic
- Ubuntu 18.10 Cosmic

Others may work but have not been verified by test installations.

Role Variables
--------------

Secrets that should be overridden by anyone installing the affected software
(see `vars/secrets.yml`).

Dependencies
------------

None.

Example Playbook
----------------

```yaml
- hosts: developers
  roles:
    - painless.software
```

Usage
-----

Ideally, you use this role with automated provisioning (e.g. using an ENC like
[The Foreman](https://www.theforeman.org/)), which sets up your target OS,
installs Ansible, and then launches a playbook similar to the example above.

Alternatively, you can run this Ansible role from the terminal in a manual
fashion, e.g.

```bash
# install all software on your local machine (Ansible 2.7+)
$ ansible localhost -m include_role -a role=painless.software
```

The more obvious way is to write a simple playbook (see above), specify only
the software you want to install, include your custom settings and/or
personal secrets, and run your playbook as usual:

```bash
$ ansible-playbook playbook.yml -K
```

Packages that must be downloaded manually cannot be upgraded automatically
without sacrificing speed. To force upgrading use `force_upgrade=yes`, e.g.

```bash
# HINT: for a list of available tags use --list-tags
$ ansible-playbook playbook.yml -K -e force_upgrade=yes -t rocketchat,franz,rambox
```

Prerequisites
-------------

Obviously, you need [Ansible](
http://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
to run this playbook. Using Python 3 is recommended on modern systems, e.g.

```bash
$ sudo apt-get install python3-pip
$ pip3 install --user ansible
# ... and if your shell can't find the ansible-playbook executable:
$ export PATH="$HOME/.local/bin:$PATH"
$ ansible-galaxy install painless-software.software
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
- [Running Ad Hoc Commands](
  https://ansible-tips-and-tricks.readthedocs.io/en/latest/ansible/commands/)

License
-------

GPL 3.0

Author Information
------------------

Provided by [Painless Software](https://painless.software/).
