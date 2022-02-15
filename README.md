Ansible Role: Software
======================

[![Build Status](
https://img.shields.io/travis/painless-software/ansible-role-software/main.svg
)](https://travis-ci.org/painless-software/ansible-role-software)

> Painless software provisioning for your developer machine.

Ansible role for installing and configuring software on desktop computers,
such as developer notebooks in your office.

Inspired by the magnificent [puppet-software](
https://github.com/edestecd/puppet-software) Puppet module.

Requirements
------------

Supported operating systems and GNU/Linux distributions:

- Ubuntu 21.10 Impish
- Ubuntu 21.04 Hirsute
- Ubuntu 20.04 LTS Focal
- Ubuntu 18.04 LTS Bionic
- Kali Linux (Debian)

Others may work but have not been verified by test installations.

Role Variables
--------------

Secrets that should be overridden by anyone installing the affected software
(see `vars/secrets.yml`).

Dependencies
------------

Debian distributions without snap preconfigured (e.g. Kali) need to install
`snapd` for software that is provided as snaps.

```console
sudo apt-get install snapd
```

Example Playbook
----------------

```yaml
- hosts: localhost
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

```console
ansible localhost -m include_role -a role=painless.software
```

The more obvious way is to write a simple playbook (see above), specify only
the software you want to install, include your custom settings and/or
personal secrets, and run your playbook as usual:

```console
ansible-playbook playbook.yml -K
```

Packages that must be downloaded manually cannot be upgraded automatically
without sacrificing speed. To force upgrading use `state=latest`, e.g.

```console
# HINT: for a list of available tags use --list-tags
ansible-playbook playbook.yml -K -t citrix,geogebra,zoom -e state=latest
```

To uninstall a software (when supported) use `state=absent`, e.g.

```console
ansible-playbook playbook.yml -K -t vmware -e state=absent
```

Prerequisites
-------------

Obviously, you need [Ansible](
http://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
to install this role and run your playbook, e.g.

```console
sudo apt-get install ansible
```
```console
ansible-galaxy install painless.software
```

If some software fails to install, complaining `pip` is not installed, either
include the `python` tag in your Ansible run or run:

```console
sudo apt-get install python3-pip
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
