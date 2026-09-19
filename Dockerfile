FROM swift:6.4.0-bookworm

ENV SWIFT_VERSION=6.4.0
ENV SDK_VERSION=0.1.0
ENV CHECKSUM=47d2fd89eebfdf9eb4d536b6710414297f755c17926cdebc4742c08982b40a9e

RUN swift sdk install \
  https://download.swift.org/swift-${SWIFT_VERSION}-release/static-sdk/swift-${SWIFT_VERSION}-RELEASE/swift-${SWIFT_VERSION}-RELEASE_static-linux-${SDK_VERSION}.artifactbundle.tar.gz \
  --checksum ${CHECKSUM}
