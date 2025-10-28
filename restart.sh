#!/bin/bash
sudo docker compose down $1 && \
	sleep 3 && \
	sudo docker compose up -d $1
