# Lab - Working with PODs

## Prepare the Visual Studio Code terminal

* Open Visual Studio Code
* Go to the Azure and AKS authenticated terminal
  * In case you need to access the AKS environment, run the following command

```shell
az aks get-credentials --resource-group <Azure-Resource-Group-Name> --name <AKS-Name> --overwrite-existing
```

* Set the working environment folder

```shell
cd labs
```

> [!NOTE]
> If the Azure or AKS authentication fails, go to the "Let's Get Started" section from the  Lab working environment setup instructions.

## Get the ACR name and Login Server

* ACR name: Azure Portal -> Go to the ACR resource -> Click **Overview** -> Copy the **NAME** (The NAME does not include the domain name **azurecr.io**)

* ACR Login Server: Azure Portal -> Go to the ACR resource -> Click **Overview** -> Copy the **Login Server**

## Attach the ACR to the AKS cluster

* Execute the following command in the VSC terminal

```shell
az aks update --name <AKS-Name> --resource-group <Azure-Resource-Group-Name> --attach-acr <ACR-Name>
```

## Deploy a POD with an ACR Image

* Review and modify the POD manifest
  * Open manifest [10-pod-dp-definition.yml](10-pod-dp-definition.yml)
  * Replace the **"<ACR-Login-Server-Domain>"** in line 10 with the real **ACR-Login-Server-Domain**

* Deploy the POD manifest

```shell
kubectl create -f 10-pod-dp-definition.yml
```

* Run separately each command and check the output

```shell
kubectl get pod docker-python-pod

kubectl describe pod docker-python-pod
```
