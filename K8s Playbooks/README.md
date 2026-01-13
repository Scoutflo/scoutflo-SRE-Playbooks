# Kubernetes (K8s) Playbooks

This directory contains **138 Kubernetes incident response playbooks** organized into **12 categorized folders** to help Site Reliability Engineers (SREs) quickly find and diagnose common Kubernetes cluster and workload issues. Each playbook follows a structured format to provide systematic troubleshooting guidance.

## Directory Structure

Playbooks are organized into numbered folders by category for easy navigation:

```
K8s Playbooks/
├── 01-Control-Plane/          (18 playbooks)
├── 02-Nodes/                   (12 playbooks)
├── 03-Pods/                    (31 playbooks)
├── 04-Workloads/               (23 playbooks)
├── 05-Networking/              (19 playbooks)
├── 06-Storage/                 (9 playbooks)
├── 07-RBAC/                    (6 playbooks)
├── 08-Configuration/           (6 playbooks)
├── 09-Resource-Management/      (8 playbooks)
├── 10-Monitoring-Autoscaling/     (3 playbooks)
├── 11-Installation-Setup/       (1 playbook)
└── 12-Namespaces/              (2 playbooks)
```

## Overview

These playbooks cover critical Kubernetes components and scenarios:

- **Control Plane**: API Server, Scheduler, Controller Manager, etcd, certificates
- **Nodes**: Node readiness, kubelet issues, resource constraints
- **Pods**: Scheduling, lifecycle, health checks, resource limits
- **Workloads**: Deployments, StatefulSets, DaemonSets, Jobs, HPA
- **Networking**: Services, Ingress, DNS, Network Policies, kube-proxy
- **Storage**: PersistentVolumes, PersistentVolumeClaims, StorageClasses
- **RBAC**: ServiceAccounts, Roles, RoleBindings, ClusterRoles
- **Configuration**: ConfigMaps and Secrets access issues
- **Resource Management**: Resource Quotas, overcommit, compute resources
- **Monitoring & Autoscaling**: Metrics Server, HPA, Cluster Autoscaler
- **Installation & Setup**: Helm and installation issues
- **Namespaces**: Namespace management and deletion issues

Each playbook provides step-by-step instructions for identifying root causes and resolving issues quickly.

## Playbook Structure

All playbooks in this directory follow a consistent markdown structure:

### 1. **Front Matter** (YAML)
Metadata at the top of each file:
```yaml
---
title: Issue Name - Resource Type
weight: 201
categories:
  - kubernetes
  - resource-type
---
```

### 2. **Title** (H1)
The playbook identifier (e.g., "CrashLoopBackOff-pod")

### 3. **Meaning** (H2)
A comprehensive explanation of what the issue means, including:
- What triggers the issue
- Common symptoms and error messages
- Which Kubernetes component or layer is affected
- Typical root causes

### 4. **Impact** (H2)
Description of the business and technical impact, including:
- Service availability implications
- User-facing effects
- Related alerts (e.g., KubePodCrashLooping)
- Cascading effects on dependent workloads

### 5. **Playbook** (H2)
Numbered, actionable steps to diagnose the issue:
- Each step includes specific Kubernetes resource identifiers (e.g., `<pod-name>`, `<namespace>`)
- Steps reference kubectl commands, resource specifications, and cluster state
- Ordered from most common to more specific diagnostic steps

### 6. **Diagnosis** (H2)
Correlation analysis framework:
- Time-based correlation between events and symptoms
- Comparison of resource changes with failure timestamps
- Analysis patterns to determine if issues are constant or intermittent
- Guidance for extending time windows if initial correlations aren't found
- Alternative evidence sources and gradual issue identification

## Playbook Categories

### 01-Control-Plane/ (18 playbooks)
Control plane component issues: API Server, Scheduler, Controller Manager, etcd, certificates

**Key Topics:**
- API Server issues (high latency, downtime, errors)
- Scheduler failures
- Controller Manager problems
- Certificate expiration
- Version mismatches
- Upgrade failures

**Example Playbooks:**
- `APIServerHighLatency-control-plane.md`
- `KubeAPIDown-control-plane.md`
- `KubeSchedulerDown-control-plane.md`
- `CertificateExpired-control-plane.md`
- `UpgradeFails-control-plane.md`

### 02-Nodes/ (12 playbooks)
Node readiness, kubelet issues, node capacity, node connectivity

**Key Topics:**
- Node not ready
- Kubelet failures
- Node unreachable
- Resource pressure
- Certificate rotation issues
- Node joining cluster issues

**Example Playbooks:**
- `KubeletDown-node.md`
- `KubeNodeNotReady-node.md`
- `NodeCannotJoinCluster-node.md`
- `NodeDiskPressure-storage.md`
- `KubeletTooManyPods-node.md`

### 03-Pods/ (31 playbooks)
Pod lifecycle, scheduling, health checks, pod states, resource issues

**Key Topics:**
- CrashLoopBackOff
- Pending pods
- Pod scheduling failures
- Health check failures
- Resource quota issues
- Termination issues
- Image pull failures
- Pod logs issues

**Example Playbooks:**
- `CrashLoopBackOff-pod.md`
- `PendingPods-pod.md`
- `KubePodCrashLooping-pod.md`
- `PodFailsLivenessProbe-pod.md`
- `PodsStuckinTerminatingState-pod.md`
- `ImagePullBackOff-registry.md`

### 04-Workloads/ (23 playbooks)
Deployments, StatefulSets, DaemonSets, Jobs, HPA scaling issues

**Key Topics:**
- Deployment scaling issues
- StatefulSet replica mismatches
- DaemonSet scheduling problems
- Job completion failures
- HPA scaling issues
- Workload generation mismatches

**Example Playbooks:**
- `DeploymentNotScalingProperly-deployment.md`
- `KubeStatefulSetReplicasMismatch-statefulset.md`
- `DaemonSetPodsNotDeploying-daemonset.md`
- `HPAHorizontalPodAutoscalerNotScaling-workload.md`
- `JobFailingToComplete-job.md`

### 05-Networking/ (19 playbooks)
Services, Ingress, DNS, Network Policies, kube-proxy, external connectivity

**Key Topics:**
- Service connectivity issues
- Ingress configuration problems
- DNS resolution failures
- Network policy blocking
- kube-proxy failures
- External service access

**Example Playbooks:**
- `ServiceNotResolvingDNS-dns.md`
- `IngressNotWorking-ingress.md`
- `CoreDNSPodsCrashLooping-dns.md`
- `NetworkPolicyBlockingTraffic-network.md`
- `KubeProxyDown-network.md`

### 06-Storage/ (9 playbooks)
PersistentVolumes, PVCs, volume mounts, storage classes

**Key Topics:**
- PersistentVolume issues
- PVC pending states
- Volume mount failures
- Storage class problems
- Volume attachment failures

**Example Playbooks:**
- `PVCPendingDueToStorageClassIssues-storage.md`
- `PersistentVolumeStuckinReleasedState-storage.md`
- `VolumeMountPermissionsDenied-storage.md`
- `KubePersistentVolumeFillingUp-storage.md`

### 07-RBAC/ (6 playbooks)
Permissions, ServiceAccounts, Roles, RoleBindings, authorization errors

**Key Topics:**
- Permission denied errors
- ServiceAccount issues
- Role binding problems
- Unauthorized access
- API server authorization

**Example Playbooks:**
- `RBACPermissionDeniedError-rbac.md`
- `ServiceAccountNotFound-rbac.md`
- `ErrorForbiddenwhenRunningkubectlCommands-rbac.md`
- `UnauthorizedErrorWhenAccessingKubernetesAPI-rbac.md`

### 08-Configuration/ (6 playbooks)
ConfigMaps and Secrets access issues

**Key Topics:**
- ConfigMap access and size issues
- Secret access problems
- Pod configuration access failures

**Example Playbooks:**
- `ConfigMapNotFound-configmap.md`
- `ConfigMapTooLarge-configmap.md`
- `SecretsNotAccessible-secret.md`
- `PodCannotAccessSecret-secret.md`

### 09-Resource-Management/ (8 playbooks)
Resource Quotas, ResourceQuotas, overcommit, compute resource issues

**Key Topics:**
- Resource quota issues
- CPU and memory overcommit
- Quota exhaustion
- Compute resource constraints

**Example Playbooks:**
- `KubeQuotaExceeded-namespace.md`
- `KubeCPUOvercommit-compute.md`
- `KubeMemoryQuotaOvercommit-namespace.md`
- `HighCPUUsage-compute.md`

### 10-Monitoring-Autoscaling/ (3 playbooks)
Metrics Server, Cluster Autoscaler

**Key Topics:**
- Metrics Server issues
- Cluster Autoscaler problems
- HPA metric collection

**Example Playbooks:**
- `MetricsServerShowsNoData-monitoring.md`
- `AutoscalerNotAddingNodes-autoscaler.md`
- `AutoscalerScalingTooSlowly-autoscaler.md`

### 11-Installation-Setup/ (1 playbook)
Helm and installation issues

**Key Topics:**
- Helm release issues
- Installation failures

**Example Playbooks:**
- `HelmReleaseStuckInPending-install.md`

### 12-Namespaces/ (2 playbooks)
Namespace management issues

**Key Topics:**
- Namespace deletion issues
- Namespace stuck states

**Example Playbooks:**
- `CannotDeleteNamespace-namespace.md`
- `NamespaceDeletionStuck-namespace.md`

## Usage Guidelines

1. **Identify the Category**: Determine which category your issue falls into (Control Plane, Pods, Networking, etc.)
2. **Navigate to Folder**: Go to the appropriate numbered folder (e.g., `03-Pods/` for pod issues)
3. **Find the Playbook**: Locate the playbook matching your specific issue
4. **Follow the Playbook**: Execute the numbered steps in order, replacing placeholder values (e.g., `<pod-name>`, `<namespace>`) with your actual resource identifiers
5. **Review Diagnosis Section**: Use the correlation analysis to identify root causes
6. **Extend Time Windows**: If initial correlations don't reveal the cause, extend time windows as suggested (e.g., 30 minutes → 1 hour)
7. **Check Alternative Sources**: Review alternative evidence sources mentioned in the Diagnosis section

## Quick Navigation Guide

| Issue Type | Folder | Example Playbooks |
|------------|--------|-------------------|
| API Server down/slow | `01-Control-Plane/` | `KubeAPIDown-control-plane.md`, `APIServerHighLatency-control-plane.md` |
| Pod won't start | `03-Pods/` | `PendingPods-pod.md`, `CrashLoopBackOff-pod.md` |
| Service not accessible | `05-Networking/` | `ServiceNotAccessible-service.md`, `ServiceNotResolvingDNS-dns.md` |
| Volume mount failed | `06-Storage/` | `PVCPendingDueToStorageClassIssues-storage.md`, `VolumeMountPermissionsDenied-storage.md` |
| Permission denied | `07-RBAC/` | `RBACPermissionDeniedError-rbac.md`, `ErrorForbiddenwhenRunningkubectlCommands-rbac.md` |
| Deployment not scaling | `04-Workloads/` | `DeploymentNotScalingProperly-deployment.md`, `HPAHorizontalPodAutoscalerNotScaling-workload.md` |
| Node not ready | `02-Nodes/` | `KubeNodeNotReady-node.md`, `KubeletDown-node.md` |
| ConfigMap not found | `08-Configuration/` | `ConfigMapNotFound-configmap.md`, `PodCannotAccessConfigMap-configmap.md` |
| Quota exceeded | `09-Resource-Management/` | `KubeQuotaExceeded-namespace.md`, `KubeCPUQuotaOvercommit-namespace.md` |

## Common Placeholders

Playbooks use the following placeholder format that should be replaced with actual values:
- `<pod-name>` - Pod name
- `<namespace>` - Kubernetes namespace
- `<deployment-name>` - Deployment name
- `<node-name>` - Node name
- `<service-name>` - Service name
- `<ingress-name>` - Ingress name
- `<pvc-name>` - PersistentVolumeClaim name
- `<configmap-name>` - ConfigMap name
- `<secret-name>` - Secret name

## Best Practices

- **Start with the category folder**: Use the numbered folders to quickly navigate to relevant playbooks
- **Start with common causes**: Begin with the most common causes (earlier steps in the Playbook section)
- **Use kubectl effectively**: Use `kubectl describe` and `kubectl get events` for detailed resource information
- **Check pod logs**: Use `kubectl logs` to examine pod logs
- **Correlate timestamps**: Correlate timestamps between resource changes and failures
- **Review component logs**: Review scheduler logs if pods are stuck in Pending state, API server logs for control plane issues
- **Check node conditions**: Check node conditions and resource availability
- **Document findings**: Document findings for future reference
- **Consider gradual issues**: Consider gradual issues if immediate correlations aren't found

## Related Resources

- Kubernetes Documentation: https://kubernetes.io/docs/
- kubectl Cheat Sheet: https://kubernetes.io/docs/reference/kubectl/cheatsheet/
- Kubernetes Troubleshooting Guide: https://kubernetes.io/docs/tasks/debug/
- Kubernetes API Reference: https://kubernetes.io/docs/reference/kubernetes-api/

## Statistics

- **Total Playbooks**: 138
- **Categories**: 12
- **Organization**: Numbered folders for easy navigation
- **Coverage**: All major Kubernetes components and common issues
