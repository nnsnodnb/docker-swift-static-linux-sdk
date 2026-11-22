ARG SWIFT_VERSION=6.4.3
ARG VARIANT=resolute
ARG SDK_VERSION=0.1.0

FROM swift:${SWIFT_VERSION}-${VARIANT}

ARG SWIFT_VERSION
ARG SDK_VERSION

ENV SWIFT_VERSION=${SWIFT_VERSION}
ENV SDK_VERSION=${SDK_VERSION}
ENV CHECKSUM=529e6982974de78793c8348c1459105a772f54b464a51edf074e5b9c4bfe7c73

COPY ./swift-${SWIFT_VERSION}-RELEASE_static-linux-${SDK_VERSION}.artifactbundle.tar.gz /tmp/swift-${SWIFT_VERSION}-RELEASE_static-linux-${SDK_VERSION}.artifactbundle.tar.gz

RUN swift sdk install \
    /tmp/swift-${SWIFT_VERSION}-RELEASE_static-linux-${SDK_VERSION}.artifactbundle.tar.gz \
    --checksum ${CHECKSUM}
RUN rm /tmp/swift-${SWIFT_VERSION}-RELEASE_static-linux-${SDK_VERSION}.artifactbundle.tar.gz
