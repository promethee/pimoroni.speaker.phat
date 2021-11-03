#!/bin/sh
docker run -d --privileged -v /dev/snd:/dev/snd --name $(basename "$PWD") $USER/$(basename "$PWD")
