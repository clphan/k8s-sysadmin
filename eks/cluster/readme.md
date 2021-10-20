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