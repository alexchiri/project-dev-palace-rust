FROM basic:1

USER root

RUN apt-get update && apt-get -y install gcc

USER alex

ENV RUST_VERSION="1.56.1"
RUN curl https://sh.rustup.rs -sSf | sh -s -- --default-toolchain $RUST_VERSION -y