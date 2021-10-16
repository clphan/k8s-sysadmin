# Kubernetes Components
* Worker nodes: Host Pods (components of application workload)
* Control plane: manages worker nodes and Pods in the cluster
  * In production: control plane run cross multiple computers
  * A cluster can run multiples nodes (HA and fault tolerance)

## Control plane components
### Kube-apiserver 
* Exposes kubernetes API 
* API server is an front end for Kubernetes control plane
* Can scale horizontally
* Can run many instances of kube-apiserver & balance traffic between those instances
### etcd
* HA key-value store (for all cluster data)
* Need to have backup plan for the data in etcd 
* Kube