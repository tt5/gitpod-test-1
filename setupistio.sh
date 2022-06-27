#!/bin/sh
curl -L https://istio.io/downloadIstio
export PATH="$PATH:/workspace/gitpod-test-1/istio-1.14.1/bin"
istioctl install --set profile=demo -y
$ export EXTERNAL_IP=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.status.loadBalancer.ingress[0].ip}')