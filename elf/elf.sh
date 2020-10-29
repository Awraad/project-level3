#!/bin/bash
#
apply -f elf.namespace.yaml
helm repo add elastic https://helm.elastic.co
helm repo add fluent https://fluent.github.io/helm-charts
helm repo update
helm install elasticsearch elastic/elasticsearch --version=7.9.0 --namespace=elf
helm install fluent-bit fluent/fluent-bit --namespace=elf
helm install kibana elastic/kibana --version=7.9.0 --namespace=elf --set service.type=NodePort
kubectl run random-logger --image=chentex/random-logger -n elf
kubectl apply -f ingress.yaml -n elf
