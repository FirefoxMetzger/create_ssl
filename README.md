# Create SSL

This is a small utility that creates a self-signed SSL certificate with IP SAN.
The applied IP can be configured by modifying `certs/config.cfg` default is
`127.0.0.1`

### Steps to create a certificate with SAN `127.0.0.1`

On Linux:

    git clone https://github.com/FirefoxMetzger/create_ssl.git
    cd create_ssl
    # edit ./certs/config.cfg to use the SAN you desire
    docker run --rm -it -v./certs:/certs firefoxmetzger/create_ssl

On Windows: The same steps as above; however, when mounting `./certs` you have to specify the absolute path to the folder to use it with Docker for Windows.
