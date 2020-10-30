# gocv build env


```Dockerfile
FROM docker.io/querycap/gocv:0.25.0-${TARGETARCH}

WORKDIR /go/src
COPY ./ ./

RUN go build ...
```

