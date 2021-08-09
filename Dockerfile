FROM phpdoc/phpdoc:3

RUN                                                                            \
  mkdir --parents /opt/phpdoc/var/cache/prod                                && \
  mkdir --parents /opt/phpdoc/var/log                                       && \
  chmod 777 /opt/phpdoc/var/cache/prod                                      && \
  chmod 777 /opt/phpdoc/var/log
