FROM centos

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
#RUN curl -O http://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.45/bin/apache-tomcat-8.5.45.tar.gz
ADD  http://apachemirror.wuchna.com/tomcat/tomcat-8/v8.5.46/bin/apache-tomcat-8.5.46.tar.gz .
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-8.5.46/* /opt/tomcat/.
RUN yum -y install java
RUN java -version

WORKDIR /opt/tomcat/webapps

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
