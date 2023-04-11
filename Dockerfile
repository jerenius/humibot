FROM debian:bullseye-slim

MAINTAINER Jere Virta 

ENV DEBIAN_FRONTEND=noninteractive \

COPY content/ /

RUN apt-get update \
    && apt-get -qqy install --no-install-recommends \
       apt-utils \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
    

RUN chmod +x /opt/start.sh \
	     /opt/supervisor/*


ENTRYPOINT ["/opt/start.sh"]
    
    