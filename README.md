# docker-php-dev
Docker containers for PHP development.

Based on `dockette/devstack` (https://github.com/dockette/devstack)

## Initialization
Before you start up containers, you need to start `init.sh` script. It will generate SSL keys for Apache.

## Start
You need start `up.sh` script after successful initialization.

## Restart
You can restart containers via `restart.sh` script when you make any change in apache sites-enabled folder.

## Notes
When you (re)starting docker-compose manually you need to set option `-E` after sudo (`sudo -E`).

If you need some ssh key inside the php container, then you need add ssh key via `ssh-add <ssh-key>`.
