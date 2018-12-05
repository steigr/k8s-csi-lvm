FROM golang
WORKDIR /go/src/github.com/steigr/k8s-csi-lvm
COPY . .
RUN  GO111MODULE=on CGO_ENABLED=0 go get -v github.com/steigr/k8s-csi-lvm/cmd/k8s-csi-lvm
