#!/bin/bash
cat >> /etc/hosts <<EOF

#ALPHA portal dev - remote

10.66.253.201   alphadm.wlab.yale.edu
10.66.253.201   whoami.alphadm.wlab.yale.edu
10.66.253.201   auth.alphadm.wlab.yale.edu
10.66.253.201   grafana.alphadm.wlab.yale.edu
10.66.253.201   ocs-web.alphadm.wlab.yale.edu
10.66.253.201   lldap.alphadm.wlab.yale.edu
EOF
