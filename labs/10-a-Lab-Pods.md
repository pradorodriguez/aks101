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

## Imperative Interaction

* Run separately each command and check the output

```shell
# Create a POD
kubectl run nginx --image=nginx

# List all pods 
kubectl get pods -o wide

# Describe the pod
kubectl describe pods nginx

# Dump pod logs (stdout)
kubectl logs nginx 

# Get a pod's YAML
kubectl get pod nginx -o yaml 
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

* Explore internals of a POD

```shell
# Create and log into a PODs container
kubectl run -i --tty busybox --image=busybox -- sh

# Execute the following Linux command
ifconfig

hostname

ls -la

nslookup microsoft.com

# Exit the busybox POD shell
exit
```

* Log back to the busybox POD

```shell
kubectl exec -i --tty busybox -- sh
```

* Delete objects

```shell
kubectl delete pod myapp-pod
```
