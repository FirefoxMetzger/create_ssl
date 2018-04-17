# Create SSL

This is a small utility that creates a self-signed SSL certificate with IP SAN.
The applied IP can be configured by modifying `certs/config.cfg` default is
`127.0.0.1`

### Steps to use

    git clone https://github.com/FirefoxMetzger/create_ssl.git
    cd create_ssl
    docker run --rm -it -v./certs:/certs firefoxmetzger/create_ssl
