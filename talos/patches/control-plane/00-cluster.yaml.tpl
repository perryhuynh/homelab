---
# Configure cluster
cluster:
  allowSchedulingOnControlPlanes: true
  apiServer:
    image: registry.k8s.io/kube-apiserver:{{ .KubernetesVersion }}
    certSANs:
      - 127.0.0.1
      - 192.168.1.20
      - k8s.internal
    extraArgs:
      # https://kubernetes.io/docs/tasks/extend-kubernetes/configure-aggregation-layer/
      enable-aggregator-routing: true
      feature-gates: HPAScaleToZero=true,ImageVolume=true
    admissionControl:
      - name: PodSecurity
        $patch: delete
  controllerManager:
    image: registry.k8s.io/kube-controller-manager:{{ .KubernetesVersion }}
    extraArgs:
      bind-address: 0.0.0.0
      feature-gates: HPAScaleToZero=true
  coreDNS:
    disabled: true
  etcd:
    extraArgs:
      listen-metrics-urls: http://0.0.0.0:2381
    advertisedSubnets:
      - 192.168.1.0/24
  proxy:
    image: registry.k8s.io/kube-proxy:{{ .KubernetesVersion }}
    disabled: true
  scheduler:
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
