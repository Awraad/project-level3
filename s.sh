#! /bin/bash

git clone https://github.com/Awraad/k8s-sandbox
cd k8s-sandbox
make up

kubectl apply --filename https://storage.googleapis.com/tekton-releases/pipeline/latest/release.yaml
