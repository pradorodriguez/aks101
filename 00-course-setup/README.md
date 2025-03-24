# Getting Started with this course

This page outlines setup steps and technical requirements.

## Setup Steps

### Create a "Service Principal" (SP) with Contributor role in your Azure subscription

> [!IMPORTANT]
> **Select and Azure account with sufficient permissions to create resources.**
>
> **It is recommended to use a personal Azure Account.**

* Login to [Azure Shell](https://shell.azure.com/)
* Select your Azure Subscription ID where the resources will be deployed

```bash
az account set --subscription "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
```

* Create the Service Principal

```bash
az ad sp create-for-rbac --name **yourServicePrincipalName** \
                        --role contributor \
                        --scopes /subscriptions/**yourSubscriptionID** \
                        --sdk-auth
```

> [!NOTE]
> Replace the **yourServicePrincipalName** value with a **name** of your choice.
>
> Replace the **yourSubscriptionID** value with your Azure **Subscription ID**.

** Copy and save all the command output, will be needed to create a GitHub Variable. Output example:

```bash
{
  "clientId": "XXXXXXXXXXXXXXX",
  "clientSecret": "XXXXXXXXXXXXXXX",
  "subscriptionId": "XXXXXXXXXXXXXXX",
  "tenantId": "XXXXXXXXXXXXXXX",
  "activeDirectoryEndpointUrl": "https://login.microsoftonline.com",
  "resourceManagerEndpointUrl": "https://management.azure.com/",
  "activeDirectoryGraphResourceId": "https://graph.windows.net/",
  "sqlManagementEndpointUrl": "https://management.core.windows.net:8443/",
  "galleryEndpointUrl": "https://gallery.azure.com/",
  "managementEndpointUrl": "https://management.core.windows.net/"
}
```

### Configure your GitHub repository Fork this Repo

#### Fork this repository

* [Fork this entire repo](https://github.com/pradorodriguez/aks101/fork) to your own GitHub account to be able to complete the challenges.

#### Create GitHub Secrets

* In your own GitHub fork, go to the **Settings** button in the top menu bar.
* In the left navigation panel, go to: **Security** -> **Secrets and Variables** -> **Actions**.
* Create each secret below by clicking the **New repository secret** button.

![Terminal](./images/cs1.jpg)

* These are the keys for the secrets: (do not use quotes or blank spaces):

| Key/Secret  | Value  |
| :--- | :--- |
| AZURE_CREDENTIALS | < _Paste the JSON file generated for the Service Principal_ > |
| | |

#### Create GitHub Variables

* In your own GitHub fork, go to the **Settings** button in the top menu bar.
* In the left navigation panel, go to: **Security** -> **Secrets and Variables** -> **Actions**.
* Click the **Variables** tab.
* Create each variable below by clicking the **New repository variable** button.

![Terminal](./images/cs2.jpg)

* These are the keys for the secrets: (do not use quotes or blank spaces):

| Key/Variable  | Value  |
| :--- | :--- |
| LOCATION | < _Paste ONE location: **eastus2**, **centralus**, **westeurope**, **westus2**, **southeastasia**_ > |
| | |

### Run the GitHub Action workflow to deploy the Azure Environment

* In your own GitHub fork, go to the **Actions** button in the top menu bar.
* In the left navigation panel, click **Deploy AKS resources** -> **Run workflow** -> **Run workflow**.

![Terminal](./images/cs3.jpg)

### Configure your working environment (Select one option)

#### OPTION 1 - Create a Github Codespaces environment (RECOMMENDED OPTION)

We recommend running this course in a [GitHub Codespaces](https://github.com/features/codespaces) environment. Github Codespaces will automatically open the Visual Studio Code online version, with the cloned repository and ready to execute the code from this workshop.

If you select this option (CodeSpaces), you can continue the setup instructions **[here](./SETUP_CS.md)**.

#### OPTION 2 - Use you local laptop environment

If you select this option (use your local PC), you can continue the setup instructions **[here](./SETUP_LC.md)**.

### 3. Finalize the configuration settings for the environment

* CodeSpaces Environment **[instructions](./SETUP_CS.md)**
* Local Environment **[instructions](./SETUP_LC.md)**
