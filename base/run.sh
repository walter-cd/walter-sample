#!/bin/bash

sudo docker run -p 8080:8080 -d --name $1 base
