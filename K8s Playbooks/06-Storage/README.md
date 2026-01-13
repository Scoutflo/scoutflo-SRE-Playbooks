# Storage Playbooks

This folder contains **9 playbooks** for troubleshooting Kubernetes storage and volume issues.

## What is Kubernetes Storage?

Kubernetes storage allows pods to persist data beyond pod lifecycles. Key concepts:
- **PersistentVolume (PV)**: Storage provisioned in the cluster
- **PersistentVolumeClaim (PVC)**: Request for storage by a user
- **StorageClass**: Describes different classes of storage
- **Volume Mounts**: How pods access storage

## Common Issues Covered

- PersistentVolume issues
- PVC stuck in pending state
- Volume mount failures
- Storage class problems
- Volume attachment failures
- Storage filling up

## Playbooks in This Folder

1. `FailedAttachVolume-storage.md` - Failed to attach volume to pod
2. `KubePersistentVolumeErrors-storage.md` - PersistentVolume errors
3. `KubePersistentVolumeFillingUp-storage.md` - PersistentVolume running out of space
4. `PersistentVolumeNotResizing-storage.md` - PersistentVolume not resizing
5. `PersistentVolumeStuckinReleasedState-storage.md` - PV stuck in released state
6. `PodCannotAccessPersistentVolume-storage.md` - Pod cannot access PV
7. `PVCinLostState-storage.md` - PVC in lost state
8. `PVCPendingDueToStorageClassIssues-storage.md` - PVC pending due to storage class
9. `VolumeMountPermissionsDenied-storage.md` - Volume mount permission denied

## Quick Start

If you're experiencing storage issues:

1. **PVC Pending**: Start with `PVCPendingDueToStorageClassIssues-storage.md`
2. **Volume Mount Issues**: See `PodCannotAccessPersistentVolume-storage.md` or `VolumeMountPermissionsDenied-storage.md`
3. **Volume Attachment**: Check `FailedAttachVolume-storage.md`
4. **Storage Full**: See `KubePersistentVolumeFillingUp-storage.md`
5. **PV State Issues**: Check `PersistentVolumeStuckinReleasedState-storage.md` or `PVCinLostState-storage.md`

## Related Categories

- **03-Pods/**: Pod issues related to volume mounts
- **02-Nodes/**: Node disk pressure issues
- **09-Resource-Management/**: Resource quota issues affecting storage

## Useful Commands

```bash
# Check PVCs
kubectl get pvc -n <namespace>

# Describe PVC
kubectl describe pvc <pvc-name> -n <namespace>

# Check PVs
kubectl get pv

# Check storage classes
kubectl get storageclass

# Check volume attachments
kubectl get volumeattachment

# Check pod volume mounts
kubectl describe pod <pod-name> -n <namespace> | grep -A 10 "Volumes:"
```

## Additional Resources

- [Kubernetes Storage](https://kubernetes.io/docs/concepts/storage/)
- [Persistent Volumes](https://kubernetes.io/docs/concepts/storage/persistent-volumes/)
- [Storage Classes](https://kubernetes.io/docs/concepts/storage/storage-classes/)
- [Back to Main K8s Playbooks](../README.md)
