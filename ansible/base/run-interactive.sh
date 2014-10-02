#!/bin/bash

sudo docker run --rm -t -i -v /cgroup:/sys/fs/cgroup:ro -v /tmp/$(mktemp -d):/run base /usr/lib/systemd/systemd
