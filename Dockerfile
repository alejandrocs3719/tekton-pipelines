FROM registry.corpname.com/devops/infra-tools:alpine-latest

ARG KUBECTL_VERSION
ARG TKN_VERSION

RUN apk add --no-cache curl bash git

RUN curl -LO "https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl" \
    && install -m 0755 kubectl /usr/local/bin/kubectl \
    && rm kubectl

RUN curl -LO https://github.com/tektoncd/cli/releases/download/${TKN_VERSION}/\
tkn_${TKN_VERSION}_Linux_x86_64.tar.gz \
    && tar xvzf tkn_${TKN_VERSION}_Linux_x86_64.tar.gz -C /usr/local/bin/ tkn \
    && rm tkn_${TKN_VERSION}_Linux_x86_64.tar.gz

CMD ["/bin/bash"]