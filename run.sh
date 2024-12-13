#!/usr/bin/sh

# Inject config from environment variables
if [ -n "$TEMPO_CONFIG" ]; then
  rm -f /etc/tempo.yaml
  echo "$TEMPO_CONFIG" > /etc/tempo.yaml
  chmod 777 /etc/tempo.yaml
fi

# Start Tempo
/tempo -config.file=/etc/tempo.yml $@
