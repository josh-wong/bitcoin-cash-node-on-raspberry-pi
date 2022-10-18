serve:
	mkdocs serve --config-file mkdocs.insiders.yml
build:
	mkdocs build --config-file mkdocs.insiders.yml
deploy:
	mkdocs gh-deploy --force --config-file mkdocs.insiders.yml
