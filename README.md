\documentclass{article}
\begin{document}
\section{How to run the system?}

    1) User should download one and the only file script.sh file
    and allow its execution via

\begin{verbatim}

    wget https://raw.githubusercontent.com/Asterka/PXE-automated
    -installation/master/setup

    chmod a+wxr setup

\end{verbatim}
2) Execute the file with a working network interface as a parameter. The network interface should be attached to the computer that is going to work as a server. The network should also have another computer, which we will install our system, to be a part of it. The example for enp0s25 is:

\begin{verbatim}
    ./setup enp0s25
\end{verbatim}
\end{document}
