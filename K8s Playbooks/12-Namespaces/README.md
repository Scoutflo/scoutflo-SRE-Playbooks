# Namespaces Playbooks

This folder contains **2 playbooks** for troubleshooting Kubernetes namespace management issues.

## What are Namespaces?

Namespaces are a way to divide cluster resources between multiple users or teams. They provide:
- Resource isolation
- Access control boundaries
- Resource quotas per namespace
- Organization of resources

## Common Issues Covered

- Namespace deletion stuck
- Namespace cannot be deleted
- Namespace management problems

## Playbooks in This Folder

1. `CannotDeleteNamespace-namespace.md` - Cannot delete namespace
2. `NamespaceDeletionStuck-namespace.md` - Namespace deletion stuck

## Quick Start

If you're experiencing namespace issues:

1. **Deletion Problems**: Start with `CannotDeleteNamespace-namespace.md` or `NamespaceDeletionStuck-namespace.md`

## Related Categories

- **09-Resource-Management/**: Resource quota issues in namespaces
- **07-RBAC/**: RBAC issues related to namespaces
- **03-Pods/**: Pod issues within namespaces

## Useful Commands

```bash
# List namespaces
kubectl get namespaces

# Describe namespace
kubectl describe namespace <namespace>

# Check namespace status
kubectl get namespace <namespace> -o yaml

# Check resources in namespace
kubectl get all -n <namespace>

# Check finalizers blocking deletion
kubectl get namespace <namespace> -o jsonpath='{.metadata.finalizers}'
```

## Additional Resources

- [Kubernetes Namespaces](https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/)
- [Back to Main K8s Playbooks](../README.md)
