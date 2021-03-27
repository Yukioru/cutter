FROM crystallang/crystal:1.0.0-alpine as builder

WORKDIR /app
COPY . /app
RUN shards install --ignore-crystal-version
RUN shards build --release

FROM alpine:latest
WORKDIR /app
COPY --from=builder /app/public /app/public
COPY --from=builder /app/bin/cutter /app/cutter

VOLUME [ "/app/config/config.conf" ]
CMD ["/app/cutter"]
EXPOSE 8080
