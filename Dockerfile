FROM java:8

MAINTAINER Raphael THOMAS <raphael.thomas@atos.net> 

COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
ENV FOO bar

RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
RUN apt-get update && apt-get install -y vim

ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
