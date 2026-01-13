# Workloads Playbooks

This folder contains **23 playbooks** for troubleshooting Kubernetes workload resource issues.

## What are Workloads?

Workloads are higher-level resources that manage pods. They include:
- **Deployments**: Manage stateless applications
- **StatefulSets**: Manage stateful applications with stable identities
- **DaemonSets**: Ensure pods run on all (or selected) nodes
- **Jobs**: Run tasks to completion
- **CronJobs**: Run jobs on a schedule
- **HPA (Horizontal Pod Autoscaler)**: Automatically scale pods

## Common Issues Covered

- Deployment scaling problems
- StatefulSet replica mismatches
- DaemonSet scheduling issues
- Job completion failures
- HPA not scaling
- Workload generation mismatches
- Resource request/limit issues

## Playbooks in This Folder

1. `CannotScaleDeploymentBeyondNodeCapacity-workload.md` - Cannot scale beyond node capacity
2. `DaemonSetNotDeployingPodsonAllNodes-daemonset.md` - DaemonSet not deploying on all nodes
3. `DaemonSetPodsNotDeploying-daemonset.md` - DaemonSet pods not deploying
4. `DaemonSetPodsNotRunningonSpecificNode-daemonset.md` - DaemonSet not running on specific node
5. `DeploymentNotScalingProperly-deployment.md` - Deployment not scaling correctly
6. `DeploymentNotUpdating-deployment.md` - Deployment not updating
7. `HPAHorizontalPodAutoscalerNotScaling-workload.md` - HPA not scaling pods
8. `HPANotRespondingtoCustomMetrics-workload.md` - HPA not responding to custom metrics
9. `HPANotRespondingtoMetrics-workload.md` - HPA not responding to metrics
10. `InvalidMemoryCPURequests-workload.md` - Invalid CPU/memory requests
11. `JobFailingToComplete-job.md` - Job failing to complete
12. `KubeDaemonSetMisScheduled-daemonset.md` - DaemonSet pods mis-scheduled
13. `KubeDaemonSetNotScheduled-daemonset.md` - DaemonSet pods not scheduled
14. `KubeDaemonSetRolloutStuck-daemonset.md` - DaemonSet rollout stuck
15. `KubeDeploymentGenerationMismatch-deployment.md` - Deployment generation mismatch
16. `KubeDeploymentReplicasMismatch-deployment.md` - Deployment replica count mismatch
17. `KubeHpaMaxedOut-workload.md` - HPA maxed out at maximum replicas
18. `KubeHpaReplicasMismatch-workload.md` - HPA replica count mismatch
19. `KubeJobCompletion-workload.md` - Job completion issues
20. `KubeJobFailed-workload.md` - Job failed
21. `KubeStatefulSetGenerationMismatch-statefulset.md` - StatefulSet generation mismatch
22. `KubeStatefulSetReplicasMismatch-statefulset.md` - StatefulSet replica mismatch
23. `KubeStatefulSetUpdateNotRolledOut-statefulset.md` - StatefulSet update not rolling out

## Quick Start

If you're experiencing workload issues:

1. **Deployment Problems**: Start with `DeploymentNotScalingProperly-deployment.md` or `DeploymentNotUpdating-deployment.md`
2. **StatefulSet Issues**: See `KubeStatefulSetReplicasMismatch-statefulset.md`
3. **DaemonSet Problems**: Check `DaemonSetPodsNotDeploying-daemonset.md`
4. **HPA Not Working**: See `HPAHorizontalPodAutoscalerNotScaling-workload.md`
5. **Job Failures**: Check `JobFailingToComplete-job.md` or `KubeJobFailed-workload.md`

## Related Categories

- **03-Pods/**: Individual pod issues affecting workloads
- **02-Nodes/**: Node capacity issues affecting scaling
- **09-Resource-Management/**: Resource quota issues
- **10-Monitoring-Autoscaling/**: Metrics and autoscaling issues

## Useful Commands

```bash
# Check deployment status
kubectl get deployments -n <namespace>

# Describe deployment
kubectl describe deployment <deployment-name> -n <namespace>

# Check StatefulSet status
kubectl get statefulsets -n <namespace>

# Check DaemonSet status
kubectl get daemonsets -n <namespace>

# Check HPA status
kubectl get hpa -n <namespace>

# Check job status
kubectl get jobs -n <namespace>

# Check workload events
kubectl get events -n <namespace> --sort-by='.lastTimestamp'
```

## Additional Resources

- [Kubernetes Workloads](https://kubernetes.io/docs/concepts/workloads/)
- [Deployments](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/)
- [StatefulSets](https://kubernetes.io/docs/concepts/workloads/controllers/statefulset/)
- [HPA](https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/)
- [Back to Main K8s Playbooks](../README.md)
