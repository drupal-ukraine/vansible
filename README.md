vansible
========

Vagrant box with ansible executed within guest machine

As You may be know - ansible can't be executed from Windows host machines.
This is responsibility of ansible core developers, but if You want to get
ansible playbooks working everywhere you are able to run vagrant - do use this repo

How it works

- ansible installed within guest
- inventory and playbook.yml copied inside
- ansible-playbook run inside

Feel free to post Pull Requests.

The main requirement - Your code should be executed within guest machine.

PS. Currently ubuntu only supported.
