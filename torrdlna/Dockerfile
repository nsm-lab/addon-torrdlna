ARG BUILD_FROM=hassioaddons/base-amd64:1.2.0
FROM ${BUILD_FROM}

# Copy root filesystem
COPY rootfs /

# Setup base
RUN apk add --no-cache minidlna transmission transmission-daemon

# Build arugments
ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_REF
ARG BUILD_VERSION

# Labels
LABEL \
    io.hass.name="TorrentDLNA" \
    io.hass.description="Install ReadyMedia (MiniDLNA) and Transmission to your Hass.io host" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="Botond Barabas <bboti86k@addons.community>" \
    org.label-schema.description="Install ReadyMedia (MiniDLNA) and Transmission to your Hass.io host" \
    org.label-schema.build-date=${BUILD_DATE} \
    org.label-schema.name="Tor" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.url="https://community.home-assistant.io/t/community-hass-io-add-on-tor/33822?u=frenck" \
    org.label-schema.usage="https://github.com/bboti86" \
    org.label-schema.vcs-ref=${BUILD_REF} \
    org.label-schema.vcs-url="https://github.com/bboti86" \
    org.label-schema.vendor="Community Hass.io Add-ons"
