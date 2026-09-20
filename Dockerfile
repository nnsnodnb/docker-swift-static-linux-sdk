ARG SWIFT_VERSION=6.4.0
ARG VARIANT=resolute
ARG SDK_VERSION=0.1.0

FROM swift:${SWIFT_VERSION}-${VARIANT}

ARG SWIFT_VERSION
ARG SDK_VERSION

ENV SWIFT_VERSION=${SWIFT_VERSION}
ENV SDK_VERSION=${SDK_VERSION}
ENV CHECKSUM=47d2fd89eebfdf9eb4d536b6710414297f755c17926cdebc4742c08982b40a9e

COPY ./swift-${SWIFT_VERSION}-RELEASE_static-linux-${SDK_VERSION}.artifactbundle.tar.gz /tmp/swift-${SWIFT_VERSION}-RELEASE_static-linux-${SDK_VERSION}.artifactbundle.tar.gz

RUN swift sdk install \
    /tmp/swift-${SWIFT_VERSION}-RELEASE_static-linux-${SDK_VERSION}.artifactbundle.tar.gz \
    --checksum ${CHECKSUM}
RUN rm /tmp/swift-${SWIFT_VERSION}-RELEASE_static-linux-${SDK_VERSION}.artifactbundle.tar.gz
