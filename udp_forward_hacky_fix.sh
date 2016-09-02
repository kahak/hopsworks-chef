#!/bin/bash

echo "this is a hack fix for udp port forwarding"
sleep 2m
echo "abc" | nc -u 193.10.64.11 40100
echo "abc" | nc -u 193.10.64.11 40200
echo "abc" | nc -u 193.10.64.11 40300
