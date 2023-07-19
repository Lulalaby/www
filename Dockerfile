FROM rust:1.70-alpine

ARG REF=""
ARG COMMIT=""
ARG TIME=""

ENV COMMIT=${COMMIT}
ENV REF=${REF}
ENV TIME=${TIME}
ENV CT=${CT}

ADD . .

RUN apk add --no-cache musl-dev libressl-dev
RUN cargo build --release

CMD ["./target/release/www"]
