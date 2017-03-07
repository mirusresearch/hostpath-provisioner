#!/usr/bin/env bash
# docker run --rm -it -v "$GOPATH":/gopath -v "$(pwd)":/app -e "GOPATH=/gopath" -w /app golang:1.4.2 sh -c 'CGO_ENABLED=0 go build -a --installsuffix cgo --ldflags="-s" -o hostpath-provisioner'

docker build -t alectroemel/hostpath-provisioner:$0 -t alectroemel/kube-cert-manager:latest .
docker push alectroemel/hostpath-provisioner:$0
docker push alectroemel/hostpath-provisioner:latest