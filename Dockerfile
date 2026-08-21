FROM swift:6.1.1-bookworm

ENV SWIFT_VERSION=6.1.1
ENV SDK_VERSION=0.0.1
ENV CHECKSUM=8a69753e181e40c202465f03bcafcc898070a86817ca0f39fc808f76638e90c2

RUN swift sdk install \
  https://download.swift.org/swift-${SWIFT_VERSION}-release/static-sdk/swift-${SWIFT_VERSION}-RELEASE/swift-${SWIFT_VERSION}-RELEASE_static-linux-${SDK_VERSION}.artifactbundle.tar.gz \
  --checksum ${CHECKSUM}
