#!/bin/sh

docker kill node01 && docker rm node01
rm -rf vendor/ansible-examples vendor/spring-petclinic 2>&1 > /dev/null
./vendor/walter/bin/walter
