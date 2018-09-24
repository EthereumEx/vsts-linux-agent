FROM microsoft/vsts-agent:ubuntu-16.04-docker-17.12.0-ce-standard

# Install az
ARG UPD_CLI="yes"
RUN env
RUN if [ -n "$UPD_CLI" -a "$UPD_CLI" = "yes"   ]; then apt-get update  \
    && apt-get install -y azure-cli ; else echo 'no update' ; fi
