FROM golang:alpine AS builder

WORKDIR /app

COPY hello.go .

RUN go build -o hello hello.go

FROM alpine:3.19

COPY --from=builder /app/hello /hello

CMD ["/hello"]