FROM golang

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
      libopenal-dev \
      libopus-dev \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

RUN \
  go get -u -v layeh.com/barnard

ENTRYPOINT [ "barnard" ]
