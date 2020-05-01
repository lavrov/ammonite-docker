FROM openjdk:14

ARG scala_version
ARG ammonite_version
ARG ammonite_url=https://github.com/lihaoyi/Ammonite/releases/download/$ammonite_version/$scala_version-$ammonite_version

RUN curl -L "$ammonite_url" | (echo '#!/usr/bin/env sh' && cat) > /usr/local/bin/amm \
 && chmod +x "/usr/local/bin/amm"

RUN amm -c ''

CMD amm
