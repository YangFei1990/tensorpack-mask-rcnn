#!/usr/bin/env bash

# Need to make sure you are on the latest version of eksctl for fsx support. Tested on eksctl v0.1.29

eksctl create cluster -f config.yaml --auto-kubeconfig

export KUBECONFIG=/Users/armanmcq/.kube/eksctl/clusters/tensorpack-mask-rcnn
# aws eks --region $AWS_REGION update-kubeconfig --name $EKS_CLUSTER

kubectl create -f https://raw.githubusercontent.com/NVIDIA/k8s-device-plugin/1.0.0-beta/nvidia-device-plugin.yml


# eksctl scale nodegroup --cluster=tensorpack-mask-rcnn --nodes=12 --name=ng-1