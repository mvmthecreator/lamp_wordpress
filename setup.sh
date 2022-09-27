#/bin/bash

docker-compose up -d
echo "Container initialized"

echo "Set UID for www-data in container to 1000. the same as our local user id"

docker exec -it web_wordpress bash -c "groupmod -g 1000 www-data  && usermod -u 1000 www-data && usermod -g 1000 www-data && usermod -g 1000 www-data && chown -R www-data:www-data /var/www && service apache2 reload"

