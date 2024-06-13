# PHP builtin webserver using docker

Set the php version in the dockerfile according to your needs before setup.

## Setup Instructions

1. Clone or download the repository to your local machine.

2. Build the image:

```
docker build . -t <image_name>
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
   (you can use sh or bash or anything)

```
docker exec -it <container_name> sh
```

6. Generate autoload files using Composer:

```
composer dump-autoload
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
  (stop container before this command)

```
docker rm <container_name>
```

or force remove without stopping the container

```
docker rm -f <container_name>
```
