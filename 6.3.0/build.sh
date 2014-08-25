#!/bin/bash

if [ ! -e files/jboss-eap-6.3.0.zip ]
then
   echo "You should get required EAP binary before trying to build this image."
   echo "Binary is available at: https://access.redhat.com/jbossnetwork/restricted/softwareDownload.html?softwareId=32483&product=appplatform"
   exit 255
fi

docker build --rm -t jboss/eap:6.3.0  .
