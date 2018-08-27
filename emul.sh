#!/bin/bash

NAME=$1
PROXY=$2

if [ -z "$1" ]; then
  echo "Provide emulator name"
fi

if [ -n "$2" ]; then
  