FROM rodneygomes/chrome:base

MAINTAINER Rodney Gomes <rodneygomes@gmail.com>

ARG CHROME_DEB="archive/chrome64_59.0.3071.86.deb"

COPY copyables /

RUN mkdir -p /archive
COPY ${CHROME_DEB} /archive

# install the version of chrome you picked
RUN dpkg -i /${CHROME_DEB}

# clean up to save on image size
RUN apt-get clean
RUN rm -rf /archive /var/cache/* /var/log/apt/* /var/lib/apt/lists/* /tmp/*

RUN useradd -m -G pulse-access chrome
RUN mkdir -p /home/chrome/.fluxbox
RUN chown -R chrome:chrome /home/chrome/

VOLUME ["/home/chrome"]

EXPOSE 5900

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
