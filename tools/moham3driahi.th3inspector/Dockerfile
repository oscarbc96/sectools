FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y sudo git libwww-perl libjson-perl && \
    apt-get clean autoclean && \
    apt-get autoremove --yes && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/

RUN git clone https://github.com/Moham3dRiahi/Th3inspector.git

WORKDIR /Th3inspector

RUN chmod +x install.sh && ./install.sh

CMD perl Th3inspector.pl