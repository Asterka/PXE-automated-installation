FROM ubuntu:19.04

ENV ARCH amd64

RUN apt-get -q update
RUN apt-get -qy install dnsmasq wget

RUN mkdir /tftp

RUN mkdir /tftp/boot

RUN mkdir /tftp/boot/boot_arm
RUN mkdir /tftp/boot/boot_amd

COPY ./server/ /tftp/boot/boot_amd/

#COPY ./server/install/netboot_amd/ /tftp/boot/boot_amd/

RUN rm tftp/boot/boot_amd/pxelinux.cfg/default

RUN mkdir tftp/boot/pxelinux.cfg

RUN cp default tftp/boot/pxelinux.cfg/

RUN cp default tftp/boot/boot_amd/pxelinux.cfg/

RUN cp preseed.cfg /tftp/boot/boot_amd

RUN rm /etc/dnsmasq.conf

RUN cp dnsmasq2.conf /etc/dnsmasq.conf

RUN cat /tftp/boot/boot_amd/pxelinux.cfg/default

RUN cat /tftp/boot/pxelinux.cfg/default

CMD dnsmasq --no-daemon
