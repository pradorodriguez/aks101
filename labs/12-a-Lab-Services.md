# Lab - Working with Services - Types: NodePort and ClusterIP

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

* Create a service of type NodePort

```shell
kubectl create -f 12-service-nginx-blue-np.yaml
```

* Review the created objects

```shell
kubectl get svc nginxhello-blue-np

kubectl describe svc nginxhello-blue-np
```

* Create a service of type ClusterIP

```shell
kubectl create -f 12-service-nginx-blue-ci.yaml
```

* Review the created objects

```shell
kubectl get svc

kubectl describe svc nginxhello-blue-ci
```

* Delete the services

```shell
kubectl delete svc nginxhello-blue-np

kubectl delete svc nginxhello-blue-ci
```
