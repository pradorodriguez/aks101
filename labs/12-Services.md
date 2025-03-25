# Lab - Working with Services - Type: Load Balancer

## Prepare the Visual Studio Code terminal

* Open Visual Studio Code
* Go to the Azure and AKS authenticated terminal
  * In case you need to access the AKS environment, run the following command

```shell
az aks get-credentials --resource-group <Azure-Resource-Group-Name> --name <AKS-Name> 
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
kubectl create -f service-nginx-blue-lb.yaml
```

* Review the created objects

```shell
kubectl get svc

kubectl describe svc nginxhello-blue
```
