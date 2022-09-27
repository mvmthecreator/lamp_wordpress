## Docker Wordpress enviroment for local development under linux
This will create a full wordpress installation with persitent storage in the actual directory.
For write access we set the UID for www-data inside the container to 1000. The same as our local user id. If your UID is different change it please. You can check it with id -u.

### Setup 
To start the containers run

`./setup.sh`

Files will be located in folder `./html`

To stop the containers run

`docker-compose down`

To delete the container and volumes run 

`./delete.sh`


TODO:

[  ] Add enviroment variables to docker-compose.yml and red the from .env file