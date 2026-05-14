FROM golang:1.25.10-alpine3.23 AS builder

WORKDIR /app

COPY hello.go .

RUN go build -o hello hello.go

FROM alpine:3.23.4

WORKDIR /app

COPY --from=builder /app/hello /app/hello

CMD ["/app/hello"]
