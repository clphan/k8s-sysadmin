# Network policy 
Let talk about the three tier web application, where we have WEB, API, DB
By default, the pod inside cluster can communicate with each other.
To allow only ingress traffic from specific source (in this case the source can be pods name, ip)
=> we can use network policy

During config network policy we can use Label and podSelector and matchLabels