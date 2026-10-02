FROM ubuntu:latest
RUN apt-get update && apt-get install -y \
    curl \
    htop \
    iputils-ping \
    net-tools \
    vim \
    && rm -rf /var/lib/apt/lists/*
CMD ["tail", "-f", "/dev/null"]
