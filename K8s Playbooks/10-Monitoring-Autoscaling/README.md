# Monitoring & Autoscaling Playbooks

This folder contains **3 playbooks** for troubleshooting Kubernetes monitoring and autoscaling issues.

## What is Monitoring & Autoscaling?

- **Metrics Server**: Collects resource metrics (CPU, memory) from nodes and pods
- **HPA (Horizontal Pod Autoscaler)**: Automatically scales pods based on metrics
- **Cluster Autoscaler**: Automatically adjusts cluster size based on demand
- **Monitoring**: Observability tools like Prometheus, Grafana

## Common Issues Covered

- Metrics Server not providing data
- Cluster Autoscaler not adding nodes
- Autoscaler scaling too slowly
- HPA not responding to metrics

## Playbooks in This Folder

1. `AutoscalerNotAddingNodes-autoscaler.md` - Cluster Autoscaler not adding nodes
2. `AutoscalerScalingTooSlowly-autoscaler.md` - Autoscaler scaling too slowly
3. `MetricsServerShowsNoData-monitoring.md` - Metrics Server showing no data

## Quick Start

If you're experiencing monitoring/autoscaling issues:

1. **No Metrics**: Start with `MetricsServerShowsNoData-monitoring.md`
2. **Autoscaler Not Working**: See `AutoscalerNotAddingNodes-autoscaler.md`
3. **Slow Scaling**: Check `AutoscalerScalingTooSlowly-autoscaler.md`

## Related Categories

- **04-Workloads/**: HPA and workload scaling issues
- **09-Resource-Management/**: Resource quota and capacity issues
- **02-Nodes/**: Node capacity issues affecting autoscaling

## Useful Commands

```bash
# Check Metrics Server
kubectl get pods -n kube-system | grep metrics-server

# Check HPA status
kubectl get hpa -n <namespace>

# Describe HPA
kubectl describe hpa <hpa-name> -n <namespace>

# Check resource metrics
kubectl top nodes
kubectl top pods -n <namespace>

# Check Cluster Autoscaler
kubectl get pods -n kube-system | grep cluster-autoscaler

# Check autoscaler logs
kubectl logs -n kube-system <cluster-autoscaler-pod-name>
```

## Additional Resources

- [Metrics Server](https://github.com/kubernetes-sigs/metrics-server)
- [Horizontal Pod Autoscaler](https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/)
- [Cluster Autoscaler](https://github.com/kubernetes/autoscaler/tree/master/cluster-autoscaler)
- [Back to Main K8s Playbooks](../README.md)
