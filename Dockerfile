ARG SWIFT_VERSION=6.4.1
ARG VARIANT=resolute
ARG SDK_VERSION=0.1.0

FROM swift:${SWIFT_VERSION}-${VARIANT}

ARG SWIFT_VERSION
ARG SDK_VERSION

ENV SWIFT_VERSION=${SWIFT_VERSION}
ENV SDK_VERSION=${SDK_VERSION}
ENV CHECKSUM=cef5592d7430ed3c5ae1ddda479849c6f5252bd94a5723db1559f984caf38a7c

COPY ./swift-${SWIFT_VERSION}-RELEASE_static-linux-${SDK_VERSION}.artifactbundle.tar.gz /tmp/swift-${SWIFT_VERSION}-RELEASE_static-linux-${SDK_VERSION}.artifactbundle.tar.gz

RUN swift sdk install \
    /tmp/swift-${SWIFT_VERSION}-RELEASE_static-linux-${SDK_VERSION}.artifactbundle.tar.gz \
    --checksum ${CHECKSUM}
RUN rm /tmp/swift-${SWIFT_VERSION}-RELEASE_static-linux-${SDK_VERSION}.artifactbundle.tar.gz
