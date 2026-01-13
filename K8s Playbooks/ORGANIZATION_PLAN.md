# K8s Playbooks Organization Plan

## Proposed Folder Structure

### 01-Control-Plane/ (20 files)
Control plane component issues: API Server, Scheduler, Controller Manager, etcd, certificates
- APIServerHighLatency-control-plane.md
- CannotAccessAPI-control-plane.md
- CertificateExpired-control-plane.md
- ConnectionRefused-control-plane.md
- ContextDeadlineExceeded-control-plane.md
- ControlPlaneComponentsNotStarting-control-plane.md
- KubeAggregatedAPIDown-control-plane.md
- KubeAggregatedAPIErrors-control-plane.md
- KubeAPIDown-control-plane.md
- KubeAPIErrorBudgetBurn-control-plane.md
- KubeAPITerminatedRequests-control-plane.md
- KubeClientCertificateExpiration-control-plane.md
- KubeClientErrors-control-plane.md
- KubeControllerManagerDown-control-plane.md
- KubeSchedulerDown-control-plane.md
- KubeVersionMismatch-control-plane.md
- Timeout-control-plane.md
- UpgradeFails-control-plane.md

### 02-Nodes/ (12 files)
Node readiness, kubelet issues, node capacity, node connectivity
- KubeletCertificateRotationFailing-node.md
- KubeletDown-node.md
- KubeletPlegDurationHigh-node.md
- KubeletPodStartUpLatencyHigh-node.md
- KubeletServiceNotRunning-node.md
- KubeletTooManyPods-node.md
- KubeNodeNotReady-node.md
- KubeNodeReadinessFlapping-node.md
- KubeNodeUnreachable-node.md
- NodeCannotJoinCluster-node.md
- NodeDiskPressure-storage.md
- NodeNotReady-node.md

### 03-Pods/ (35 files)
Pod lifecycle, scheduling, health checks, pod states, resource issues
- CrashLoopBackOff-pod.md
- EvictedPods-pod.md
- FailedtoStartPodSandbox-pod.md
- ImagePullBackOff-registry.md
- KubeContainerWaiting-pod.md
- KubePodCrashLooping-pod.md
- KubePodNotReady-pod.md
- PendingPods-pod.md
- PodCannotAccessClusterInternalDNS-dns.md
- PodCannotAccessConfigMap-configmap.md
- PodCannotAccessPersistentVolume-storage.md
- PodCannotAccessSecret-secret.md
- PodCannotConnecttoExternalServices-network.md
- PodFailsLivenessProbe-pod.md
- PodFailsReadinessProbe-pod.md
- PodIPConflict-network.md
- PodIPNotReachable-network.md
- PodLogsNotAvailable-pod.md
- PodLogsTruncated-pod.md
- PodsCannotPullSecrets-secret.md
- PodSchedulingIgnoredNodeSelector-pod.md
- PodSecurityContext-pod.md
- PodsExceedingResourceQuota-workload.md
- PodsNotBeingScheduled-pod.md
- PodsOverloadedDuetoMissingHPA-workload.md
- PodsRestartingFrequently-pod.md
- PodsStuckinContainerCreatingState-pod.md
- PodsStuckinEvictedState-pod.md
- PodsStuckinImagePullBackOff-registry.md
- PodsStuckinInitState-pod.md
- PodsStuckinTerminatingState-pod.md
- PodsStuckInUnknownState-pod.md
- PodStuckinPendingDuetoNodeAffinity-pod.md
- PodStuckInTerminatingState-pod.md
- PodTerminatedWithExitCode137-pod.md

### 04-Workloads/ (20 files)
Deployments, StatefulSets, DaemonSets, Jobs, HPA scaling issues
- CannotScaleDeploymentBeyondNodeCapacity-workload.md
- DaemonSetNotDeployingPodsonAllNodes-daemonset.md
- DaemonSetPodsNotDeploying-daemonset.md
- DaemonSetPodsNotRunningonSpecificNode-daemonset.md
- DeploymentNotScalingProperly-deployment.md
- DeploymentNotUpdating-deployment.md
- HPAHorizontalPodAutoscalerNotScaling-workload.md
- HPANotRespondingtoCustomMetrics-workload.md
- HPANotRespondingtoMetrics-workload.md
- InvalidMemoryCPURequests-workload.md
- JobFailingToComplete-job.md
- KubeDaemonSetMisScheduled-daemonset.md
- KubeDaemonSetNotScheduled-daemonset.md
- KubeDaemonSetRolloutStuck-daemonset.md
- KubeDeploymentGenerationMismatch-deployment.md
- KubeDeploymentReplicasMismatch-deployment.md
- KubeHpaMaxedOut-workload.md
- KubeHpaReplicasMismatch-workload.md
- KubeJobCompletion-workload.md
- KubeJobFailed-workload.md
- KubeStatefulSetGenerationMismatch-statefulset.md
- KubeStatefulSetReplicasMismatch-statefulset.md
- KubeStatefulSetUpdateNotRolledOut-statefulset.md

### 05-Networking/ (18 files)
Services, Ingress, DNS, Network Policies, kube-proxy, external connectivity
- CoreDNSPodsCrashLooping-dns.md
- DNSResolutionIntermittent-dns.md
- ErrorConnectionRefusedWhenAccessingService-service.md
- IngressControllerPodsCrashLooping-ingress.md
- IngressNotWorking-ingress.md
- IngressRedirectLoop-ingress.md
- IngressReturning502BadGateway-ingress.md
- IngressShows404-ingress.md
- IngressSSLTLSConfigurationFails-ingress.md
- Kube-proxyFailing-network.md
- KubeProxyDown-network.md
- NetworkPolicyBlockingTraffic-network.md
- NodesUnreachable-network.md
- ServiceExternal-IPPending-service.md
- ServiceNodePortNotAccessible-service.md
- ServiceNotAccessible-service.md
- ServiceNotForwardingTraffic-service.md
- ServiceNotResolvingDNS-dns.md
- ServicesIntermittentlyUnreachable-service.md

### 06-Storage/ (11 files)
PersistentVolumes, PVCs, volume mounts, storage classes
- FailedAttachVolume-storage.md
- KubePersistentVolumeErrors-storage.md
- KubePersistentVolumeFillingUp-storage.md
- PersistentVolumeNotResizing-storage.md
- PersistentVolumeStuckinReleasedState-storage.md
- PodCannotAccessPersistentVolume-storage.md
- PVCinLostState-storage.md
- PVCPendingDueToStorageClassIssues-storage.md
- VolumeMountPermissionsDenied-storage.md

### 07-RBAC/ (8 files)
Permissions, ServiceAccounts, Roles, RoleBindings, authorization errors
- ClusterRoleBindingMissingPermissions-rbac.md
- ErrorForbiddenwhenRunningkubectlCommands-rbac.md
- ErrorUnauthorizedwhenAccessingAPIServer-rbac.md
- RBACPermissionDeniedError-rbac.md
- ServiceAccountNotFound-rbac.md
- UnauthorizedErrorWhenAccessingKubernetesAPI-rbac.md

### 08-Configuration/ (4 files)
ConfigMaps and Secrets access issues
- ConfigMapNotFound-configmap.md
- ConfigMapTooLarge-configmap.md
- PodCannotAccessConfigMap-configmap.md
- PodCannotAccessSecret-secret.md
- PodsCannotPullSecrets-secret.md
- SecretsNotAccessible-secret.md

### 09-Resource-Management/ (9 files)
Resource Quotas, ResourceQuotas, overcommit, compute resource issues
- HighCPUUsage-compute.md
- KubeCPUOvercommit-compute.md
- KubeCPUQuotaOvercommit-namespace.md
- KubeMemoryOvercommit-compute.md
- KubeMemoryQuotaOvercommit-namespace.md
- KubeQuotaAlmostFull-namespace.md
- KubeQuotaExceeded-namespace.md
- KubeQuotaFullyUsed-namespace.md

### 10-Monitoring-Autoscaling/ (3 files)
Metrics Server, Cluster Autoscaler
- AutoscalerNotAddingNodes-autoscaler.md
- AutoscalerScalingTooSlowly-autoscaler.md
- MetricsServerShowsNoData-monitoring.md

### 11-Installation-Setup/ (1 file)
Helm and installation issues
- HelmReleaseStuckInPending-install.md

### 12-Namespaces/ (2 files)
Namespace management issues
- CannotDeleteNamespace-namespace.md
- NamespaceDeletionStuck-namespace.md

## Summary
- Total: 138 playbook files
- 12 main categories
- Numbered folders for easy navigation
- Logical grouping by Kubernetes component/functionality
