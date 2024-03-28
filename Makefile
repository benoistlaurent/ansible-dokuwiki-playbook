
.PHONY: vagrant-init ansible-init

server_setup: vm_setup install_dokuwiki

vm_setup:
	vagrant up

install_dokuwiki:
	ansible-playbook -b -J server_setup.yml

purge:
	vagrant destroy -f
	rm -rf .vagrant
