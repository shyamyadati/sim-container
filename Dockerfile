# Dockerfile for Development simulation container

FROM verilator/verilator:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update

# install prequisites
RUN apt install -y make gtkwave

# keep the container running
ENTRYPOINT ["tail", "-f", "/dev/null"]