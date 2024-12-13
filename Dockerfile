FROM grafana/tempo:latest

EXPOSE 3200

COPY ./tempo.yaml /etc/tempo.yaml

EXPOSE 3200 14268 14250 4317 4318

# Add the run script
COPY ./run.sh /app/run.sh

USER root
RUN chmod +x /app/run.sh

ENTRYPOINT [ "/app/run.sh" ]
CMD ["-target=scalable-single-binary"]
