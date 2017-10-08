FROM kraitv3/ubuntu-jdk:16.04-jdk8

ENV WILDFLY_VERSION 10.1.0.Final
ENV WILDFLY_SHA1 9ee3c0255e2e6007d502223916cefad2a1a5e333
ENV JBOSS_HOME /opt/wildfly

#Set up wildfly
RUN cd /opt \
	&& wget https://download.jboss.org/wildfly/$WILDFLY_VERSION/wildfly-$WILDFLY_VERSION.tar.gz \
	&& echo $WILDFLY_SHA1 wildfly-$WILDFLY_VERSION.tar.gz |	sha1sum -c \
	&& tar -xvf wildfly-$WILDFLY_VERSION.tar.gz \
	&& mv /opt/wildfly-$WILDFLY_VERSION $JBOSS_HOME \
	&& rm wildfly-$WILDFLY_VERSION.tar.gz

#Create admin user
RUN $JBOSS_HOME/bin/add-user.sh admin admin123 --silent

#Add configuration with JVM debug options
COPY standalone.conf /opt/wildfly/bin

VOLUME $JBOSS_HOME/standalone/deployments

EXPOSE 8080 8787 9990

CMD ["/opt/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]