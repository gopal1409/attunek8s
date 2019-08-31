yum update -y
yum clean all
yum update
clear
hostnamectl set-hostname k8smaster
vi /etc/cloud/cloud.cfg
reboot
yum update
vi /etc/hosts
yum install -y yum-utils   device-mapper-persistent-data   lvm2
yum-config-manager     --add-repo     https://download.docker.com/linux/centos/docker-ce.repo
yum install docker-ce docker-ce-cli containerd.io
clear
history
cat <<EOF > /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOF

setenforce 0
sed -i 's/^SELINUX=enforcing$/SELINUX=permissive/' /etc/selinux/config
yum install -y kubelet kubeadm kubectl --disableexcludes=kubernetes
systemctl enable --now kubelet
cat <<EOF >  /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF

sysctl --system
kubeadm init
systemctl enable docker
systemctl start docker
kubeadm init
shutdown -h now
sudo -i
kubeadm init
mkdir -p $HOME/.kube
  sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
  sudo chown $(id -u):$(id -g) $HOME/.kube/config
ccat /etc/hosts
cat /etc/hosts
vi /etc/hosts
cat /etc/hosts
kubectl get nodes
kubectl get pods --all-namespaces
kubectl get nodes
kubectl get pods --all-namespaces
ip a
ping 127.0.0.1
$ kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"
kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"
kubectl get nodes
kubectl get pods --all-namespaces
kubectl get nodes
docker container ls
ls
cd k8smaster/
mkdir dock
cd dock/
vi server.js
vi Dockerfile
docker build gopal1409/nodehello .
docker build -t gopal1409/nodehello .
docker images
cat Dockerfile 
docker tag 4754b396b77e gopal1409/nodehello:latest
docker images
docker login
docker push gopal1409/nodehello
docker pull mohanhariharan/node-app
docker images
kubectl get nodes
kubectl get ns
kubectl get pods
kubectl get pod
clear
docker images
docker container run -it mohanhariharan/node-app              latest              a5b2658e81b6        21 minutes ago      908MB
docker container run -it mohanhariharan/node-app  bash
docker container run -p 8080:80 -d node
docker container ls
docker container ls -a
docker container run -it node bash
curl localhost
docker run -p 8080:8080 -d bhupeshkietian/nodewebapp
docker ps -a
curl localhost:8080
exit
kubectl get namespace
mkdir k8smaster
cd k8smaster/
vi dev.yaml
cat dev.yaml 
kubectl apply -f dev.yaml 
kubectl get ns
kubectl describe ns development
vi dev.yaml
kubectl apply -f dev.yaml 
vi dev.yaml
kubectl apply -f dev.yaml 
vi dev.yaml
kubectl get ns
kubectl get ns development
vi prod.json
kubectl apply -f prod.json 
kubectl get ns
kubectl describe ns production
kubectl delete -f prod.json 
