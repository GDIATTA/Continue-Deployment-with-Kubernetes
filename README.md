# Continue-Deployment-with-Kubernetes
Docker and Kubernetes are the useful tools in continu deployment

**What is Kubernetes** ? <br>
Kubernetes is an open-source container orchestration system for automating software deployment, scaling, and management. It has become very popular at the enterprise level for facilitating horizontal scaling of server resources, and many cloud providers including DigitalOcean offer their own managed Kubernetes solution. <br>

**Prerequisites**: <br>
> The Docker container framework installed in the Windows, Mac, or Linux environment that you’ll be running minikube from. If you are not working in a Linux environment, refer to Docker’s documentation for installation steps. If you are using Docker on Linux, ensure that you’ve configured it to work without sudo privileges.
> Kubectl installed. For that you can refer this link : https://kubernetes.io/docs/tasks/tools/
> Minikube installed. For that you can refer also this link : https://kubernetes.io/docs/tasks/tools/


**How to set up Kubectl on Windows ?**
> 1. You have two options for installing kubectl on your Windows device <br>
>> Direct download: Download the latest 1.31 patch release binary directly for your specific architecture by visiting the Kubernetes release page. Be sure to select the correct binary for your architecture (e.g., amd64, arm64, etc.). <br>
>> Using curl: If you have curl installed, use this command: <br>

![Capture d’écran 2024-08-19 153536](https://github.com/user-attachments/assets/9e465096-adca-4da1-85c9-350c28f0d66d)

> 2. Validate the binary (optional) <br>
Validate the kubectl binary against the checksum file: <br>
>> Using Command Prompt to manually compare CertUtil's output to the checksum file downloaded: <br>

![Capture d’écran 2024-08-19 154215](https://github.com/user-attachments/assets/c316fa4a-65f7-422b-b523-8b8a2b44772a)

>> Using PowerShell to automate the verification using the -eq operator to get a True or False result: <br>

![Capture d’écran 2024-08-19 154241](https://github.com/user-attachments/assets/b6b02f30-a5ef-4724-ab7b-7fc9d05ad6f1)

> 3. Append or prepend the kubectl binary folder to your PATH environment variable. <br>

![Capture d’écran 2024-08-19 174618](https://github.com/user-attachments/assets/a640cab1-ecdc-407b-b012-0149eab6752c)

> 4. Test to ensure the version of kubectl is the same as downloaded: <br>

![Capture d’écran 2024-08-19 165354](https://github.com/user-attachments/assets/d53d7e3b-3294-49ce-bd0f-f1720c125ee6)
