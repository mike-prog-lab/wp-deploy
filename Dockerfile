FROM alpine:3.14 as base

WORKDIR /build

COPY . .

FROM bitnami/wordpress:5

COPY --from=base --chown=1001:1001 /build/src /bitnami/wordpress
