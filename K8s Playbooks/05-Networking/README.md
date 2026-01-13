# Networking Playbooks

This folder contains **19 playbooks** for troubleshooting Kubernetes networking issues.

## What is Kubernetes Networking?

Kubernetes networking enables communication between:
- Pods within the cluster
- Pods and services
- External traffic to services (via Ingress)
- DNS resolution within the cluster

Key components include Services, Ingress, CoreDNS, and kube-proxy.

## Common Issues Covered

- Service connectivity problems
- Ingress configuration issues
- DNS resolution failures
- Network policy blocking traffic
- kube-proxy failures
- External service access problems
- Service IP issues

## Playbooks in This Folder

1. `CoreDNSPodsCrashLooping-dns.md` - CoreDNS pods crashing
2. `DNSResolutionIntermittent-dns.md` - DNS resolution intermittent
3. `ErrorConnectionRefusedWhenAccessingService-service.md` - Connection refused to service
4. `IngressControllerPodsCrashLooping-ingress.md` - Ingress controller crashing
5. `IngressNotWorking-ingress.md` - Ingress not routing traffic
6. `IngressRedirectLoop-ingress.md` - Ingress causing redirect loops
7. `IngressReturning502BadGateway-ingress.md` - Ingress returning 502 errors
8. `IngressShows404-ingress.md` - Ingress showing 404 errors
9. `IngressSSLTLSConfigurationFails-ingress.md` - Ingress SSL/TLS configuration failing
10. `KubeProxyDown-network.md` - kube-proxy down
11. `Kube-proxyFailing-network.md` - kube-proxy failing
12. `NetworkPolicyBlockingTraffic-network.md` - Network policy blocking traffic
13. `NodesUnreachable-network.md` - Nodes unreachable
14. `ServiceExternal-IPPending-service.md` - Service external IP pending
15. `ServiceNodePortNotAccessible-service.md` - NodePort service not accessible
16. `ServiceNotAccessible-service.md` - Service not accessible
17. `ServiceNotForwardingTraffic-service.md` - Service not forwarding traffic
18. `ServiceNotResolvingDNS-dns.md` - Service DNS not resolving
19. `ServicesIntermittentlyUnreachable-service.md` - Services intermittently unreachable

## Quick Start

If you're experiencing networking issues:

1. **Service Not Working**: Start with `ServiceNotAccessible-service.md` or `ServiceNotResolvingDNS-dns.md`
2. **Ingress Problems**: See `IngressNotWorking-ingress.md` or `IngressReturning502BadGateway-ingress.md`
3. **DNS Issues**: Check `ServiceNotResolvingDNS-dns.md` or `CoreDNSPodsCrashLooping-dns.md`
4. **Network Policies**: See `NetworkPolicyBlockingTraffic-network.md`
5. **kube-proxy**: Check `KubeProxyDown-network.md`

## Related Categories

- **03-Pods/**: Pod networking issues
- **01-Control-Plane/**: Control plane issues affecting networking
- **02-Nodes/**: Node networking problems

## Useful Commands

```bash
# Check services
kubectl get services -n <namespace>

# Describe service
kubectl describe service <service-name> -n <namespace>

# Check ingress
kubectl get ingress -n <namespace>

# Check CoreDNS pods
kubectl get pods -n kube-system | grep coredns

# Check kube-proxy
kubectl get pods -n kube-system | grep kube-proxy

# Check network policies
kubectl get networkpolicies -n <namespace>

# Test DNS resolution
kubectl run -it --rm debug --image=busybox --restart=Never -- nslookup <service-name>.<namespace>.svc.cluster.local
```

## Additional Resources

- [Kubernetes Networking](https://kubernetes.io/docs/concepts/services-networking/)
- [Services](https://kubernetes.io/docs/concepts/services-networking/service/)
- [Ingress](https://kubernetes.io/docs/concepts/services-networking/ingress/)
- [DNS](https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/)
- [Back to Main K8s Playbooks](../README.md)
