# Namespaces

Namespaces are collections / groups of resources within a cluster
You assign all resources upon creation to a namespace, and this can be considred a mini cluster

There is a default namespace.. called namespace, that all resources belong to

`kubectl get ns` -> returns a list of all namespaces
`kubectl create ns test-namespace` Create a new namespace 
`kubectl get pods -n test-namespace` - Gets all pods from the specific namespace
`kubectl delete ns test-namespace` - warning will delete all resources assigned to this namespace