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
> 1. Open your docker deamon engin <bR>
> 2. Start the kubernetes cluster with five noeuds for example by using : **minikube start --nodes=5** <br>
> 3. Open the Dashboard of Kubernetes by using : **minikube dashboard** <br>

![Capture d’écran 2024-09-02 173020](https://github.com/user-attachments/assets/7acc7566-0318-4c16-a4ff-15482bbe84e6)
![Capture d’écran 2024-09-02 173149](https://github.com/user-attachments/assets/0ebe32ed-61e5-4a6f-951b-67b0605653d5)

In this tutorial, we want to deploy an web application flask. <br>

> 4. Save image of this application container into your repository Docker Hub : <br>
>> Create a dockerfile for this application <br>
>> Build this dockerfile : **docker build -t <name_image> <path_dockerfile>** <br>
>> It's recommanded to test this image by running the container before you use kubernetes to deploy. <br>
>> Tag this image once you've built : **docker tag <name_image> <name_repository>:Tag_version** <br>
>> Push this image into your **repository Docker Hub** : **docker push <name_repository>:Tag_version**

> 5. Deploy your conatiner app image into the cluster. For that you can use either directly the terminal command, this one it'not recommanded, either the file **YAML**. <br>

![Capture d’écran 2024-09-02 175234](https://github.com/user-attachments/assets/d6f8a898-b490-4bfb-817a-6e0edf3919db)
![Capture d’écran 2024-09-02 175301](https://github.com/user-attachments/assets/112353a2-2fd9-4b93-b331-2eeb7414391a)

> 6. Make a service your application. Before you do that. Check first the deployment is running. <br>

![Capture d’écran 2024-09-02 175727](https://github.com/user-attachments/assets/f97b26f1-4b12-4acd-bfb1-b32db5df9de6)
![Capture d’écran 2024-09-02 175810](https://github.com/user-attachments/assets/1a363019-86ee-4fc5-98be-e8ee134b3e64)
![Capture d’écran 2024-09-02 180049](https://github.com/user-attachments/assets/38d202fc-056a-4ecb-b8a3-04d01d427231)
![Capture d’écran 2024-09-02 180101](https://github.com/user-attachments/assets/2b426f97-5c3c-4b83-bfff-d8660b092ecd)

> 7. Print the web application <br>

![Capture d’écran 2024-09-02 180356](https://github.com/user-attachments/assets/f0f4c364-859a-4e49-a4af-e57c1aaecd99)
![Capture d’écran 2024-09-02 180049](https://github.com/user-attachments/assets/fde5202d-4533-4728-93fd-81703d7b8bd4)
![Capture d’écran 2024-09-02 180101](https://github.com/user-attachments/assets/56196db8-e410-43a5-a41b-9397dffe4adf)
![Capture d’écran 2024-09-02 180249](https://github.com/user-attachments/assets/7203b1d7-ee24-447a-8bec-aadb9a181827)
![Capture d’écran 2024-09-02 180310](https://github.com/user-attachments/assets/c15a6b00-fd71-4c1e-999a-775ef7fa0c67)

 



