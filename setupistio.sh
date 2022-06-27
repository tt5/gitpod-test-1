#!/bin/sh
curl -L https://istio.io/downloadIstio | sh -
export PATH="$PATH:/workspace/gitpod-test-1/istio-1.14.1/bin"
istioctl install --set profile=demo -y
kubectl label namespace default istio-injection=enabled
kubectl apply -f samples/bookinfo/bookinfo.yaml