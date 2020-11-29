How to use this ?
-----------------

1) Make sure you have at least ansible 2.7 or higher

brew install ansible@2.8 ( Mac OS )

2) install the powerdns module in this project:

ansible-galaxy install powerdns.pdns

3) edit hosts and run ping all hosts

<edit hosts file>

ansible -m ping all

4) Run the playbook

ansible-playbook pdns_mycluster.yml
