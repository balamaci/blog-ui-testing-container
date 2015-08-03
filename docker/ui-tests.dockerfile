FROM        balamaci/mvn3-jdk8

VOLUME      ["/usr/src/app"]

RUN apt-get update
RUN apt-get install -y imagemagick
RUN curl -sL https://deb.nodesource.com/setup | sudo bash - && \
                  apt-get -y install nodejs
RUN npm install -g phantomjs

WORKDIR /usr/src/app
