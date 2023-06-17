FROM archlinux

ADD src /usr/src/local/src
RUN --mount=type=cache,sharing=locked,target=/var/cache/pacman    \
    chmod 777 /usr/src/local/src/setup.sh         && \
    ./usr/src/local/src/setup.sh                  && \
    rm -rf /usr/src/local/src

ENV PATH="/opt/TinyTeX/bin/x86_64-linux:${PATH}"

# extra metadata
LABEL author="Ivan Jacob Agaloos Pesigan <learn.jeksterslab@gmail.com>"
LABEL description="jeksterslab/rarch container."
