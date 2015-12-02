#bassoman/jackrabbit-oak
FROM bassoman/ubuntu-jdk
MAINTAINER Jon Lancelle bassoman@gmail.com

RUN apt-get update && apt-get install -y \
  unzip \
	pgpgpg

RUN curl http://www.apache.org/dyn/closer.lua/jackrabbit/oak/1.2.8/jackrabbit-oak-1.2.8-src.zip -o \
		/opt/jackrabbit-oak-1.2.8-src.zip && \
#	curl http://www.apache.org/dist/jackrabbit/oak/1.2.8/jackrabbit-oak-1.2.8-src.zip.asc -o \
#		/opt/jackrabbit-oak-1.2.8-src.zip.asc && \
#	curl http://www.apache.org/dist/jackrabbit/KEYS -o \
#		/opt/KEYS
	cd /opt && \
	unzip jackrabbit-oak-1.2.8-src.zip
