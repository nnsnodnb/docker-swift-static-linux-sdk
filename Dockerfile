FROM swift:6.2.4-bookworm

ENV SWIFT_VERSION=6.2.4
ENV SDK_VERSION=0.1.0
ENV CHECKSUM=24bdf84495dd31a6de2eb679647c1982b747bfbfe1a2060c779d84dcecd902a4

RUN swift sdk install \
  https://download.swift.org/swift-${SWIFT_VERSION}-release/static-sdk/swift-${SWIFT_VERSION}-RELEASE/swift-${SWIFT_VERSION}-RELEASE_static-linux-${SDK_VERSION}.artifactbundle.tar.gz \
  --checksum ${CHECKSUM}
