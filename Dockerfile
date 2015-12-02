#bassoman/jackrabbit-oak
FROM bassoman/ubuntu-jdk
MAINTAINER Jon Lancelle bassoman@gmail.com

RUN apt-get update && apt-get install -y \
  unzip \
	pgpgpg

RUN curl http://www.interior-dsgn.com/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz -o \
	/opt/apache-maven-3.3.9-bin.tar.gz && \
	cd /opt && \
	tar xzvf apache-maven-3.3.9-bin.tar.gz

ENV MAVEN_HOME /opt/apache-maven-3.3.9
ENV PATH $MAVEN_HOME/bin:$PATH

RUN curl http://apache.cs.utah.edu/jackrabbit/oak/1.2.8/jackrabbit-oak-1.2.8-src.zip -o \
		/opt/jackrabbit-oak-1.2.8-src.zip && \
	curl http://www.apache.org/dist/jackrabbit/oak/1.2.8/jackrabbit-oak-1.2.8-src.zip.asc -o \
		/opt/jackrabbit-oak-1.2.8-src.zip.asc && \
	curl http://www.apache.org/dist/jackrabbit/KEYS -o \
		/opt/KEYS && \
	cd /opt && \
	unzip jackrabbit-oak-1.2.8-src.zip

EXPOSE 8080
