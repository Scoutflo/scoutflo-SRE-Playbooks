# Configuration Playbooks

This folder contains **6 playbooks** for troubleshooting Kubernetes ConfigMap and Secret access issues.

## What are ConfigMaps and Secrets?

- **ConfigMap**: Stores non-confidential configuration data in key-value pairs. Pods can consume ConfigMaps as environment variables, configuration files, or command-line arguments.
- **Secret**: Stores sensitive information like passwords, tokens, or keys. Similar to ConfigMap but for sensitive data.

## Common Issues Covered

- ConfigMap not found or not accessible
- ConfigMap too large
- Secret access problems
- Pods cannot access ConfigMaps or Secrets
- Configuration not being applied

## Playbooks in This Folder

1. `ConfigMapNotFound-configmap.md` - ConfigMap not found
2. `ConfigMapTooLarge-configmap.md` - ConfigMap exceeds size limit
3. `PodCannotAccessConfigMap-configmap.md` - Pod cannot access ConfigMap
4. `PodCannotAccessSecret-secret.md` - Pod cannot access Secret
5. `PodsCannotPullSecrets-secret.md` - Pods cannot pull Secrets
6. `SecretsNotAccessible-secret.md` - Secrets not accessible

## Quick Start

If you're experiencing configuration issues:

1. **ConfigMap Not Found**: Start with `ConfigMapNotFound-configmap.md`
2. **ConfigMap Access**: See `PodCannotAccessConfigMap-configmap.md`
3. **Secret Access**: Check `PodCannotAccessSecret-secret.md` or `SecretsNotAccessible-secret.md`
4. **Size Issues**: See `ConfigMapTooLarge-configmap.md`

## Related Categories

- **03-Pods/**: Pod issues related to ConfigMap/Secret access
- **07-RBAC/**: Permission issues affecting ConfigMap/Secret access
- **04-Workloads/**: Workload-level configuration issues

## Useful Commands

```bash
# Check ConfigMaps
kubectl get configmaps -n <namespace>

# Describe ConfigMap
kubectl describe configmap <configmap-name> -n <namespace>

# Check Secrets
kubectl get secrets -n <namespace>

# Describe Secret
kubectl describe secret <secret-name> -n <namespace>

# View ConfigMap data
kubectl get configmap <configmap-name> -n <namespace> -o yaml

# Check pod environment variables from ConfigMap
kubectl describe pod <pod-name> -n <namespace> | grep -A 20 "Environment:"

# Check pod volume mounts for ConfigMap/Secret
kubectl describe pod <pod-name> -n <namespace> | grep -A 10 "Mounts:"
```

## Additional Resources

- [Kubernetes ConfigMaps](https://kubernetes.io/docs/concepts/configuration/configmap/)
- [Kubernetes Secrets](https://kubernetes.io/docs/concepts/configuration/secret/)
- [Back to Main K8s Playbooks](../README.md)
