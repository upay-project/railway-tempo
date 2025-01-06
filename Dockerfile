FROM grafana/tempo:2.6.1

COPY ./tempo.yml /etc/tempo.yml

EXPOSE 3200 14268 14250 4317 4318
USER root

# Add the run script
COPY ./run.sh /app/run.sh
RUN chmod +x /app/run.sh

ENTRYPOINT [ "sh", "/app/run.sh" ]
