#!/bin/bash

# Obtener nombres de CRDs que terminan con .open-cluster-management
CRDS=$(oc get crd -o jsonpath='{.items[?(@.spec.group=="open-cluster-management.io")].metadata.name}')

# Listar los recursos de cada CRD
for crd in $CRDS; do
    echo "Listando recursos para CRD $crd"
    oc get $crd
    echo "-----------------------------"
done


=================================================================================================================================================

#!/bin/bash

# Obtener nombres de secrets que terminan con .open-cluster-management
secrets=$(oc get secrets -o jsonpath='{.items[?(@.spec.group=="open-cluster-management.io")].metadata.name}')

# Listar los recursos de cada secret
for crd in $secrets; do
    echo "Listando recursos para secret $secrets"
    oc get $secrets
    echo "-----------------------------"
done

=================================================================================================================================================

#!/bin/bash

# Obtener nombres de Configmaps que terminan con .open-cluster-management
configmaps=$(oc get configmaps -o jsonpath='{.items[?(@.spec.group=="open-cluster-management.io")].metadata.name}')

# Listar los recursos de cada configmap
for crd in $configmaps; do
    echo "Listando recursos para configmap $configmaps"
    oc get $configmaps
    echo "-----------------------------"
done
