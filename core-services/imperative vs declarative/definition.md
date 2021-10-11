# Imperative
## Create Objects
```
kubectl run nginx --image=nginx
kubectl create deployment nginx --image=nginx 
kubectl expose deployment nginx --port 80
```
## Update Objects
```
kubectl edit deployment nginx 
kubectl scale deployment nginx --replicas=5
kubectl set image deployment nginx nginx=nginx:1.18
```
## Create Objects with YAML file
```
kubectl create -f nginx.yaml
kubectl replace -f nginx.yaml
kubectl delete -f nginx.yaml
```
# Declarative
```
kubectl apply -f nginx.yaml
```