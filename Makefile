.PHONY: install uninstall status env

env:
	uv sync

install:
	uv run ansible-playbook -i inventory.yml k3s-install.yml -K

uninstall:
	/usr/local/bin/k3s-uninstall.sh

status:
	kubectl get nodes
