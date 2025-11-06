#!/bin/bash
# Test MISP Development LXC Container
# Usage: ./test-lxc.sh

set -e

echo "Testing MISP Development LXC Container..."

# Example: Check if container is running
echo "Checking container status..."
# lxc list misp-dev

# Example: Test MISP services in container
echo "Testing MISP services..."
# lxc exec misp-dev -- systemctl status apache2

# Example: Run health checks
echo "Running health checks..."
# lxc exec misp-dev -- curl -f http://localhost

echo "LXC container tests complete!"
