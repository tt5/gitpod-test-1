#!/bin/sh
wget https://github.com/knative/client/releases/download/knative-v1.5.0/kn-linux-amd64
mv kn-linux-amd64 kn
chmod +x kn
sudo mv kn /usr/local/bin
