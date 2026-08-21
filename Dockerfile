FROM swift:6.2.1-bookworm

ENV SWIFT_VERSION=6.2.1
ENV SDK_VERSION=0.0.1
ENV CHECKSUM=08e1939a504e499ec871b36826569173103e4562769e12b9b8c2a50f098374ad

RUN swift sdk install \
  https://download.swift.org/swift-${SWIFT_VERSION}-release/static-sdk/swift-${SWIFT_VERSION}-RELEASE/swift-${SWIFT_VERSION}-RELEASE_static-linux-${SDK_VERSION}.artifactbundle.tar.gz \
  --checksum ${CHECKSUM}
