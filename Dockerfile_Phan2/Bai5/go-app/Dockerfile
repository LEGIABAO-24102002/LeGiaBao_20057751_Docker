
FROM golang:1.20 AS builder
WORKDIR /app


COPY go.mod ./
RUN go mod download


COPY . .


RUN CGO_ENABLED=0 GOOS=linux go build -o main .


FROM alpine:latest
WORKDIR /root/


RUN apk --no-cache add ca-certificates


COPY --from=builder /app/main .


EXPOSE 8080


CMD ["./main"]
