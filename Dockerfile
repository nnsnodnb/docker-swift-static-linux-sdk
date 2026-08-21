FROM swift:6.0.0-bookworm

ENV SWIFT_VERSION=6.0
ENV SDK_VERSION=0.0.1
ENV CHECKSUM=7984c2cf175bde52ba6ea1fcbe27fc4a148a6237c41c719209c9288ed3ceb652

RUN swift sdk install \
  https://download.swift.org/swift-${SWIFT_VERSION}-release/static-sdk/swift-${SWIFT_VERSION}-RELEASE/swift-${SWIFT_VERSION}-RELEASE_static-linux-${SDK_VERSION}.artifactbundle.tar.gz \
  --checksum ${CHECKSUM}
