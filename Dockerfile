FROM microsoft/vsts-agent:ubuntu-14.04-docker-17.03.0-ce-standard

RUN curl -L -f -S -s --connect-timeout 5 --retry 15 -o /usr/local/bin/docker-compose https://github.com/docker/compose/releases/download/1.13.0/docker-compose-`uname -s`-`uname -m`
RUN chmod +x /usr/local/bin/docker-compose 

# Install az
RUN echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ wheezy main" | \
    tee /etc/apt/sources.list.d/azure-cli.list \
    && apt-key adv --keyserver packages.microsoft.com --recv-keys 417A0893 \
    && apt-get install -y apt-transport-https \
    && apt-get update  \
    && apt-get install -y azure-cli



