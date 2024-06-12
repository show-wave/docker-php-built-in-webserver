# PHP builtin webserver using docker

Set the php version in the dockerfile according to your needs before setup.

## Setup Instructions

1. Clone or download the repository to your local machine.

2. Build the image:

```
docker build -t <image_name>
```

3. Build and start the container:

```
docker run -d -p 8000:8000 -v $(pwd)/app:/var/www/html --name <container_name> <image_name>
```

4. Verify that the containers are running by executing:

```
docker ps
```

5. Run the PHP Application container using the following command:

```
docker exec -it <php-app-container> sh(or bash or any)
```

6. Generate autoload files using Composer:

```
run composer dump-autoload
```

7. Exit PHP container:

```
exit
```

## Running Docker Application

- Stop the container:

```
docker stop <container_name>
```

- Start the container:

```
docker start <container_name>
```

- Remove the container:

```
docker rm <container_name> or docker rm -f <container_name>
```
