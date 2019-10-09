#!/bin/bash

kubectl delete replicationcontroller nginx
kubectl create -f nginx.yaml
