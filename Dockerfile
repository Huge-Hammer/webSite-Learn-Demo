FROM openjdk:8-jre

MAINTAINER zhouweihao@jslcznkj.cn

WORKDIR /home

EXPOSE 8087

ADD ./target/heron-0.0.1-SNAPSHOT.jar ./website.jar

CMD java -jar /home/website.jar


