FROM debian:bookworm

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get dist-upgrade -y && \
    apt-get install -y wget git npm fontforge python3-fontforge ttfautohint unzip

COPY src /home/src
COPY build /home/build
COPY globals /home/globals

WORKDIR /home

CMD ["./build"]
