# Control Plane Playbooks

This folder contains **18 playbooks** for troubleshooting Kubernetes control plane component issues.

## What is the Control Plane?

The control plane is the brain of your Kubernetes cluster. It manages the cluster's state, schedules pods, and coordinates all cluster activities. Key components include:

- **API Server**: The front-end for the Kubernetes control plane
- **Scheduler**: Assigns pods to nodes
- **Controller Manager**: Runs controller processes
- **etcd**: Consistent and highly-available key-value store

## Common Issues Covered

- API Server high latency or downtime
- Scheduler failures
- Controller Manager problems
- Certificate expiration
- Version mismatches
- Upgrade failures
- Client connection errors

## Playbooks in This Folder

1. `APIServerHighLatency-control-plane.md` - API Server responding slowly
2. `CannotAccessAPI-control-plane.md` - Cannot access Kubernetes API
3. `CertificateExpired-control-plane.md` - Control plane certificates expired
4. `ConnectionRefused-control-plane.md` - Connection refused to control plane
5. `ContextDeadlineExceeded-control-plane.md` - API requests timing out
6. `ControlPlaneComponentsNotStarting-control-plane.md` - Control plane components failing to start
7. `KubeAggregatedAPIDown-control-plane.md` - Aggregated API server down
8. `KubeAggregatedAPIErrors-control-plane.md` - Aggregated API server errors
9. `KubeAPIDown-control-plane.md` - Kubernetes API server down
10. `KubeAPIErrorBudgetBurn-control-plane.md` - API error rate too high
11. `KubeAPITerminatedRequests-control-plane.md` - API requests being terminated
12. `KubeClientCertificateExpiration-control-plane.md` - Client certificates expiring
13. `KubeClientErrors-control-plane.md` - Client connection errors
14. `KubeControllerManagerDown-control-plane.md` - Controller Manager down
15. `KubeSchedulerDown-control-plane.md` - Scheduler down
16. `KubeVersionMismatch-control-plane.md` - Component version mismatches
17. `Timeout-control-plane.md` - Control plane timeouts
18. `UpgradeFails-control-plane.md` - Cluster upgrade failures

## Quick Start

If you're experiencing control plane issues:

1. **Check API Server**: Start with `KubeAPIDown-control-plane.md` or `APIServerHighLatency-control-plane.md`
2. **Certificate Issues**: See `CertificateExpired-control-plane.md`
3. **Component Failures**: Check `KubeSchedulerDown-control-plane.md` or `KubeControllerManagerDown-control-plane.md`
4. **Upgrade Problems**: See `UpgradeFails-control-plane.md`

## Related Categories

- **02-Nodes/**: Node-level issues that might affect control plane communication
- **07-RBAC/**: Authorization issues that might appear as API problems

## Useful Commands

```bash
# Check API Server status
kubectl get componentstatuses

# Check control plane pods
kubectl get pods -n kube-system

# Check API Server logs
kubectl logs -n kube-system kube-apiserver-<node-name>

# Check etcd status
kubectl get pods -n kube-system | grep etcd
```

## Additional Resources

- [Kubernetes Control Plane Components](https://kubernetes.io/docs/concepts/overview/components/)
- [API Server Troubleshooting](https://kubernetes.io/docs/tasks/debug/)
- [Back to Main K8s Playbooks](../README.md)
