## Taints
```
kubectl taint nodes node-name key=value:taint-effect
kubectl taint nodes node1 app=blue:NoSchedule

```
## To remove taint added by the command above, run:
```
kubectl taint nodes <Node name> key=value:NoSchedule-
```