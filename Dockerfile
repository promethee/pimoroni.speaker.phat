FROM debian:buster-slim
RUN apt-get update
RUN apt-get install -y git gcc g++ make apt-utils build-essential autoconf automake libtool python3 python3-dev python3-pip python3-smbus libasound2-dev libfftw3-dev alsa-utils pulseaudio espeak ffmpeg libespeak1
WORKDIR /usr/src/app
COPY ./requirements.txt .
RUN pip3 install -r requirements.txt
COPY ./asound.conf /etc/asound.conf
COPY ./main.py .
CMD speaker-test -c2 -twav -l1 -D pcm.default &&  python3 main.py
