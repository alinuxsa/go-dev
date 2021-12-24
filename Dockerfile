FROM almalinux:latest

# ADD go1.17.5.linux-amd64.tar.gz /usr/local
ENV VERSION=1.17.5

RUN curl -L -O https://go.dev/dl/go${VERSION}.linux-amd64.tar.gz && \
  tar xf go${VERSION}.linux-amd64.tar.gz -C /usr/local/ && \
  rm -rf go${VERSION}.linux-amd64.tar.gz

ENV PATH="/usr/local/go/bin:${PATH}"
ENV GO111MODULE=on
ENV GOPROXY=https://goproxy.cn
ENV TZ=Asis/Shanghai
ENV GOPATH=/workspace

WORKDIR /workspace

CMD ["/bin/bash"]
