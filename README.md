<div align="center">

<img src="https://raw.githubusercontent.com/perryhuynh/homelab/main/docs/src/assets/logo.png" align="center" width="144px" height="144px"/>

### My Homelab Repository

_... managed with Flux, Renovate, and GitHub Actions_ 🤖

</div>

<div align="center">

[![Flux](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.perryhuynh.com%2Fflux_version&style=for-the-badge&logo=flux&logoColor=326ce5&color=1a1a1a&label=%20)](https://fluxcd.io)&nbsp;&nbsp;
[![Kubernetes](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.perryhuynh.com%2Fkubernetes_version&style=for-the-badge&logo=kubernetes&logoColor=white&color=296dea&label=%20)](https://kubernetes.io)&nbsp;&nbsp;
[![Talos](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.perryhuynh.com%2Ftalos_version&style=for-the-badge&logo=talos&logoColor=f81f25&color=433448&label=%20)](https://talos.dev)&nbsp;&nbsp;

</div>

<div align="center">

[![Age-Days](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.perryhuynh.com%2Fquery%3Fformat%3Dendpoint%26metric%3Dcluster_age_days&style=flat-square&label=Age)](https://github.com/kashalls/kromgo/)&nbsp;&nbsp;
[![Uptime-Days](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.perryhuynh.com%2Fquery%3Fformat%3Dendpoint%26metric%3Dcluster_uptime_days&style=flat-square&label=Uptime)](https://github.com/kashalls/kromgo/)&nbsp;&nbsp;
[![Power-Usage](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.perryhuynh.com%2Fquery%3Fformat%3Dendpoint%26metric%3Dcluster_power_usage&style=flat-square&label=Power)](https://github.com/kashalls/kromgo/)

</div>

<div align="center">

[![Node-Count](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.perryhuynh.com%2Fquery%3Fformat%3Dendpoint%26metric%3Dcluster_node_count&style=flat-square&label=Nodes)](https://github.com/kashalls/kromgo/)&nbsp;&nbsp;
[![Pod-Count](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.perryhuynh.com%2Fquery%3Fformat%3Dendpoint%26metric%3Dcluster_pod_count&style=flat-square&label=Pods)](https://github.com/kashalls/kromgo/)&nbsp;&nbsp;
[![CPU-Usage](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.perryhuynh.com%2Fquery%3Fformat%3Dendpoint%26metric%3Dcluster_cpu_usage&style=flat-square&label=CPU)](https://github.com/kashalls/kromgo/)&nbsp;&nbsp;
[![Memory-Usage](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.perryhuynh.com%2Fquery%3Fformat%3Dendpoint%26metric%3Dcluster_memory_usage&style=flat-square&label=Memory)](https://github.com/kashalls/kromgo/)&nbsp;&nbsp;

</div>

## Hardware

| Device                        | Count | OS Disk Size | Ram   | Operating System | Purpose                  |
|-------------------------------|-------|--------------|-------|------------------|--------------------------|
| Intel NUC NUC12WSKi5          | 3     | 960GB M.2    | 64GB  | Talos            | Kubernetes Control Plane |
| Minisforum MS-01 i9-13900H    | 1     | 960GB M.2    | 96GB  | Talos            | Kubernetes Worker        |
| TrueNAS Mini XL+              | 1     | 250GB SATA   | 64GB  | TrueNAS SCALE    | NFS/SMB                  |
| PiKVM (RasPi 4)               | 1     | 64GB (SD)    | 4GB   | PiKVM            | KVM                      |
| TESmart 8 Port KVM Switch     | 1     | -            | -     | -                | Network KVM (for PiKVM)  |
| APC SRT1500RMXLA              | 1     | -            | -     | -                | UPS                      |
---

## Gratitude and Thanks

Thanks to all the people who donate their time to the [Home Operations](https://discord.gg/home-operations) Discord community. Be sure to check out [kubesearch.dev](https://kubesearch.dev/) for ideas on how to deploy applications or get ideas on what you may deploy.
