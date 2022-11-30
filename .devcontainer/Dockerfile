FROM mcr.microsoft.com/devcontainers/base:jammy

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
  && apt-get -y install --no-install-recommends \
    gettext-base=0.21-4ubuntu4 \
  && rm -rf /var/lib/apt/lists/*
