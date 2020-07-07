FROM java:8
COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloword/src
RUN mkdir bin && javac -d bin src/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
