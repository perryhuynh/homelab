---
# Configure kubelet version
machine:
  kubelet:
    image: ghcr.io/siderolabs/kubelet:{{ .KubernetesVersion }}
