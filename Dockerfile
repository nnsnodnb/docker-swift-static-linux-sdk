FROM swift:6.3.3-bookworm

ENV SWIFT_VERSION=6.3.3
ENV SDK_VERSION=0.1.0
ENV CHECKSUM=87c3eaf908e67c0e13a84367119e12273cec1d2cd3d81f7d74bb36722d6b607b

RUN swift sdk install \
  https://download.swift.org/swift-${SWIFT_VERSION}-release/static-sdk/swift-${SWIFT_VERSION}-RELEASE/swift-${SWIFT_VERSION}-RELEASE_static-linux-${SDK_VERSION}.artifactbundle.tar.gz \
  --checksum ${CHECKSUM}
