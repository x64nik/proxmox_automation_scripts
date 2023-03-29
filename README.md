# proxmox_automation_scripts

## Simple bash script to create vm from (.qcow) cloud image 
### Usage

```bash

./CreateCloudinitVM.sh

QCOW2 Path: debian-10-openstack-amd64.qcow2
VMid: 4000
VM_Name: debian-10-amd64-cloudinit
Cores: 2
Memory [default: 512]:
username: nik
password:
confirm password:
IP/CIDR: 192.168.0.97/24
Gateway: [default: 192.168.0.1]:
Nameserver [default: 1.1.1.1]:
Searchdomain [default: homelab.local]:
Disk_Size [default: 10GB]:

```

