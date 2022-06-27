#!/bin/sh
kubectl apply -f https://github.com/knative/serving/releases/download/v0.22.0/serving-crds.yaml
kubectl apply -f https://github.com/knative/serving/releases/download/v0.22.0/serving-core.yaml
kubectl label namespace default istio-injection=enabled
kubectl label namespace knative-serving istio-injection=enabled