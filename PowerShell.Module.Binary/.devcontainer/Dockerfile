FROM mcr.microsoft.com/dotnet/sdk:6.0

ARG DEBIAN_FRONTEND=noninteractive

RUN set -x \
 && apt-get -qq update \
 && apt-get -qq -o Dpkg::Use-Pty=0 upgrade \
 && apt-get -qq -o Dpkg::Use-Pty=0 install --no-install-recommends \
	bash-completion \
	vim \
 && rm -rf /var/lib/apt/lists/*
