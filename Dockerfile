FROM --platform=amd64 gcc:9

LABEL maintener="Maximilian Zinke <me@mxzinke.dev>"

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get -y install git p7zip-full wget build-essential make && \
    rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/Kitware/CMake/releases/download/v3.18.5/cmake-3.18.5-Linux-x86_64.sh && \
    chmod +x cmake-3.18.5-Linux-x86_64.sh && \
    ./cmake-3.18.5-Linux-x86_64.sh --skip-license --prefix=/usr/local

RUN rm cmake-3.18.5-Linux-x86_64.sh