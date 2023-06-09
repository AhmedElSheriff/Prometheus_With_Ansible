#! /usr/bin/bash

# Populate Inventory

prometheus=$(aws ec2 describe-instances \
--filters "Name=tag:env,Values=prometheus" "Name=instance-state-name,Values=running" \
--query 'Reservations[*].Instances[*].PublicIpAddress' \
--output text)

node_exporter=$(aws ec2 describe-instances \
--filters "Name=tag:env,Values=node_exporter" "Name=instance-state-name,Values=running" \
--query 'Reservations[*].Instances[*].PublicIpAddress' \
--output text)

cat > inventory <<EOF
[prometheus]
$prometheus

[node_exporter]
$node_exporter
EOF

echo "The inventory has been updated!"
echo "Starting Playbook Now..."

ansible-playbook playbook.yml --ask-vault-pass

echo "You can access Prometheus dashboard on: "
echo $prometheus:9090
echo "You can access Grafana dashboard on: "
echo $prometheus:3000
