FROM java:19

# add the container directory from the host
RUN mkdir /webapp

# copy the app to container directory
ADD . webapp

WORKDIR /webapp

RUN javac Main.java

CMD java Main

