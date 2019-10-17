FROM php:7.3-cli
MAINTAINER Erik Hjortberg <docker@hjortberg.com> 

RUN set -x && DEBIAN_FRONTEND=noninteractive \
  && apt-get update && apt-get install -y --no-install-recommends lsb-release curl git

RUN git clone https://github.com/ael-code/daikin-control.git

EXPOSE 80
WORKDIR /daikin-control/web_gui/

COPY entrypoint.sh /
CMD ["/entrypoint.sh"]
