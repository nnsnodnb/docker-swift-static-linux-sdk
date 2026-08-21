FROM swift:6.2.3-bookworm

ENV SWIFT_VERSION=6.2.3
ENV SDK_VERSION=0.0.1
ENV CHECKSUM=f30ec724d824ef43b5546e02ca06a8682dafab4b26a99fbb0e858c347e507a2c

RUN swift sdk install \
  https://download.swift.org/swift-${SWIFT_VERSION}-release/static-sdk/swift-${SWIFT_VERSION}-RELEASE/swift-${SWIFT_VERSION}-RELEASE_static-linux-${SDK_VERSION}.artifactbundle.tar.gz \
  --checksum ${CHECKSUM}
