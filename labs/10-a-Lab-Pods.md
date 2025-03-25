# Lab - Working with PODs

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

## Imperative Interaction

* Run separately each command and check the output

```shell
kubectl run nginx --image=nginx

kubectl get pods -o wide

kubectl describe pods nginx

kubectl logs nginx 
```

* Delete objects

```shell
kubectl delete pod nginx
```

## Declarative Interaction

* Deploy a manifest

```shell
kubectl create -f 10-pod-definition.yml
```

* Run separately each command and check the output

```shell
kubectl get pod myapp-pod

kubectl get pod myapp-pod -o yaml

kubectl describe pod myapp-pod
```

* Delete objects

```shell
kubectl delete pod myapp-pod
```
