# Wildfly for Development #

This image extends [kraitv3/ubuntu-jdk](https://hub.docker.com/r/kraitv3/ubuntu-jdk/) and includes a Wildfly configuration for development purpose. The configuration provides the following features:

* Default access (Port: *8080*)
* Access to the management console (Port: *9990*) with a preconfigured admin user (username: *admin*, password: *admin*)
* Remote debugging (Port: *8787*)
* Mount point for standalone deployment (Volume: */opt/wildfly/standalone/deployments*)

## Supported Tags ##

`10.1.0.Final`, `11.0.0.Final`, `12.0.0.Final`, `latest` [*(Dockerfile)*](https://github.com/kraitv3/docker-wildfly/blob/master/Dockerfile)

## Running the Image ##

Example command with mapping of all ports and mounting of the deployment directory:

```
docker run -it -p 8080:8080 -p 8787:8787 -p 9990:9990 -v <host_directory>:/opt/wildfly/standalone/deployments kraitv3/wildfly:<tag>
```

