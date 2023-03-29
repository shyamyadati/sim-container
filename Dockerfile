# Dockerfile for Development simulation container

FROM verilator/verilator:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install -y build-essential
RUN apt install -y git perl python3 make autoconf g++ flex bison ccache
RUN apt install -y libgoogle-perftools-dev numactl perl-doc
RUN apt install -y libfl2  
# Ubuntu only (ignore if gives error)
RUN apt install -y libfl-dev  
# Ubuntu only (ignore if gives error)

# install gtkwave
RUN apt install -y verilator gtkwave

# keep the container running

ENTRYPOINT ["tail", "-f", "/dev/null"]