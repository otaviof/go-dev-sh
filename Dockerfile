FROM docker.io/library/golang:latest

ENV HISTFILE=/root/.bash.d/histfile

ADD inputrc /root/.inputrc
ADD bashrc /root/.bashrc

RUN mkdir /src
WORKDIR /src

ENTRYPOINT [ "/bin/bash" ]
CMD [ "--login" ]