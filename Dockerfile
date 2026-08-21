FROM swift:6.0.1-bookworm

ENV SWIFT_VERSION=6.0.1
ENV SDK_VERSION=0.0.1
ENV CHECKSUM=d4f46ba40e11e697387468e18987ee622908bc350310d8af54eb5e17c2ff5481

RUN swift sdk install \
  https://download.swift.org/swift-${SWIFT_VERSION}-release/static-sdk/swift-${SWIFT_VERSION}-RELEASE/swift-${SWIFT_VERSION}-RELEASE_static-linux-${SDK_VERSION}.artifactbundle.tar.gz \
  --checksum ${CHECKSUM}
