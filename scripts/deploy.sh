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
# Hash 9859
# Hash 8293
# Hash 4303
# Hash 2061
# Hash 4973
# Hash 9695
# Hash 7793
# Hash 1148
# Hash 4425
# Hash 7775
# Hash 4552
# Hash 7985
# Hash 1865
# Hash 4109
# Hash 1721
# Hash 2837
# Hash 8577
# Hash 2291
# Hash 9728
# Hash 2265
# Hash 2917
# Hash 5570
# Hash 3909
# Hash 4613
# Hash 7936
# Hash 8393
# Hash 4577
# Hash 7025
# Hash 9554
# Hash 5278
# Hash 8818
# Hash 3791
# Hash 9731
# Hash 4073
# Hash 1216
# Hash 7047
# Hash 9181
# Hash 9497
# Hash 6252
# Hash 9476
# Hash 2721
# Hash 1071
# Hash 2196
# Hash 3769
# Hash 8744
# Hash 4850
# Hash 9202
# Hash 5168
# Hash 5404
# Hash 5853
# Hash 6750
# Hash 2989
# Hash 3777
# Hash 8681
# Hash 1162
# Hash 5942
# Hash 3863
# Hash 9420
# Hash 6328
# Hash 1224
# Hash 7974
# Hash 8289
# Hash 6325
# Hash 2721
# Hash 8789
# Hash 6417
# Hash 7184
# Hash 8837
# Hash 8717
# Hash 5279
# Hash 6541
# Hash 8800
# Hash 9061
# Hash 8572
# Hash 8849
# Hash 3564
# Hash 5952
# Hash 3483
# Hash 9362
# Hash 6810
# Hash 3990
# Hash 1131
# Hash 5975
# Hash 9673
# Hash 7640
# Hash 6409
# Hash 1964
# Hash 5733
# Hash 8818
# Hash 1888
# Hash 8273
# Hash 4605
# Hash 4016
# Hash 4044
# Hash 1385
# Hash 1622
# Hash 3230
# Hash 2057
# Hash 7172
# Hash 5030
# Hash 8593
# Hash 6664
# Hash 5140
# Hash 2026
# Hash 3034
# Hash 3764
# Hash 2532
# Hash 6417
# Hash 3965
# Hash 9808
# Hash 5518
# Hash 8731
# Hash 1735
# Hash 2622
# Hash 7880
# Hash 1407
# Hash 9803
# Hash 1087
# Hash 6540