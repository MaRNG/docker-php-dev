#!/bin/bash

sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ./apache/ssl/keys/apache-selfsigned.key -out ./apache/ssl/keys/apache-selfsigned.crt -subj "/C=CZ/ST=Prague/L=Prague/O=Global Security/OU=IT Department/CN=*.localhost"