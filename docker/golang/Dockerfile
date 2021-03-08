FROM debian:unstable-20210208-slim

ARG VERSION="1.16"
ARG PACKAGES="curl ca-certificates git gcc g++ libc6-dev make pkg-config"

ENV GOPATH=/go
ENV GOOS=linux
ENV GOARCH=amd64
ENV PATH=/usr/lib/go-${VERSION}/bin:$GOPATH/bin:$PATH

RUN apt-get update -y \
  && apt-get upgrade -y \
  && apt-get install --no-install-recommends -y ${PACKAGES} \
  && apt-get install --no-install-recommends -y golang-${VERSION} \
  && apt-get autoremove -y \
  && apt-get clean -y \
  && rm -rf /var/lib/apt/lists/* /root/.cache

RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 ${GOPATH}

# install go tools（自動補完等に必要なツールをコンテナにインストール）
RUN go get github.com/uudashr/gopkgs/v2/cmd/gopkgs \
  github.com/ramya-rao-a/go-outline \
  github.com/nsf/gocode \
  github.com/acroca/go-symbols \
  github.com/fatih/gomodifytags \
  github.com/josharian/impl \
  github.com/haya14busa/goplay/cmd/goplay \
  github.com/go-delve/delve/cmd/dlv \
  golang.org/x/lint/golint \
  golang.org/x/tools/gopls

WORKDIR $GOPATH
