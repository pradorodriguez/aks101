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

## Imperative Interaction - Review current AKS context and configuration

* Run separately each command and check the output

```shell
# Show Merged kubeconfig settings
kubectl config view

# Show current AKS context
kubectl config current-context

# Switch context (DO NOT EXECUTE THIS COMMAND)
#kubectl config use-context <AKS-NAME>

# Display addresses of the master and services
kubectl cluster-info 

# Display the status of the nodes in your cluster
kubectl get nodes

# Display detailed information about a node
kubectl describe nodes <NODE_NAME>

# Display the list of all supported resource types
kubectl api-resources -o wide

# Show metrics for all nodes
kubectl top node 
```
