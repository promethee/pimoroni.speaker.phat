#!/bin/sh
docker run -d --privileged -v /dev/snd:/dev/snd --name $(basename "$PWD") $(basename "$PWD")
