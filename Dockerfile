FROM swift:6.2.0-bookworm

ENV SWIFT_VERSION=6.2
ENV SDK_VERSION=0.0.1
ENV CHECKSUM=d2225840e592389ca517bbf71652f7003dbf45ac35d1e57d98b9250368769378

RUN swift sdk install \
  https://download.swift.org/swift-${SWIFT_VERSION}-release/static-sdk/swift-${SWIFT_VERSION}-RELEASE/swift-${SWIFT_VERSION}-RELEASE_static-linux-${SDK_VERSION}.artifactbundle.tar.gz \
  --checksum ${CHECKSUM}
