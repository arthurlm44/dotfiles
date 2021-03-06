#!/bin/bash

case $1 in
  "up")
    sudo swapoff -a
    sudo sysctl net.bridge.bridge-nf-call-iptables=1
    sudo kubeadm init
    mkdir -p $HOME/.kube
    sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
    sudo chown $USER. $HOME/.kube/config
    kubectl taint nodes --all node-role.kubernetes.io/master-
    kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"
    ;;
  "down")
    rm -rf $HOME/.kube
    sudo kubeadm reset
    ;;
  "helm")
    kubectl create -f helm-rbac.yaml
    helm init --service-account tiller
    ;;
esac
