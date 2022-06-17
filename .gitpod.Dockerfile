ARG GITPOD_IMAGE=gitpod/workspace-node:latest
FROM ${GITPOD_IMAGE}

ARG KUBECTL_VERSION=v1.22.2

## Install Kubectl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    sudo mv ./kubectl /usr/local/bin/kubectl && \
    mkdir ~/.kube

RUN wget https://github.com/civo/cli/releases/download/v1.0.28/civo-1.0.28-linux-amd64.tar.gz && \
    tar -xvf civo-1.0.28-linux-amd64.tar.gz && \
    chmod +x civo && \
    sudo mv ./civo /usr/local/bin/

# Add aliases
RUN echo 'alias k="kubectl"' >> /home/gitpod/.bashrc