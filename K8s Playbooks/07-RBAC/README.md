# RBAC Playbooks

This folder contains **6 playbooks** for troubleshooting Kubernetes RBAC (Role-Based Access Control) and authorization issues.

## What is RBAC?

RBAC (Role-Based Access Control) is Kubernetes' authorization system that controls who can do what in the cluster. Key components:
- **ServiceAccount**: Identity for processes running in pods
- **Role**: Defines permissions within a namespace
- **ClusterRole**: Defines permissions across the entire cluster
- **RoleBinding**: Grants Role permissions to users/groups
- **ClusterRoleBinding**: Grants ClusterRole permissions cluster-wide

## Common Issues Covered

- Permission denied errors
- ServiceAccount issues
- Role binding problems
- Unauthorized access errors
- API server authorization failures

## Playbooks in This Folder

1. `ClusterRoleBindingMissingPermissions-rbac.md` - ClusterRoleBinding missing permissions
2. `ErrorForbiddenwhenRunningkubectlCommands-rbac.md` - Forbidden errors when running kubectl
3. `ErrorUnauthorizedwhenAccessingAPIServer-rbac.md` - Unauthorized when accessing API server
4. `RBACPermissionDeniedError-rbac.md` - RBAC permission denied errors
5. `ServiceAccountNotFound-rbac.md` - ServiceAccount not found
6. `UnauthorizedErrorWhenAccessingKubernetesAPI-rbac.md` - Unauthorized error accessing API

## Quick Start

If you're experiencing RBAC issues:

1. **Permission Denied**: Start with `RBACPermissionDeniedError-rbac.md` or `ErrorForbiddenwhenRunningkubectlCommands-rbac.md`
2. **ServiceAccount Issues**: See `ServiceAccountNotFound-rbac.md`
3. **Unauthorized Errors**: Check `UnauthorizedErrorWhenAccessingKubernetesAPI-rbac.md` or `ErrorUnauthorizedwhenAccessingAPIServer-rbac.md`
4. **Missing Permissions**: See `ClusterRoleBindingMissingPermissions-rbac.md`

## Related Categories

- **01-Control-Plane/**: API server issues that might appear as RBAC problems
- **03-Pods/**: Pod issues related to ServiceAccount problems
- **08-Configuration/**: ConfigMap/Secret access issues (often RBAC-related)

## Useful Commands

```bash
# Check ServiceAccounts
kubectl get serviceaccounts -n <namespace>

# Check Roles
kubectl get roles -n <namespace>

# Check RoleBindings
kubectl get rolebindings -n <namespace>

# Check ClusterRoles
kubectl get clusterroles

# Check ClusterRoleBindings
kubectl get clusterrolebindings

# Check permissions for a ServiceAccount
kubectl auth can-i --list --as=system:serviceaccount:<namespace>:<serviceaccount-name> -n <namespace>

# Describe RoleBinding
kubectl describe rolebinding <rolebinding-name> -n <namespace>
```

## Additional Resources

- [Kubernetes RBAC](https://kubernetes.io/docs/reference/access-authn-authz/rbac/)
- [ServiceAccounts](https://kubernetes.io/docs/concepts/security/service-accounts/)
- [Authorization](https://kubernetes.io/docs/reference/access-authn-authz/authorization/)
- [Back to Main K8s Playbooks](../README.md)
