# Cilium

## UniFi BGP

```sh
router bgp 64513
  bgp router-id 192.168.1.1
  no bgp ebgp-requires-policy
  bgp graceful-restart

  neighbor k8s peer-group
  neighbor k8s remote-as 64514

  neighbor 192.168.1.21 peer-group k8s
  neighbor 192.168.1.22 peer-group k8s
  neighbor 192.168.1.23 peer-group k8s
  neighbor 192.168.1.24 peer-group k8s

  address-family ipv4 unicast
    maximum-paths 4
    neighbor k8s soft-reconfiguration inbound
    neighbor k8s route-map K8S-OUT out
  exit-address-family
exit

route-map K8S-OUT deny 10
```

- `maximum-paths 4` installs ECMP routes to every node advertising an LB IP.
- `K8S-OUT` stops the UDM from reflecting the LB routes back to the nodes.

NOTE: save with `.conf` extension
