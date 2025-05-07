# Lab - Push the Docker Image to Azure Container Registry

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

## Login to ACR

* Authenticate to ACR (Azure Container Registry)

```shell
az acr login --name <ACR-Name> --resource-group <Azure-Resource-Group-Name>
```

> [!IMPORTANT]
> To get the **ACR-Name** parameter:
>
> Azure Portal -> Go to the ACR resource -> Click **Overview** -> Copy the **NAME** (The NAME does not include the domain name **azurecr.io**)

* Rename the Docker Image

```shell
docker tag docker-python:v1 <ACR-Login-Server-Domain>/docker-python:v1
```

> [!IMPORTANT]
> To get the **ACR-Login-Server-Domain** parameter:
>
> Azure Portal -> Go to the ACR resource -> Click **Overview** -> Copy the **Login Server**

* Push the renamed Docker Image to ACR

```shell
docker push <ACR-Login-Server-Domain>/docker-python:v1
```

## Check the uploaded Docker Image in ACR

* Go to Azure Portal -> Go to the ACR resource -> In the left panel look for **Services** -> Click **Repositories**
