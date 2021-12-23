FROM almalinux:latest

# ADD go1.17.5.linux-amd64.tar.gz /usr/local

RUN curl -O https://go.dev/dl/go1.17.5.linux-amd64.tar.gz && \
  tar xvf go1.17.5.linux-amd64.tar.gz -C /usr/local/

ENV PATH="/usr/local/go/bin:${PATH}"
ENV GO111MODULE=on
ENV GOPROXY=https://goproxy.cn
ENV TZ=Asis/Shanghai
ENV GOPATH=/workspace

WORKDIR /workspace

CMD ["/bin/bash"]
