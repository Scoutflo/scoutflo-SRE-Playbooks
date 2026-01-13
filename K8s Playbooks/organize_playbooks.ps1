# PowerShell script to organize K8s playbooks into categorized folders

$basePath = "."

# Define folder structure and file mappings
$folders = @{
    "01-Control-Plane" = @(
        "APIServerHighLatency-control-plane.md",
        "CannotAccessAPI-control-plane.md",
        "CertificateExpired-control-plane.md",
        "ConnectionRefused-control-plane.md",
        "ContextDeadlineExceeded-control-plane.md",
        "ControlPlaneComponentsNotStarting-control-plane.md",
        "KubeAggregatedAPIDown-control-plane.md",
        "KubeAggregatedAPIErrors-control-plane.md",
        "KubeAPIDown-control-plane.md",
        "KubeAPIErrorBudgetBurn-control-plane.md",
        "KubeAPITerminatedRequests-control-plane.md",
        "KubeClientCertificateExpiration-control-plane.md",
        "KubeClientErrors-control-plane.md",
        "KubeControllerManagerDown-control-plane.md",
        "KubeSchedulerDown-control-plane.md",
        "KubeVersionMismatch-control-plane.md",
        "Timeout-control-plane.md",
        "UpgradeFails-control-plane.md"
    )
    
    "02-Nodes" = @(
        "KubeletCertificateRotationFailing-node.md",
        "KubeletDown-node.md",
        "KubeletPlegDurationHigh-node.md",
        "KubeletPodStartUpLatencyHigh-node.md",
        "KubeletServiceNotRunning-node.md",
        "KubeletTooManyPods-node.md",
        "KubeNodeNotReady-node.md",
        "KubeNodeReadinessFlapping-node.md",
        "KubeNodeUnreachable-node.md",
        "NodeCannotJoinCluster-node.md",
        "NodeDiskPressure-storage.md",
        "NodeNotReady-node.md"
    )
    
    "03-Pods" = @(
        "CrashLoopBackOff-pod.md",
        "EvictedPods-pod.md",
        "FailedtoStartPodSandbox-pod.md",
        "ImagePullBackOff-registry.md",
        "KubeContainerWaiting-pod.md",
        "KubePodCrashLooping-pod.md",
        "KubePodNotReady-pod.md",
        "PendingPods-pod.md",
        "PodCannotAccessClusterInternalDNS-dns.md",
        "PodCannotAccessConfigMap-configmap.md",
        "PodCannotAccessPersistentVolume-storage.md",
        "PodCannotAccessSecret-secret.md",
        "PodCannotConnecttoExternalServices-network.md",
        "PodFailsLivenessProbe-pod.md",
        "PodFailsReadinessProbe-pod.md",
        "PodIPConflict-network.md",
        "PodIPNotReachable-network.md",
        "PodLogsNotAvailable-pod.md",
        "PodLogsTruncated-pod.md",
        "PodsCannotPullSecrets-secret.md",
        "PodSchedulingIgnoredNodeSelector-pod.md",
        "PodSecurityContext-pod.md",
        "PodsExceedingResourceQuota-workload.md",
        "PodsNotBeingScheduled-pod.md",
        "PodsOverloadedDuetoMissingHPA-workload.md",
        "PodsRestartingFrequently-pod.md",
        "PodsStuckinContainerCreatingState-pod.md",
        "PodsStuckinEvictedState-pod.md",
        "PodsStuckinImagePullBackOff-registry.md",
        "PodsStuckinInitState-pod.md",
        "PodsStuckinTerminatingState-pod.md",
        "PodsStuckInUnknownState-pod.md",
        "PodStuckinPendingDuetoNodeAffinity-pod.md",
        "PodStuckInTerminatingState-pod.md",
        "PodTerminatedWithExitCode137-pod.md"
    )
    
    "04-Workloads" = @(
        "CannotScaleDeploymentBeyondNodeCapacity-workload.md",
        "DaemonSetNotDeployingPodsonAllNodes-daemonset.md",
        "DaemonSetPodsNotDeploying-daemonset.md",
        "DaemonSetPodsNotRunningonSpecificNode-daemonset.md",
        "DeploymentNotScalingProperly-deployment.md",
        "DeploymentNotUpdating-deployment.md",
        "HPAHorizontalPodAutoscalerNotScaling-workload.md",
        "HPANotRespondingtoCustomMetrics-workload.md",
        "HPANotRespondingtoMetrics-workload.md",
        "InvalidMemoryCPURequests-workload.md",
        "JobFailingToComplete-job.md",
        "KubeDaemonSetMisScheduled-daemonset.md",
        "KubeDaemonSetNotScheduled-daemonset.md",
        "KubeDaemonSetRolloutStuck-daemonset.md",
        "KubeDeploymentGenerationMismatch-deployment.md",
        "KubeDeploymentReplicasMismatch-deployment.md",
        "KubeHpaMaxedOut-workload.md",
        "KubeHpaReplicasMismatch-workload.md",
        "KubeJobCompletion-workload.md",
        "KubeJobFailed-workload.md",
        "KubeStatefulSetGenerationMismatch-statefulset.md",
        "KubeStatefulSetReplicasMismatch-statefulset.md",
        "KubeStatefulSetUpdateNotRolledOut-statefulset.md"
    )
    
    "05-Networking" = @(
        "CoreDNSPodsCrashLooping-dns.md",
        "DNSResolutionIntermittent-dns.md",
        "ErrorConnectionRefusedWhenAccessingService-service.md",
        "IngressControllerPodsCrashLooping-ingress.md",
        "IngressNotWorking-ingress.md",
        "IngressRedirectLoop-ingress.md",
        "IngressReturning502BadGateway-ingress.md",
        "IngressShows404-ingress.md",
        "IngressSSLTLSConfigurationFails-ingress.md",
        "Kube-proxyFailing-network.md",
        "KubeProxyDown-network.md",
        "NetworkPolicyBlockingTraffic-network.md",
        "NodesUnreachable-network.md",
        "ServiceExternal-IPPending-service.md",
        "ServiceNodePortNotAccessible-service.md",
        "ServiceNotAccessible-service.md",
        "ServiceNotForwardingTraffic-service.md",
        "ServiceNotResolvingDNS-dns.md",
        "ServicesIntermittentlyUnreachable-service.md"
    )
    
    "06-Storage" = @(
        "FailedAttachVolume-storage.md",
        "KubePersistentVolumeErrors-storage.md",
        "KubePersistentVolumeFillingUp-storage.md",
        "PersistentVolumeNotResizing-storage.md",
        "PersistentVolumeStuckinReleasedState-storage.md",
        "PodCannotAccessPersistentVolume-storage.md",
        "PVCinLostState-storage.md",
        "PVCPendingDueToStorageClassIssues-storage.md",
        "VolumeMountPermissionsDenied-storage.md"
    )
    
    "07-RBAC" = @(
        "ClusterRoleBindingMissingPermissions-rbac.md",
        "ErrorForbiddenwhenRunningkubectlCommands-rbac.md",
        "ErrorUnauthorizedwhenAccessingAPIServer-rbac.md",
        "RBACPermissionDeniedError-rbac.md",
        "ServiceAccountNotFound-rbac.md",
        "UnauthorizedErrorWhenAccessingKubernetesAPI-rbac.md"
    )
    
    "08-Configuration" = @(
        "ConfigMapNotFound-configmap.md",
        "ConfigMapTooLarge-configmap.md",
        "PodCannotAccessConfigMap-configmap.md",
        "PodCannotAccessSecret-secret.md",
        "PodsCannotPullSecrets-secret.md",
        "SecretsNotAccessible-secret.md"
    )
    
    "09-Resource-Management" = @(
        "HighCPUUsage-compute.md",
        "KubeCPUOvercommit-compute.md",
        "KubeCPUQuotaOvercommit-namespace.md",
        "KubeMemoryOvercommit-compute.md",
        "KubeMemoryQuotaOvercommit-namespace.md",
        "KubeQuotaAlmostFull-namespace.md",
        "KubeQuotaExceeded-namespace.md",
        "KubeQuotaFullyUsed-namespace.md"
    )
    
    "10-Monitoring-Autoscaling" = @(
        "AutoscalerNotAddingNodes-autoscaler.md",
        "AutoscalerScalingTooSlowly-autoscaler.md",
        "MetricsServerShowsNoData-monitoring.md"
    )
    
    "11-Installation-Setup" = @(
        "HelmReleaseStuckInPending-install.md"
    )
    
    "12-Namespaces" = @(
        "CannotDeleteNamespace-namespace.md",
        "NamespaceDeletionStuck-namespace.md"
    )
}

Write-Host "Creating folder structure and organizing playbooks..." -ForegroundColor Green

# Create folders
foreach ($folder in $folders.Keys) {
    $folderPath = Join-Path $basePath $folder
    if (-not (Test-Path $folderPath)) {
        New-Item -ItemType Directory -Path $folderPath -Force | Out-Null
        Write-Host "Created folder: $folder" -ForegroundColor Cyan
    }
}

# Move files to appropriate folders
$movedCount = 0
$notFound = @()

foreach ($folder in $folders.Keys) {
    $folderPath = Join-Path $basePath $folder
    foreach ($file in $folders[$folder]) {
        $sourcePath = Join-Path $basePath $file
        if (Test-Path $sourcePath) {
            $destPath = Join-Path $folderPath $file
            Move-Item -Path $sourcePath -Destination $destPath -Force
            Write-Host "Moved: $file -> $folder/" -ForegroundColor Yellow
            $movedCount++
        } else {
            $notFound += $file
        }
    }
}

Write-Host "`nOrganization complete!" -ForegroundColor Green
Write-Host "Total files moved: $movedCount" -ForegroundColor Green

if ($notFound.Count -gt 0) {
    Write-Host "`nFiles not found (may have been moved already):" -ForegroundColor Yellow
    foreach ($file in $notFound) {
        Write-Host "  - $file" -ForegroundColor Yellow
    }
}
