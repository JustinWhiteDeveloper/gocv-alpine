FROM denismakogon/gocv-alpine:4.0.0-buildstage as build-stage

RUN go get -u -d gocv.io/x/gocv
RUN cd $GOPATH/src/gocv.io/x/gocv && go build -o $GOPATH/bin/gocv-version ./cmd/version/main.go
ADD ./src* ./
RUN  go run test.go

FROM denismakogon/gocv-alpine:4.0.0-runtime
COPY --from=build-stage /go/bin/gocv-version /gocv-version
ENTRYPOINT ["/gocv-version"]
