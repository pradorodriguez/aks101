# Lab - Working with Services - Type: Load Balancer

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

## Services management

* Create a service

```shell
kubectl create -f 12-service-nginx-blue-lb.yaml
```

* Review the created objects

```shell
kubectl describe svc nginxhello-blue
```

* Copy the external IP of the Service from the "EXTERNAL-IP" column

```shell
kubectl get svc nginxhello-blue
```

* Open a browser and paste the IP. The application runs on port 80.
