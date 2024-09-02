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

**How to set up Minikube ?** <br>
minikube is local Kubernetes, focusing on making it easy to learn and develop for Kubernetes.<br>
All you need is Docker (or similarly compatible) container or a Virtual Machine environment, and Kubernetes is a single command away: **minikube start** <br>

**What you’ll need** <br>
> 2 CPUs or more <br>
> 2GB of free memory <br>
> 20GB of free disk space <br>
> Internet connection <br>
> Container or virtual machine manager, such as: Docker, QEMU, Hyperkit, Hyper-V, KVM, Parallels, Podman, VirtualBox, or VMware Fusion/Workstation <br>

Get started <br>
To install the latest minikube stable release on x86-64 Windows using .exe download: <br>
> 1. Download and run the installer for the latest release. <br>
Or if using PowerShell, use this command: <br>

![Capture d’écran 2024-08-19 180042](https://github.com/user-attachments/assets/93af22de-b6cb-41d9-91e6-fee06c849275)

> 2.Add the minikube.exe binary to your PATH. <br>
Make sure to run PowerShell as Administrator. <br>
**$oldPath = [Environment]::GetEnvironmentVariable('Path', [EnvironmentVariableTarget]::Machine) <br>
if ($oldPath.Split(';') -inotcontains 'C:\minikube'){ <br>
  [Environment]::SetEnvironmentVariable('Path', $('{0};C:\minikube' -f $oldPath), [EnvironmentVariableTarget]::Machine) <br>
}** <br>

![Capture d’écran 2024-09-02 171052](https://github.com/user-attachments/assets/c1a50178-fe8b-4dc5-be2a-09e5c142186d)

Once it's installed. You can start this Kubernetes cluster by using: **minikube start(one noeud)/ minikube start --nodes=5(five noeuds)** <br>

![Capture d’écran 2024-08-21 160133](https://github.com/user-attachments/assets/2751a5a4-98a1-413f-9337-ea3edf846cb8)


Get started with Kubernetes <br>
> 1. Open your docker deamon engin
> 2. Start the kubernetes cluster with five noeuds for example by using : **minikube start --nodes=5**
> 3. Open the Dashboard of Kubernetes by using : **minikube dashboard**
> 4. 



