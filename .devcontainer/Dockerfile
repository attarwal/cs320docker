FROM ocaml/opam:debian-11-ocaml-4.13

ENV DEBIAN_FRONTEND=noninteractive

USER root

# Install m4 and clean up
RUN apt-get update && \
    apt-get -y install --no-install-recommends m4 && \
    apt-get autoremove -y && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/*

# Switch to the pre-configured 'opam' user for safer opam usage
USER opam

# Initialize and install opam packages non-interactively
RUN opam init --bare --disable-sandboxing -a -y && \
    eval $(opam env) && \
    opam update && \
    opam install -y merlin ocp-indent ocamlbuild

# Optional: set shell environment
ENV PATH=/home/opam/.opam/4.13/bin:$PATH
