## Create new namespace using command
``` 
kubectl create namespace <Namespace>
```
## Make dev namespace as a default namespace
```
kubectl config set-context $(kubectl config current-context) --namespace=dev
```
## View pods from a specific namespace
```
kubectl get pods --namespace=dev
```
## View pods from all namespace
```
kubectl get pods --all-namespaces
```