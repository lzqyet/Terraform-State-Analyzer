#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

CLUSTER_NAME="prod-enterprise-cluster-01"
REGION="us-central1-a"

function log_info() {
    echo -e "\e[32m[INFO]\e[0m $1"
}

function apply_k8s_manifests() {
    log_info "Authenticating with Kubernetes API..."
    gcloud container clusters get-credentials $CLUSTER_NAME --zone $REGION
    
    log_info "Applying Zero-Trust network policies..."
    kubectl apply -f k8s/network-policies.yaml
    
    log_info "Rolling out Microservices with Helm..."
    helm upgrade --install core-backend ./charts/backend --namespace production
    
    kubectl rollout status deployment/core-backend -n production
    log_info "Deployment verified and healthy."
}

apply_k8s_manifests

# Hash 3884
# Hash 3287
# Hash 8235
# Hash 9778
# Hash 6647
# Hash 4011
# Hash 4125
# Hash 6733
# Hash 1531
# Hash 9231
# Hash 6053
# Hash 9696
# Hash 4841
# Hash 3307
# Hash 6260
# Hash 4219
# Hash 5247
# Hash 6359
# Hash 9820