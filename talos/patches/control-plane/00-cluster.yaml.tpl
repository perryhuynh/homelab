---
# Configure cluster
cluster:
  etcd:
    extraArgs:
      listen-metrics-urls: http://0.0.0.0:2381
    advertisedSubnets:
      - 192.168.1.0/24
---
# Allow scheduling on control planes
apiVersion: v1alpha1
kind: KubeNodeConfig
taints:
  node-role.kubernetes.io/control-plane:
    $patch: delete
---
apiVersion: v1alpha1
kind: KubeAPIServerConfig
image: registry.k8s.io/kube-apiserver:{{ .KubernetesVersion }}
certExtraSANs:
  - 127.0.0.1
  - 192.168.1.20
  - k8s.internal
extraArgs:
  # https://kubernetes.io/docs/tasks/extend-kubernetes/configure-aggregation-layer/
  enable-aggregator-routing: "true"
  feature-gates: HPAScaleToZero=true,ImageVolume=true
---
apiVersion: v1alpha1
kind: KubeAdmissionControlConfig
name: PodSecurity
$patch: delete
---
apiVersion: v1alpha1
kind: KubeControllerManagerConfig
image: registry.k8s.io/kube-controller-manager:{{ .KubernetesVersion }}
extraArgs:
  bind-address: 0.0.0.0
  feature-gates: HPAScaleToZero=true
---
apiVersion: v1alpha1
kind: KubeCoreDNSConfig
enabled: false
---
apiVersion: v1alpha1
kind: KubeProxyConfig
enabled: false
image: registry.k8s.io/kube-proxy:{{ .KubernetesVersion }}
---
apiVersion: v1alpha1
kind: KubeSchedulerConfig
image: registry.k8s.io/kube-scheduler:{{ .KubernetesVersion }}
config:
  apiVersion: kubescheduler.config.k8s.io/v1
  kind: KubeSchedulerConfiguration
  profiles:
    - schedulerName: default-scheduler
      plugins:
        score:
          disabled:
            - name: ImageLocality
      pluginConfig:
        - name: PodTopologySpread
          args:
            defaultingType: List
            defaultConstraints:
              - maxSkew: 1
                topologyKey: kubernetes.io/hostname
                whenUnsatisfiable: ScheduleAnyway
extraArgs:
  bind-address: 0.0.0.0
