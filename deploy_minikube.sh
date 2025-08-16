#!/usr/bin/env bash
set -euo pipefail
kubectl apply -f infrastructure/k8s/namespace.yaml
kubectl -n event-portal apply -f infrastructure/k8s/configmap-backend.yaml
kubectl -n event-portal apply -f infrastructure/k8s/deployment-backend.yaml
kubectl -n event-portal apply -f infrastructure/k8s/service-backend.yaml
kubectl -n event-portal apply -f infrastructure/k8s/deployment-frontend.yaml
kubectl -n event-portal apply -f infrastructure/k8s/service-frontend.yaml
kubectl -n event-portal apply -f infrastructure/k8s/ingress.yaml
