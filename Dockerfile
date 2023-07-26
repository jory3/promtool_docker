ARG PROMTOOL_VERSION=v2.46.0
ARG BASE_IMAGE=alpine:3.18

FROM prom/prometheus:$PROMTOOL_VERSION as prometheus

FROM $BASE_IMAGE
COPY --from=prometheus /bin/promtool /bin/promtool
CMD [ "promtool" ]
