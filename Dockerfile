FROM swift:6.1.3-bookworm

ENV SWIFT_VERSION=6.1.3
ENV SDK_VERSION=0.0.1
ENV CHECKSUM=7a741da46ce64cdbd6dd504a2617b211b88e7f66a9ada7ea4e55bcc9c06ff2b2

RUN swift sdk install \
  https://download.swift.org/swift-${SWIFT_VERSION}-release/static-sdk/swift-${SWIFT_VERSION}-RELEASE/swift-${SWIFT_VERSION}-RELEASE_static-linux-${SDK_VERSION}.artifactbundle.tar.gz \
  --checksum ${CHECKSUM}
