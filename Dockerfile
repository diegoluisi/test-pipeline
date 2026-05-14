FROM golang:alpine AS builder

WORKDIR /app

COPY hello.go .

RUN go build -o hello hello.go

FROM alpine:latest

COPY --from=builder /app/hello /hello

CMD ["/hello"]