# syntax=docker/dockerfile:1

FROM golang:1.17-alpine

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN apk update && apk add --no-cache gcc
RUN apk add musl-dev

RUN go build -o /cobaltdocker

EXPOSE 8080

CMD [ "/cobaltdocker" ]
