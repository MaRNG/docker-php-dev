FROM dockette/apache

RUN rm /etc/apache2/apache2.conf && \
    a2enmod ssl
ADD apache2.conf /etc/apache2/apache2.conf
ADD ssl-params.conf /etc/apache2/conf-available/ssl-params.conf

WORKDIR /srv

EXPOSE 80
EXPOSE 443