## Get fargate profile exist 
```
eksctl get fargateprofile --cluster eksctl
```
* Create farget profile
```
eksctl create fargateprofile --cluster <clusterName> --name <profileName> --namespace <nameSpace>
```