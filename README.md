How should I run the system?

1) User should download one and the only file script.sh fileand allow its execution via

    wget https://raw.githubusercontent.com/Asterka/PXE-automated
    -installation/master/setup

    chmod a+wxr setup

2) Execute the file with a working network interface as a parameter. The network interface should be attached to the computer that is going to work as a server. The network should also have another computer, which we will install our system, to be a part of it. The example for enp0s25 is:

    ./setup enp0s25
