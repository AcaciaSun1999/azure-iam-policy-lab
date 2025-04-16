# ☁️ Cloud IAM Policy Lab on Azure

A hands-on cloud security lab focused on **Identity and Access Management (IAM)** using Microsoft Azure. This project demonstrates how to implement RBAC (Role-Based Access Control) through Portal + CLI, create and manage users, assign roles, and validate access permissions for different user types.

---

## 🚀 Project Objectives

- Set up three Azure AD users with distinct IAM roles
- Assign roles via Portal and Azure CLI
- Deploy and manage resources within a specific Resource Group
- Simulate real-world permission boundaries
- Document and test behavior of Owner, Contributor, and Reader roles

---

## 🛠️ Tools & Technologies

| Tool              | Purpose                                 |
|-------------------|------------------------------------------|
| Azure Portal      | GUI-based IAM and resource management    |
| Azure CLI         | Scripted user creation and role assignment |
| Microsoft Entra ID | Formerly Azure Active Directory (AAD)   |
| Linux VM          | Dev environment for CLI execution        |
| Git & GitHub      | Version control and documentation        |

---

## 👥 Users & Roles

| Username                                 | Role        | Created Using |
|------------------------------------------|-------------|----------------|
| `adminuser@<my-domain>.onmicrosoft.com` | Owner       | Azure Portal   |
| `devuser@<my-domain>.onmicrosoft.com`   | Contributor | Azure CLI      |
| `audituser@<my-domain>.onmicrosoft.com` | Reader      | Azure CLI      |

---


## ✅ Test Summary

See [`results/access-log.md`](./results/access-log.md) for full access test results.

| Role        | Can Read | Can Write | Can Delete | Can Manage IAM |
|-------------|----------|-----------|------------|----------------|
| Owner       | ✅        | ✅         | ✅          | ✅              |
| Contributor | ✅        | ✅         | ✅          | ❌              |
| Reader      | ✅        | ❌         | ❌          | ❌              |
