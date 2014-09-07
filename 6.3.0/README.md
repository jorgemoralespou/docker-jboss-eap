# Docker images for JBoss EAP 6.3.0
Download EAP 6.3.0 zip file and place it under files directory, build the image and run containers

Download from:
https://access.redhat.com/jbossnetwork/restricted/softwareDownload.html?softwareId=32483&product=appplatform

## Installation details
* OS user: __jboss__
* HOME: __/home/jboss__
* EAP_HOME; __/home/jboss/jboss-eap-6.3__
* EAP_USER: __admin/admin123!__

By default, management and service interfaces bound to __0.0.0.0__

Profile run by default: __standalone.xml__. If you want to run any other profile, do so like:
````
docker run -it <ANY_OTHER_OPTION> jmorales/jboss-eap:6.3.0 -c standalone-full-ha.xml
````

If you want to get into the container via bash, do like:
````
docker run -it <ANY_OTHER_OPTION> --entrypoint=/bin/bash jmorales/jboss-eap:6.3.0 -s
````

If you want to debug into the container, enable debug command line:
````
docker run -it <ANY_OTHER_OPTION> jmorales/jboss-eap:6.3.0 --debug [OPTIONAL_PORT]
````

By default, it will use port 8787, which is the default, so no need to specify. Any other port will not be EXPOSED by default. You can however, use any port on your host.
````
docker run -it -p 7771:8787 <ANY_OTHER_OPTION> jmorales/jboss-eap:6.3.0 -c standalone-ha.xml --debug
````
