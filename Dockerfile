ARG SWIFT_VERSION=6.4.2
ARG VARIANT=resolute
ARG SDK_VERSION=0.1.0

FROM swift:${SWIFT_VERSION}-${VARIANT}

ARG SWIFT_VERSION
ARG SDK_VERSION

ENV SWIFT_VERSION=${SWIFT_VERSION}
ENV SDK_VERSION=${SDK_VERSION}
ENV CHECKSUM=3786b179936d9cc9e266dd506bd1654176358d7b25288e243359f4d17cc4dc5a

COPY ./swift-${SWIFT_VERSION}-RELEASE_static-linux-${SDK_VERSION}.artifactbundle.tar.gz /tmp/swift-${SWIFT_VERSION}-RELEASE_static-linux-${SDK_VERSION}.artifactbundle.tar.gz

RUN swift sdk install \
    /tmp/swift-${SWIFT_VERSION}-RELEASE_static-linux-${SDK_VERSION}.artifactbundle.tar.gz \
    --checksum ${CHECKSUM}
RUN rm /tmp/swift-${SWIFT_VERSION}-RELEASE_static-linux-${SDK_VERSION}.artifactbundle.tar.gz
