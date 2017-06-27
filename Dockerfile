FROM java:8

COPY src /home/root/javahello/src
WORKDIR /home/root/javahello
ENV FOO bar

RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
RUN apt-get update && apt-get install -y vim

ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]

