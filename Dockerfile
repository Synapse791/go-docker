FROM ubuntu:14.04

MAINTAINER Synapse179 <synapse791@gmail.com>

RUN	apt-get update && \
	apt-get install -y \
		wget

RUN	wget -O /tmp/golang.tar.gz https://storage.googleapis.com/golang/go1.4.1.linux-amd64.tar.gz && \
	tar -C /usr/local -xzf /tmp/golang.tar.gz

RUN mkdir /gocode

ENV GOPATH	/gocode
ENV PATH 	$PATH:/usr/local/go/bin:$GOPATH/bin

CMD ["/bin/bash"]
