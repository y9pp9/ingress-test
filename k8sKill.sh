kubectl proxy &
NAMESPACE=game
kubectl get ns ${NAMESPACE} -ojson | grep -v '"kubernetes"$' | curl -k -H "Content-Type: application/json" -XPUT --data-binary @- localhost:8001/api/v1/namespaces/$NAMESPACE/finalize
pkill kubectl

