# Lab - Working with Ingress Controller - AKS Application Routing addon (Managed NGINX ingress)

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

## Enable the AKS Application Routing addon (Managed NGINX ingress)

```shell
az aks approuting enable --resource-group <Azure-Resource-Group-Name> --name <AKS-Name> 
```

> [!NOTE]
> Replace the **< Azure-Resource-Group-Name >** value with the **Resource Group** name.
>
> Replace the **< AKS-Name >** value with the **AKS** name.

## Create a new application

* Create a Deployment with a Service of type Cluster IP

```shell
kubectl create -f 13-deployment-nginx-red-ci.yaml
```

* Review the created objects

```shell
kubectl get deployment nginxhello-red

kubectl get pods --selector app.kubernetes.io/name=nginxhello-red

kubectl get svc nginxhello-red
```

## Create the Ingress Service

```shell
kubectl create -f 13-nginx-ingress.yaml
```

* Review the created objects

```shell
kubectl describe ingress nginx-red-ingress
```

* Copy the external IP of the Service from the "ADDRESS" column

```shell
kubectl get ingress nginx-red-ingress
```

> [!NOTE]
> It might take some minutes to receive an external IP.

* Open a browser and paste the IP. The application runs on port 80.
