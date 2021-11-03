FROM debian:buster-slim
COPY ./asound.conf /etc/asound.conf
RUN apt-get update
RUN apt-get install -y git gcc g++ make apt-utils build-essential autoconf automake libtool libasound2-dev libfftw3-dev alsa-utils pulseaudio
CMD speaker-test -c2 -twav -l1 -D pcm.default
