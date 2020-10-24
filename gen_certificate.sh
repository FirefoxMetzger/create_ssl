#!/bin/sh
dos2unix /config.cfg
openssl genrsa > certs/private.key
openssl req -new -x509 -config /config.cfg -key certs/private.key -days 10000 > certs/certificate.crt
openssl x509 -in certs/certificate.crt -text -noout