## Create cluster using eksctl command
```
eksctl create cluster --name=uat-ekscluster-app \
                      --region=ap-southeast-1 \
                      --zones=ap-southeast-1a,ap-southeast-1b \
                      --without-nodegroup 
```
To access to the cluster
```
eksctl get cluster
```
## Config kubectl to access cluster
* IAM authentication for kubernetes use the credential same with the one when run the following commands:
```
aws sts get-caller-identity
```
* Use AWS CLI update-kubeconfig to create or update kubeconfig for your cluster
```
aws eks --region ap-southeast-1 update-kubeconfig --name cluster-101
```
* To test the configuration
```
kubectl get service
```
### Create node group for eks
Run the following command to crate node groups in kubernetes
```
eksctl create nodegroup --cluster=<clusterName> --name=<nodeGroupName>
```
Create node groups using config file
```
eksctl create nodegroup --config-file=<path>
```
To delete node group, this command will drain pod before the instances are deleted
```
eksctl delete nodegroup --cluster=<clusterName> --name=<nodeGroupName>
```
To skip eviction rules during the drain process
```
eksctl delete nodegroup --cluster=<clusterName> --name=<nodeGroupName> --disable-eviction
```
To allow drain nodegroup without deletion
```
eksctl drain nodegroup --cluster=<clusterName> --name=<nodeGroupName>
```
