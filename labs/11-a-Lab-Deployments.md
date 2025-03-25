# Lab - Working with Deployments

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

## Deployment management

* Create a deployment

```shell
kubectl create -f 11-deployment-nginx-blue.yaml
```

* Review the created objects

```shell
kubectl describe deployment nginxhello-blue

kubectl logs deployment/nginxhello-blue

kubectl get pods --selector app.kubernetes.io/name=nginxhello-blue
```

## Scale the PODs

* Scale the PODs to 5

```shell
kubectl scale --replicas=5 deployment nginxhello-blue
```

* Validate the new PODs have been deployed

```shell
kubectl get pods --selector app.kubernetes.io/name=nginxhello-blue
```
