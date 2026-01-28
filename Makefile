.PHONY: install uninstall status env

env:
	curl -LsSf https://astral.sh/uv/install.sh | sh
	uv sync

install: env
	uv run ansible-playbook -i inventory.yml k3s-install.yml -K

uninstall:
	/usr/local/bin/k3s-uninstall.sh

status:
	kubectl get nodes
