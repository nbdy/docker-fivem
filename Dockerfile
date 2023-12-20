FROM debian:12-slim

RUN mkdir /fivem
WORKDIR /fivem

RUN apt-get update ; \
    apt-get upgrade -y ; \
    apt-get install -y wget xz-utils

RUN wget https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/6683-9729577be50de537692c3a19e86365a5e0f99a54/fx.tar.xz ; \
    tar xf fx.tar.xz ; \
    rm fx.tar.xz

ENTRYPOINT ["/bin/bash", "/fivem/run.sh"]
