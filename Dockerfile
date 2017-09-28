FROM java:8
COPY src /home/root/javahelloworld/src
COPY bin /home/root/javahelloworld/bin
WORKDIR /home/root/javahelloworld
RUN javac -d bin src/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]