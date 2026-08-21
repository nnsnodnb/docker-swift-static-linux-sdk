FROM swift:6.0.3-bookworm

ENV SWIFT_VERSION=6.0.3
ENV SDK_VERSION=0.0.1
ENV CHECKSUM=67f765e0030e661a7450f7e4877cfe008db4f57f177d5a08a6e26fd661cdd0bd

RUN swift sdk install \
  https://download.swift.org/swift-${SWIFT_VERSION}-release/static-sdk/swift-${SWIFT_VERSION}-RELEASE/swift-${SWIFT_VERSION}-RELEASE_static-linux-${SDK_VERSION}.artifactbundle.tar.gz \
  --checksum ${CHECKSUM}
