FROM swift:6.1.2-bookworm

ENV SWIFT_VERSION=6.1.2
ENV SDK_VERSION=0.0.1
ENV CHECKSUM=df0b40b9b582598e7e3d70c82ab503fd6fbfdff71fd17e7f1ab37115a0665b3b

RUN swift sdk install \
  https://download.swift.org/swift-${SWIFT_VERSION}-release/static-sdk/swift-${SWIFT_VERSION}-RELEASE/swift-${SWIFT_VERSION}-RELEASE_static-linux-${SDK_VERSION}.artifactbundle.tar.gz \
  --checksum ${CHECKSUM}
