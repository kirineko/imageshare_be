FROM openjdk:17
COPY ./target/demo-0.0.1-SNAPSHOT.jar /src/demo.jar
WORKDIR /src
#设置镜像的时区,避免出现8小时的误差
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
EXPOSE 8088
ENTRYPOINT ["java","-Xms256m","-Xmx512m","-jar","demo.jar"]
