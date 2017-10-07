# Wildfly for Development #

This image extends [kraitv3/ubuntu-jdk](https://hub.docker.com/r/kraitv3/ubuntu-jdk/) and includes a Wildfly configuration for development purpose.

## Supported Tags ##

`10.1.0.Final`, `latest` [*(Dockerfile)*](https://github.com/kraitv3/docker-wildfly/blob/master/Dockerfile)

## Running the Image ##

```
docker run -it 
   -p 8080:8080 -p 9990:9990 
   -v <host_directory>:/opt/wildfly/standalone/deployments kraitv3/wildfly:<tag>
```

