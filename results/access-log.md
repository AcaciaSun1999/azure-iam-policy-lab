# 🔐 IAM Access Test Log

This document records access behavior test results for three users (AdminUser, DevUser, and AuditUser) within the Azure Portal environment.

---

## 👤 AdminUser (`adminuser@sunxiaofei1231outlook.onmicrosoft.com`)
> ✅ Assigned Role: **Owner**

| Action | Expected | Actual | Notes |
|--------|----------|--------|-------|
| View resource group | ✅ Allowed | ✅ Success | Can access and view IAM-Lab-RG |
| Create storage account | ✅ Allowed | ✅ Success | Able to configure and create |
| Delete storage account | ✅ Allowed | ✅ Success | Successfully deleted |
| Assign roles to users | ✅ Allowed | ✅ Success | Full access to IAM (Access Control) |
| Access IAM panel | ✅ Allowed | ✅ Success | Full control granted |

---

## 👤 DevUser (`devuser@sunxiaofei1231outlook.onmicrosoft.com`)
> ✅ Assigned Role: **Contributor**

| Action | Expected | Actual | Notes |
|--------|----------|--------|-------|
| View resource group | ✅ Allowed | ✅ Success | Can view IAM-Lab-RG |
| Create storage account | ✅ Allowed | ✅ Success | Successfully created |
| Delete storage account | ❌ Not allowed (initial assumption) | ✅ Success | Contributor includes delete permissions by default |
| Assign roles | ❌ Not allowed | ❌ Denied | No access to IAM panel or role assignment |

📌 **Note**: Although often assumed otherwise, the Contributor role includes delete permissions by default.

---

## 👤 AuditUser (`audituser@sunxiaofei1231outlook.onmicrosoft.com`)
> ✅ Assigned Role: **Reader**

| Action | Expected | Actual | Notes |
|--------|----------|--------|-------|
| View resource group | ✅ Allowed | ✅ Success | Read-only access to resource group |
| View resource details | ✅ Allowed | ✅ Success | Can inspect configurations |
| Create resources | ❌ Not allowed | ❌ Denied | Create button disabled or access denied |
| Delete resources | ❌ Not allowed | ❌ Denied | Permission denied |
| Assign roles | ❌ Not allowed | ❌ Denied | No access to IAM |

---

## 🧠 Summary

| User | Role | Read | Write | Delete | IAM Access |
|------|------|------|-------|--------|------------|
| AdminUser | Owner | ✅ | ✅ | ✅ | ✅ |
| DevUser | Contributor | ✅ | ✅ | ✅ | ❌ |
| AuditUser | Reader | ✅ | ❌ | ❌ | ❌ |

---
