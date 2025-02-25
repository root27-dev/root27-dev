FROM rust:latest as builder


WORKDIR /root27


COPY . .

RUN cargo build --release


FROM gcr.io/distroless/cc-debian12

COPY --from=builder /root27/target/release/root27-dev /root27

COPY --from=builder /root27/assets /assets

COPY --from=builder /root27/templates /templates

ENTRYPOINT ["/root27"]
