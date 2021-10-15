# To allow update OS version
kubectl drain <Node name>
# To allow non-scheduling 
kubectl cordon <Node name>
# To allow uncordon
kubectl uncordon <Node name>

Version 1.10 1.11 1.12
=> api-server: 1.11
=> scheduler + controler: 1.10 1.11
=> kube proxy + kubelet: 1.10 1.11
=> kubectl: 1.11 1.12