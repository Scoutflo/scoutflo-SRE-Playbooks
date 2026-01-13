# Installation & Setup Playbooks

This folder contains **1 playbook** for troubleshooting Kubernetes installation and setup issues.

## What is Installation & Setup?

This category covers issues related to:
- Kubernetes cluster installation
- Helm chart installations
- Add-on installations
- Setup and configuration problems

## Common Issues Covered

- Helm release stuck
- Installation failures
- Setup configuration issues

## Playbooks in This Folder

1. `HelmReleaseStuckInPending-install.md` - Helm release stuck in pending state

## Quick Start

If you're experiencing installation issues:

1. **Helm Issues**: Start with `HelmReleaseStuckInPending-install.md`

## Related Categories

- **01-Control-Plane/**: Control plane issues affecting installations
- **03-Pods/**: Pod issues related to installed applications
- **04-Workloads/**: Workload issues from installations

## Useful Commands

```bash
# Check Helm releases
helm list -n <namespace>

# Check Helm release status
helm status <release-name> -n <namespace>

# Check Helm release history
helm history <release-name> -n <namespace>

# Check installed resources
kubectl get all -n <namespace>

# Check Helm pods
kubectl get pods -n <namespace> | grep <release-name>
```

## Additional Resources

- [Helm Documentation](https://helm.sh/docs/)
- [Kubernetes Installation](https://kubernetes.io/docs/setup/)
- [Back to Main K8s Playbooks](../README.md)
