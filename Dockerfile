FROM centos:7

WORKDIR /tmp/install

COPY scripts .
RUN chmod a+x *.sh

RUN ./init.root.sh

USER developer
RUN ./init.developer.sh

USER root
RUN ./clean.root.sh

WORKDIR /home/developer/go/src

USER developer

ENTRYPOINT ["sleep", "infinity"]
