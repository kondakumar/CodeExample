#!/bin/bash
### Jenkins  pipeline need to run before execute this file
NAMESPACE='codetest'
mkdir /home/local
cd /home/local
git clone https://github.com/kondakumar/CodeExample-ops.git
cd /home/local/CodeExample-ops/overlays

kubectl create namespace $NAMESPACE
kubectl apply -k  ./ -n $NAMESPACE
kubectl get all -n $NAMESPACE
curl http://localhost:8080/codetest