username = $(shell whoami)
ansible = ansible-playbook -c local -l workstation -i ansible/workstation.inventory

.PHONY: /depends-on-being-user/$(username)

all: everything

unlock-sudo: /usr/local/bin/ansible /depends-on-being-user/$(username)
	@echo "Installing Arthur's preferred Linux workstation setup"
	@echo
	$(ansible) --ask-become-pass ansible/unlock-sudo.yml

lock-sudo:
	$(ansible) ansible/lock-sudo.yml
	@echo "Linux workstation setup finished -- maybe pop a new shell"

everything: unlock-sudo /usr/local/bin/ansible /depends-on-being-user/$(username)
	$(ansible) ansible/everything.yml
	$(MAKE) lock-sudo

/depends-on-being-user/root:
	$(error sudo is not the answer)

/depends-on-being-user/arthur:
