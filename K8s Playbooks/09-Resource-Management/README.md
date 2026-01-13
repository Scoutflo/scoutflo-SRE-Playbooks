# Resource Management Playbooks

This folder contains **8 playbooks** for troubleshooting Kubernetes resource quota and capacity issues.

## What is Resource Management?

Kubernetes resource management controls how compute resources (CPU, memory) are allocated and limited:
- **Resource Quotas**: Limit resource consumption per namespace
- **Resource Requests**: Minimum resources a pod needs
- **Resource Limits**: Maximum resources a pod can use
- **Overcommit**: Allowing more requests than available resources

## Common Issues Covered

- Resource quota exceeded
- CPU and memory overcommit
- Quota exhaustion
- Compute resource constraints
- High CPU/memory usage

## Playbooks in This Folder

1. `HighCPUUsage-compute.md` - High CPU usage
2. `KubeCPUOvercommit-compute.md` - CPU overcommit issues
3. `KubeCPUQuotaOvercommit-namespace.md` - CPU quota overcommit
4. `KubeMemoryOvercommit-compute.md` - Memory overcommit issues
5. `KubeMemoryQuotaOvercommit-namespace.md` - Memory quota overcommit
6. `KubeQuotaAlmostFull-namespace.md` - Resource quota almost full
7. `KubeQuotaExceeded-namespace.md` - Resource quota exceeded
8. `KubeQuotaFullyUsed-namespace.md` - Resource quota fully used

## Quick Start

If you're experiencing resource management issues:

1. **Quota Exceeded**: Start with `KubeQuotaExceeded-namespace.md` or `KubeQuotaFullyUsed-namespace.md`
2. **Overcommit Issues**: See `KubeCPUOvercommit-compute.md` or `KubeMemoryOvercommit-compute.md`
3. **High Usage**: Check `HighCPUUsage-compute.md`
4. **Quota Warnings**: See `KubeQuotaAlmostFull-namespace.md`

## Related Categories

- **03-Pods/**: Pod resource issues
- **02-Nodes/**: Node capacity issues
- **04-Workloads/**: Workload scaling issues related to resources
- **10-Monitoring-Autoscaling/**: Metrics and autoscaling

## Useful Commands

```bash
# Check resource quotas
kubectl get resourcequota -n <namespace>

# Describe resource quota
kubectl describe resourcequota <quota-name> -n <namespace>

# Check resource usage
kubectl top pods -n <namespace>
kubectl top nodes

# Check pod resource requests/limits
kubectl describe pod <pod-name> -n <namespace> | grep -A 5 "Limits:"

# Check namespace resource usage
kubectl describe namespace <namespace>

# Check limit ranges
kubectl get limitrange -n <namespace>
```

## Additional Resources

- [Kubernetes Resource Quotas](https://kubernetes.io/docs/concepts/policy/resource-quotas/)
- [Resource Management](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/)
- [Limit Ranges](https://kubernetes.io/docs/concepts/policy/limit-range/)
- [Back to Main K8s Playbooks](../README.md)
