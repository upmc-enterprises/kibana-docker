# Makefile for the Docker image upmcenterprises/kibana
# MAINTAINER: Steve Sloka <slokas@upmc.edu>

.PHONY: all container push

TAG ?= 5.3.1
PREFIX ?= upmcenterprises

all: container

container: 
	docker build -t $(PREFIX)/kibana:$(TAG) .

push:
	docker push $(PREFIX)/kibana:$(TAG)