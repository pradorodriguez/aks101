# Lab - Working with Deployments and HPA

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

## Deployment management

* Delete existing deployment

```shell
kubectl delete deployment nginxhello-blue
```

* Create a deployment

```shell
kubectl create -f 11-deployment-hpa-nginx-blue.yaml
```

* Review and count the created objects

```shell
kubectl describe deployment nginxhello-blue

kubectl logs deployment/nginxhello-blue

kubectl get pods --selector app.kubernetes.io/name=nginxhello-blue

kubectl get hpa

kubectl describe hpa hpa-nginxhello-blue
```

## Create the HPA (Horizontal Pod Autoscaler)

* Create the HPA

```shell
kubectl create -f 11-hpa-nginx-blue.yaml
```

* Validate the new Replica configuration

```shell
kubectl get deployment nginxhello-blue

kubectl get pods --selector app.kubernetes.io/name=nginxhello-blue
```
