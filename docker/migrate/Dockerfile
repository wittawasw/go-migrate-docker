FROM golang:1.21-alpine3.19 AS builder

RUN apk add --no-cache git gcc musl-dev make

ENV GO111MODULE=on
ENV CGO_ENABLED=1
ENV CGO_CFLAGS="-D_LARGEFILE64_SOURCE"

RUN go install -tags 'sqlite3' github.com/golang-migrate/migrate/v4/cmd/migrate@latest

FROM alpine:3.19

RUN apk add --no-cache ca-certificates

COPY --from=builder /go/bin/migrate /usr/local/bin/migrate
RUN ln -s /usr/local/bin/migrate /migrate

ENTRYPOINT ["migrate"]
CMD ["--help"]