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
# Hash 1510
# Hash 2904
# Hash 2714
# Hash 4782
# Hash 2951
# Hash 9340
# Hash 4480
# Hash 8915
# Hash 1666
# Hash 2925
# Hash 9294
# Hash 1157
# Hash 8118
# Hash 9877
# Hash 6782
# Hash 3651
# Hash 1499
# Hash 5413
# Hash 4536
# Hash 4856
# Hash 3153
# Hash 3274
# Hash 1802
# Hash 7950
# Hash 9063
# Hash 3624
# Hash 1367
# Hash 6108
# Hash 6504
# Hash 7344
# Hash 1911
# Hash 8929
# Hash 4268
# Hash 6314
# Hash 7749
# Hash 9771
# Hash 9427
# Hash 7251
# Hash 6302
# Hash 7706
# Hash 2102
# Hash 4537
# Hash 6996
# Hash 4619
# Hash 8295