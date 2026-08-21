FROM swift:6.0.2-bookworm

ENV SWIFT_VERSION=6.0.2
ENV SDK_VERSION=0.0.1
ENV CHECKSUM=aa5515476a403797223fc2aad4ca0c3bf83995d5427fb297cab1d93c68cee075

RUN swift sdk install \
  https://download.swift.org/swift-${SWIFT_VERSION}-release/static-sdk/swift-${SWIFT_VERSION}-RELEASE/swift-${SWIFT_VERSION}-RELEASE_static-linux-${SDK_VERSION}.artifactbundle.tar.gz \
  --checksum ${CHECKSUM}
