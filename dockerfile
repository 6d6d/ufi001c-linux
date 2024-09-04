FROM ubuntu:latest

RUN buildDeps='git lsb-release gcc-aarch64-linux-gnu bison flex libssl-dev libelf-dev debhelper bc rsync kmod cpio libncurses-dev pkg-config' \
    && apt-get update \
    && apt-get install -y $buildDeps \
    && mkdir -p /root/msm8916

RUN cd /root/msm8916