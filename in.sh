#!/usr/bin/env bash

# Allow X11 connections from within the container
xhost local:root

# Get a shell in the container
sudo docker run \
	-e DISPLAY=$DISPLAY \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v `pwd`/projects:/projects \
	-w /projects/example \
	-it threadmentor \
	/bin/bash -i
