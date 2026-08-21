FROM swift:6.2.2-bookworm

ENV SWIFT_VERSION=6.2.2
ENV SDK_VERSION=0.0.1
ENV CHECKSUM=a24285cd28eb5e6dcbe35495179b117711c6ca8e6d579e0507622b7b8752ee94

RUN swift sdk install \
  https://download.swift.org/swift-${SWIFT_VERSION}-release/static-sdk/swift-${SWIFT_VERSION}-RELEASE/swift-${SWIFT_VERSION}-RELEASE_static-linux-${SDK_VERSION}.artifactbundle.tar.gz \
  --checksum ${CHECKSUM}
