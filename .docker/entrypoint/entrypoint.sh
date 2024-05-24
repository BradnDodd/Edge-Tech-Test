#!/bin/sh

set -e
echo "DEV ENTRY POINT"
# first arg is `-f` or `--some-option`
if [ "${1#-}" != "$1" ]; then
	set -- apache2-foreground "$@"
fi

echo "COMPOSER INSTALL"
composer install;

exec "$@"
