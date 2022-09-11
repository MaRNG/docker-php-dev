# docker-php-dev
Docker containers for PHP development.

Based on `dockette/devstack` (https://github.com/dockette/devstack)

## Initialization
Before you start up containers, you need to start `init.sh` script. It will generate SSL keys for Apache.

## Start
You need start `up.sh` script after successful initialization.

## Restart
You can restart containers via `restart.sh` script when you make any change in apache sites-enabled folder.

## Apache VHost
You need to add VHost to folder `./apache/sites-enabled/`.

### Example of VHost
Filename: `example-site.conf`

PHP: PHP8.0

```conf
<VirtualHost *:80>
    ServerName example-site.localhost

    DocumentRoot /srv/example-site/www

    <Directory /srv/example-site/www>
        Options -Indexes +FollowSymLinks +MultiViews
        AllowOverride All
        Require all granted
    </Directory>

    <FilesMatch \.php$>
        SetHandler "proxy:fcgi://php80:9000"
    </FilesMatch>
</VirtualHost>

<VirtualHost *:443>
    ServerName example-site.localhost

    DocumentRoot /srv/example-site/www

    <Directory /srv/example-site/www>
        Options -Indexes +FollowSymLinks +MultiViews
        AllowOverride All
        Require all granted
    </Directory>

    <FilesMatch \.php$>
        SetHandler "proxy:fcgi://php80:9000"
    </FilesMatch>

    SSLCertificateFile /srv/keys/apache-selfsigned.crt
    SSLCertificateKeyFile /srv/keys/apache-selfsigned.key
</VirtualHost>
```

## Notes
When you (re)starting docker-compose manually you need to set option `-E` after sudo (`sudo -E`).

If you need some ssh key inside the php container, then you need add ssh key via `ssh-add <ssh-key>`.
