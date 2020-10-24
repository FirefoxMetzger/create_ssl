# Create SSL

This is a small utility that creates a self-signed SSL certificate with IP SAN.
The applied IP can be configured by modifying `certs/config.cfg` default is
`127.0.0.1`

### Steps to create a certificate

```
docker run --rm -it -v$PWD:/certs firefoxmetzger/create_localhost_ssl
```

Replace the default config:
```
docker run --rm -it -v$PWD:/certs -v<absolute/path/to/config.cfg>:/config.cfg firefoxmetzger/create_localhost_ssl
```
