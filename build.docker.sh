#!/bin/sh
docker build -t $(basename "$PWD") .
