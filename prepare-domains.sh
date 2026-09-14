#!/bin/bash
cat >> /etc/hosts <<EOF
127.0.0.1       alphadm.wlab.yale.edu
127.0.0.1       whoami.alphadm.wlab.yale.edu
127.0.0.1       auth.alphadm.wlab.yale.edu
127.0.0.1       grafana.alphadm.wlab.yale.edu
127.0.0.1       ocs-web.alphadm.wlab.yale.edu
127.0.0.1       lldap.alphadm.wlab.yale.edu
EOF
