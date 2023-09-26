#!/bin/bash
### Jenkins  pipeline need to run before execute this file
NAMESPACE='codetest'
export KUBECONFIG=kubeconfig;
mkdir /home/local
cd /home/local
git clone https://github.com/kondakumar/CodeExample-ops.git
cd /home/local/CodeExample-ops/overlays

sleep 60
NS=$(kubectl get namespace $NAMESPACE_NAME --ignore-not-found);
if [[ "$NS" ]]; then
  echo "Skipping creation of namespace $NAMESPACE_NAME - already exists";
else
  echo "Creating namespace $NAMESPACE_NAME";
  kubectl create namespace $NAMESPACE_NAME;
fi;

sleep 30
kubectl apply -k  ./ -n $NAMESPACE
sleep 30
curl http://localhost:8080/codetest