# Lab - Working with PODs

## Prepare the Visual Studio Code terminal

* Open Visual Studio Code
* Go the Azure and AKS authenticated terminal
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
kubectl create -f pod-definition.yml
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
