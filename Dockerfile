FROM python:alpine

ARG AWSCLI_VERSION=1.16.309
ARG K8S_VERSION=1.17.0

RUN apk add curl groff jq less vim

RUN pip install --no-cache-dir awscli==$AWSCLI_VERSION

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v${K8S_VERSION}/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin/kubectl

CMD ["sh"]
