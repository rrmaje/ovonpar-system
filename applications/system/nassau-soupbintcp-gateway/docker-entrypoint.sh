#!/bin/sh

set -e

cat > etc/nassau-soupbintcp-gateway.conf <<-EOF
upstream {
  multicast-interface = eth0
  multicast-group     = ${NASSAU_SOUPBINTCP_GATEWAY_UPSTREAM_MULTICAST_GROUP:-"224.0.0.1"}
  multicast-port      = ${NASSAU_SOUPBINTCP_GATEWAY_UPSTREAM_MULTICAST_PORT:-"5000"}
  request-address     = ${NASSAU_SOUPBINTCP_GATEWAY_UPSTREAM_REQUEST_ADDRESS:-"parity-system"}
  request-port        = ${NASSAU_SOUPBINTCP_GATEWAY_UPSTREAM_REQUEST_PORT:-"5001"}
}
downstream {
  address = 0.0.0.0
  port    = ${NASSAU_SOUPBINTCP_GATEWAY_DOWNSTREAM_PORT}
}
EOF

echo `cat etc/nassau-soupbintcp-gateway.conf`

java -jar nassau-soupbintcp-gateway.jar etc/nassau-soupbintcp-gateway.conf
