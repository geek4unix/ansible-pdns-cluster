What is this for ?
------------------

This ansible playbook will build a centos 8 pdns cluster, at least 1 master (sqlite) and 2 slaves (sqlite).

If you are interested in trying out PowerDNS supermaster cluster, this should be helpful to you to test automatic zone creation via supermaster and slave.

Its important that slaves are able to recreated at will simply.

Note: its all based around centOS 8, though the ansible-pdns module is capable of supporting other OS, this playbook isnt.

This playbooks installs and configures a 1 master 2 slave sqlite cluster and sets up the PowerAdmin UI 

See PowerAdmin - https://github.com/poweradmin/poweradmin
See PowerDNS Ansible Module - https://github.com/PowerDNS/pdns-ansible


How to use this ?
-----------------

1) Make sure you have at least ansible 2.10 or higher

 pip3 install ansible  ( Mac OS )

2) install the powerdns module in your ansible setup

ansible-galaxy install powerdns.pdns

3) edit hosts and verify ssh root@host connections

<edit hosts.yml file> . Make sure you can ssh as root to your hosts with a key.

5) Do a ping run to make sure all machines are answering

ansible -m ping all

6) Run the playbook

ansible-playbook pdns_mycluster.yml
