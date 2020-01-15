How should I run the system?

1) User should download one and the only file script.sh fileand allow its execution via

    wget https://raw.githubusercontent.com/Asterka/PXE-automated-installation/master/setup

    chmod a+wxr setup

2) Execute the file with a working network interface as a parameter. The network interface should be attached to the computer that is going to work as a server. The network should also have another computer, which we will install our system, to be a part of it. The example for enp0s25 is:

    ./setup enp0s25


The setup file does the following:
1) Downloads the kernel files from the vendor. Unzips the files into a
current directory for two types of architectures : ARM, AMD.

2) Downloads configuration files, namely ’dnsmasq.conf ’, ’preseed.cfg’,
’Dockerfile’, and ’default’ files. This document will consider the purpose of
those a little later.

3) Patches the configuration files with the details of the system. (takes
the IPv4 address assigned to the web-interface that was provided, and passes it
to the other services)

4) Copies essential configuration files into the directories where they will be
grabbed by the docker from.

5) Creates a new docker image with the provided configurations, without
using cached files. (this turned out to be a cornerstone at some point)

6) Stops all the containers that could stop it from running correctly.
(That is, the container that could be running occupying the :53 port, mainly
the previous versions of this server)

7) Runs the image in a new container, providing the network configu-
ration of the host machine.
