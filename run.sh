#!/bin/sh

# Inject config from environment variables
if [ -n "$TEMPO_CONFIG" ]; then
  rm -f /etc/tempo.yml
  echo "$TEMPO_CONFIG" > /etc/tempo.yml
  chmod 777 /etc/tempo.yml
fi

# Start Tempo
/tempo -config.file=/etc/tempo.yml $@
