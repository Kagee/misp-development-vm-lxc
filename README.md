# misp-development-vm-lxc

A project that uses GitHub Actions to build MISP development environments using VM and LXC containers from the external [MISP repository](https://github.com/MISP/MISP).

## Overview

This repository contains example GitHub Actions workflows and scripts for creating MISP (Malware Information Sharing Platform) development environments using:
- Virtual Machines (VM)
- LXC (Linux Containers)

## GitHub Actions Workflows

### VM Workflow
The VM workflow (`.github/workflows/build-vm.yml`) demonstrates:
- Cloning the MISP repository from GitHub
- Setting up a VM environment with QEMU/KVM
- Building a VM image with MISP installed
- Testing the VM image

### LXC Workflow
The LXC workflow (`.github/workflows/build-lxc.yml`) demonstrates:
- Cloning the MISP repository from GitHub
- Setting up an LXC/LXD environment
- Building an LXC container with MISP installed
- Testing the LXC container

## Scripts

The `scripts/` directory contains example scripts for:
- `build-vm.sh` - Build a MISP development VM
- `build-lxc.sh` - Build a MISP development LXC container
- `test-vm.sh` - Test the VM installation
- `test-lxc.sh` - Test the LXC container installation

### Usage Examples

**Build a VM:**
```bash
./scripts/build-vm.sh /path/to/misp/source
```

**Build an LXC container:**
```bash
./scripts/build-lxc.sh /path/to/misp/source
```

**Test installations:**
```bash
./scripts/test-vm.sh
./scripts/test-lxc.sh
```

## Configuration

Configuration files are located in the `config/` directory:
- `vm-config.conf` - VM configuration settings
- `lxc-config.conf` - LXC container configuration settings

## Requirements

### For VM Development
- QEMU/KVM
- libvirt
- Bridge utilities

### For LXC Development
- LXC/LXD
- Linux kernel with container support

## Getting Started

1. Clone this repository
2. Review and customize the configuration files in `config/`
3. Run the appropriate build script for your environment
4. The scripts will automatically clone the MISP repository from https://github.com/MISP/MISP

## GitHub Actions

The workflows are triggered on:
- Push to `main` or `develop` branches
- Pull requests to `main` branch
- Manual trigger via `workflow_dispatch`

## License

See LICENSE file for details.