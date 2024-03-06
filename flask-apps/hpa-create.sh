#!/bin/bash
if kubectl -n kube-system get deployment metrics-server &> /dev/null; then
    echo "Metrics Server is already deployed."
else
    echo "Metrics Server deployment not found. Installing Metrics Server..."
    kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/download/v0.5.0/components.yaml
    if kubectl -n kube-system get deployment metrics-server &> /dev/null; then
        echo "Metrics Server installed successfully."
    else
        echo "Error: Metrics Server installation failed."
        exit 1
    fi
fi
