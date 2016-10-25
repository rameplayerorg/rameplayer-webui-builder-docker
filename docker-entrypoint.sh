#!/bin/sh

# Docker entrypoint script as guided in
# https://docs.docker.com/engine/userguide/eng-image/dockerfile_best-practices/#/entrypoint

set -e

if [ "$1" = 'build' ]; then
	cd /rameplayer-webui
	gulp build
	# move files to build directory defined in Dockerfile
	cp -R build/* $BUILD_DIR
else
	# just exec anything user gave as argument
	exec "$@"
fi
