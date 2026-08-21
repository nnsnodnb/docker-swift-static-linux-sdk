FROM swift:6.3.0-bookworm

ENV SWIFT_VERSION=6.3
ENV SDK_VERSION=0.1.0
ENV CHECKSUM=swift-6.2.4

RUN swift sdk install \
  https://download.swift.org/swift-${SWIFT_VERSION}-release/static-sdk/swift-${SWIFT_VERSION}-RELEASE/swift-${SWIFT_VERSION}-RELEASE_static-linux-${SDK_VERSION}.artifactbundle.tar.gz \
  --checksum ${CHECKSUM}
