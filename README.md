# Working with Ansible Roles
In this lab, I ran a docker container and added its IP Address to the inventory file.
I then created a configuration file including some config such as the remote user, the private key name and path, and the inventory file name and path.
Then I created my __web__ role folder structure
* HTML, CSS, and JavaScript files
* Variables file
* Jinja2 Template file
* Tasks file
* Handlers file

I have also attached the public and private keys that can be used to connect to the remote hosts in the inventory file

The private key is encrypted using __Ansible Vault__

And finally, the playbook.yml file is used to call the web role which executes all the tasks and handlers in the project