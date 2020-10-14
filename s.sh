#! /bin/bash
git clone https://github.com/Awraad/k8s-sandbox
cd k8s-sandbox

git clone https://github.com/Awraad/project-level3
cd project-level3/tekton

kubectl apply --filename https://storage.googleapis.com/tekton-releases/pipeline/latest/release.yaml

