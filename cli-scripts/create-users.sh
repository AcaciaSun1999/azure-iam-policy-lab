#!/bin/bash

domain="sunxiaofei1231outlook.onmicrosoft.com"

# create DevUser
az ad user create \
  --display-name "DevUser" \
  --user-principal-name devuser@$domain \
  --password "Dev@1234!" \

# create AuditUser
az ad user create \
  --display-name "AuditUser" \
  --user-principal-name audituser@$domain \
  --password "Audit@1234!" \

echo "✅ DevUser and AuditUser created."
