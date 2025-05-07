# Setup Your Local Environment

## How to Run locally on your computer

> [!IMPORTANT]
> If you are using Github Codespaces you can skip **this section** and its substeps.

To run the code locally on your computer, you need to have installed the following tools:

* [Git](https://git-scm.com/downloads)
* [Visual Studio Code](https://code.visualstudio.com/)
* [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)
* [Windows Subsystem for Linux](https://learn.microsoft.com/en-us/windows/wsl/install)
* [Ubuntu linux distribution for your WSL](https://ubuntu.com/wsl)
* [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/)
* [Python](https://www.python.org/downloads/)

### Clone the repository

* Open a bash terminal of your choice
* Run the following code

```shell
git clone https://github.com/pradorodriguez/aks101.git
cd aks101
```

* Open the downloaded repo using Visual Studio Code.

## Let's Get Started

* Open Visual Studio Code
* In the upper options, click tab **Terminal** -> click **New Terminal**.
* Go to the terminal section. Login to your personal Azure tenant:

```shell
az login
```

* This will open an Azure Authentication Portal in your browser. Login using the Azure Account where your resources where deployed.
* Go to the terminal section. Authenticate to your AKS resource:

```shell
az aks get-credentials --resource-group <Azure-Resource-Group-Name> --name <AKS-Name> --overwrite-existing
```

> [!NOTE]
> Replace the **< Azure-Resource-Group-Name >** value with the **Resource Group** name.
>
> Replace the **< AKS-Name >** value with the **AKS** name.

* Go the code and demos section are located in the **[./labs folder](../labs/)**
