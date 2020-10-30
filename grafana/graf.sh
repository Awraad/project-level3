#!/bin/bash
helm repo add stable https://kubernetes-charts.storage.googleapis.com
helm repo update
kubectl create namespace monitor
helm install prometheus-operator stable/prometheus-operator --namespace monitor --set grafana.service.type=NodePort
kubectl get svc -n monitor | grep prometheus-operator-grafana
