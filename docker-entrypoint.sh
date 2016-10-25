#!/bin/sh

# Docker entrypoint script as guided in
# https://docs.docker.com/engine/userguide/eng-image/dockerfile_best-practices/#/entrypoint

set -e

if [ "$1" = 'build' ]; then
	cd /rameplayer-webui
	# make sure all needed npm and bower packages are installed
	npm install
	bower install --allow-root
	# start building using gulp
	gulp build
	# move files to build directory defined in Dockerfile
	cp -R build/* $BUILD_DIR
else
	# just exec anything user gave as argument
	exec "$@"
fi
