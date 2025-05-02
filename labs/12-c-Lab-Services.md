# Lab - Generate load to the Deployment and verify how HPA works

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

## Generate load

* Create a POD that will generate load

```shell
kubectl run apache-bench -i --tty --rm --image=httpd -- ab -n 500000 -c 1000 http://nginxhello-blue.default.svc.cluster.local/ 
```

> [!NOTE]
> This step will take some minutes. If you want to interact with AKS and execute commands while this step is executed, then open a new VSC Terminal or go to the AKS in the Azure Portal and check the **Kubernetes resources -> Workloads -> Deployments** section

* Review the created replicas

```shell
kubectl get deployment nginxhello-blue

kubectl get pods --selector app.kubernetes.io/name=nginxhello-blue

kubectl get hpa

kubectl describe hpa hpa-nginxhello-blue
```
