# Nodes Playbooks

This folder contains **12 playbooks** for troubleshooting Kubernetes node-related issues.

## What are Nodes?

Nodes are worker machines in Kubernetes that run your pods. Each node contains:
- **kubelet**: Agent that communicates with the control plane
- **kube-proxy**: Network proxy maintaining network rules
- **Container Runtime**: Software that runs containers (Docker, containerd, etc.)

## Common Issues Covered

- Node not ready
- Kubelet failures
- Node unreachable
- Resource pressure (CPU, memory, disk)
- Certificate rotation issues
- Node joining cluster problems
- Too many pods on a node

## Playbooks in This Folder

1. `KubeletCertificateRotationFailing-node.md` - Kubelet certificate rotation failing
2. `KubeletDown-node.md` - Kubelet service down
3. `KubeletPlegDurationHigh-node.md` - Kubelet taking too long to check pod status
4. `KubeletPodStartUpLatencyHigh-node.md` - Pods taking too long to start
5. `KubeletServiceNotRunning-node.md` - Kubelet service not running
6. `KubeletTooManyPods-node.md` - Node has too many pods
7. `KubeNodeNotReady-node.md` - Node not in ready state
8. `KubeNodeReadinessFlapping-node.md` - Node readiness state changing frequently
9. `KubeNodeUnreachable-node.md` - Node unreachable from control plane
10. `NodeCannotJoinCluster-node.md` - Node cannot join the cluster
11. `NodeDiskPressure-storage.md` - Node running out of disk space
12. `NodeNotReady-node.md` - Node not ready (general)

## Quick Start

If you're experiencing node issues:

1. **Node Not Ready**: Start with `KubeNodeNotReady-node.md` or `NodeNotReady-node.md`
2. **Kubelet Problems**: See `KubeletDown-node.md` or `KubeletServiceNotRunning-node.md`
3. **Resource Pressure**: Check `NodeDiskPressure-storage.md` or `KubeletTooManyPods-node.md`
4. **Connection Issues**: See `KubeNodeUnreachable-node.md` or `NodeCannotJoinCluster-node.md`

## Related Categories

- **03-Pods/**: Pod scheduling issues often related to node problems
- **09-Resource-Management/**: Resource quota and capacity issues
- **01-Control-Plane/**: Control plane issues affecting node communication

## Useful Commands

```bash
# Check node status
kubectl get nodes

# Get detailed node information
kubectl describe node <node-name>

# Check node conditions
kubectl get nodes -o wide

# Check kubelet status
systemctl status kubelet

# Check node resources
kubectl top nodes

# Check pods on a node
kubectl get pods --all-namespaces --field-selector spec.nodeName=<node-name>
```

## Additional Resources

- [Kubernetes Nodes](https://kubernetes.io/docs/concepts/architecture/nodes/)
- [Node Troubleshooting](https://kubernetes.io/docs/tasks/debug/)
- [Back to Main K8s Playbooks](../README.md)
