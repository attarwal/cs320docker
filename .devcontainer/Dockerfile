FROM ocaml/opam:debian-11-ocaml-4.13

ENV DEBIAN_FRONTEND=noninteractive

USER root

RUN apt-get update && \
    apt-get -y install --no-install-recommends m4 make && \
    apt-get autoremove -y && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/*

USER opam

RUN opam init --bare --disable-sandboxing -a -y && \
    eval $(opam env) && \
    opam update && \
    opam install -y seq merlin ocp-indent ocamlbuild

ENV PATH=/home/opam/.opam/4.13/bin:$PATH
