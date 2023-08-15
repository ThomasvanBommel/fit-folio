FROM docker.io/library/golang:1.21.0-alpine

WORKDIR /usr/src/app

COPY go.mod ./
RUN go mod download

COPY . .
RUN go build -o /usr/local/bin/app ./...

CMD ["app"]
