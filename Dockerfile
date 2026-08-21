FROM swift:6.1.0-bookworm

ENV SWIFT_VERSION=6.1.0
ENV SDK_VERSION=0.0.1
ENV CHECKSUM=111c6f7d280a651208b8c74c0521dd99365d785c1976a6e23162f55f65379ac6

RUN swift sdk install \
  https://download.swift.org/swift-${SWIFT_VERSION}-release/static-sdk/swift-${SWIFT_VERSION}-RELEASE/swift-${SWIFT_VERSION}-RELEASE_static-linux-${SDK_VERSION}.artifactbundle.tar.gz \
  --checksum ${CHECKSUM}
