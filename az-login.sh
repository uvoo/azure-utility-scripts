#!/bin/bash
set -eu
az logout > /dev/null 2>&1 || true
az login --service-principal --username "$ARM_CLIENT_ID" --password "$ARM_CLIENT_SECRET" --tenant "$ARM_TENANT_ID"
az account set --subscription $ARM_SUBSCRIPTION_ID
