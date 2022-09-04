dc = docker-compose
dc_run_web = $(dc) run web

# This just sets up the project, you never need this, only in a new project.
npm-init:
	export UID=${UID}
	export GID=${GID}
	$(dc_run_web) npm init -y

bash:
	export UID=${UID}
	export GID=${GID}
	$(dc_run_web) bash

build:
	export UID=${UID}
	export GID=${GID}
	$(dc) build --no-cache

up:
	$(dc) up

ng-version:
	$(dc_run_web) ng version

ng-help:
	$(dc_run_web) ng --help

ng-new:
	$(dc_run_web) ng new $(APP_NAME)