# Lab - Working with Docker Containers

## Prepare the Visual Studio Code terminal

* Open Visual Studio Code
* Go to the Azure authenticated terminal
  * In case you need to log in to the Azure Shell run the following command

```shell
az login

# or

az login --use-device-code
```

* Set the working environment folder

```shell
cd labs
```

## Run a simple Docker Container

* Create and run a container

```shell
docker run -d -p 8080:8080 pengbai/docker-supermario
```

* View the container

```shell
docker ps
```

* Access the web game by pasting the container IP and PORT
  * If using **CODESPACES** Visual Studio: Open the **PORTS** tab (next to the **TERMINAL** tab) -> click **Open in Browser** option next to the **Forwarded Address** column.
  * If using **LOCAL** Visual Studio: Open a browser and paste **<http://localhost:PORT-NUMBER>**

```shell
http://IP-Address:8080
```

> [!NOTE]
> **ENTER: S**
>
> **JUMP: S**
>
> **RUN: A**

## Build a simple Docker image and create a Container

* View the [Dockerfile document](./Dockerfile)

* View the [Application code](./app/main.py)

* Build a Docker Image

```shell
docker build . -t docker-python:v1
```

* List the Docker Images

```shell
docker image ls
```

* Run a Docker Container

```shell
docker run -p 5001:5000 -d docker-python:v1
```

* View the container

```shell
docker ps
```

* Access the web application by pasting the container IP and PORT
  * If using **CODESPACES** Visual Studio: Open the **PORTS** tab (next to the **TERMINAL** tab) -> click **Open in Browser** option next to the **Forwarded Address** column.
  * If using **LOCAL** Visual Studio: Open a browser and paste **<http://localhost:PORT-NUMBER>**

```shell
http://IP-Address:5001
```

## Stop the pengbai/docker-supermario container

* Get the **Container pengbai/docker-supermario ID**

```shell
docker ps
```

* Stop pengbai/docker-supermario container

```shell
docker stop <Container-pengbai/docker-supermario-ID>
```

## Useful Docker commands

```shell
docker version

docker image ls
    
docker ps
        
docker network ls

docker network inspect bridge

docker info
```
