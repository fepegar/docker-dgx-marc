FROM nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04
LABEL maintainer="thomas.varsavsky.15@ucl.ac.uk"

RUN apt-get update

RUN apt-get install -y \
      gcc-4.8 \
      g++-4.8 \
      curl \
      vim \
      wget \
      make \
      htop \
      tree \
      tmux \
      zsh \
      libssl-dev \
      modemmanager \
      libpam-systemd:amd64 \
      policykit-1 \
      network-manager \
      build-essential \
      linux-headers-generic \
      module-init-tools \
      libbz2-dev \
      sqlite \
      libsqlite3-dev \
      libturbojpeg \
      zlib1g-dev \
      libpng-dev \
      libxml2-dev \
      libjpeg-dev \
      libx11-dev \
      checkinstall \
      libxext-dev \
      git

RUN apt-get install -y sudo
RUN apt-get install -y libsm6 libxrender1 libfontconfig1
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN chsh -s $(which zsh)

WORKDIR /root

EXPOSE 83
ARG USER_NAME
ARG USER_ID
RUN adduser --uid ${USER_ID} --gecos '' ${USER_NAME}
RUN adduser ${USER_NAME} sudo
RUN passwd -de ${USER_NAME}

CMD ["/usr/bin/zsh"]
