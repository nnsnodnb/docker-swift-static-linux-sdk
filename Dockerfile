FROM swift:6.3.1-bookworm

ENV SWIFT_VERSION=6.3.1
ENV SDK_VERSION=0.1.0
ENV CHECKSUM=fac05271c1f7d060bd203240ce5251d5ca902d30ac899f553765dbb3a88b97ad

RUN swift sdk install \
  https://download.swift.org/swift-${SWIFT_VERSION}-release/static-sdk/swift-${SWIFT_VERSION}-RELEASE/swift-${SWIFT_VERSION}-RELEASE_static-linux-${SDK_VERSION}.artifactbundle.tar.gz \
  --checksum ${CHECKSUM}
