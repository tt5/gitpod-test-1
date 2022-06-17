#!/bin/sh
civo apikey save test $CIVO_API_KEY
civo apikey current test
civo kubernetes create gitpod-test2 --size "g4s.kube.medium" --nodes 2 --wait --save --merge --region FRA1