#!/bin/bash

domain="sunxiaofei1231outlook.onmicrosoft.com"
resourceGroup="IAM-Lab-RG"
scope=$(az group show --name $resourceGroup --query id --output tsv)

# assign Contributor to DevUser
az role assignment create \
  --assignee devuser@sunxiaofei1231outlook.onmicrosoft.com \
  --role "Contributor" \
  --scope $scope

# assign Reader to AuditUser
az role assignment create \
  --assignee audituser@sunxiaofei1231outlook.onmicrosoft.com \
  --role "Reader" \
  --scope $scope

echo "✅ assigned DevUser → Contributor, AuditUser → Reader"
