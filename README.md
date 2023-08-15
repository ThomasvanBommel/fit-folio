# fit-folio
Personal fitness tracker

## Requirements
- [make](https://www.gnu.org/software/make/)
- [podman](https://podman.io/)

## Build & Run
```bash
make
```

## Clean Up
```bash
make cleanup
```

## Example Output
```
podman build -t fit-folio . && \
podman run -i --rm --name fit-folio fit-folio
STEP 1/7: FROM docker.io/library/golang:1.21.0-alpine
STEP 2/7: WORKDIR /usr/src/app
--> 6ecdc80e95b
STEP 3/7: COPY go.mod ./
--> e68b62fd174
STEP 4/7: RUN go mod download
go: no module dependencies to download
--> a1dec326e03
STEP 5/7: COPY . .
--> a4d3b2d6de1
STEP 6/7: RUN go build -o /usr/local/bin/app ./...
--> 60ff91eaf4b
STEP 7/7: CMD ["app"]
COMMIT fit-folio
--> b9cefb6ab04
Successfully tagged localhost/fit-folio:latest
b9cefb6ab0473b2d5c2f224a539612e67b515b67e0ed0a57092b6716907ba918
Hello there ;)
```
