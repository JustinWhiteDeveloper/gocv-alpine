# GoCV OpenCV 4.0 Alpine Docker image

 - Alpine 3.7
 - Golang 1.10
 - OpenCV 4.0.0

## Setup

docker build -t denismakogon/gocv-alpine:4.0.0-buildstage ./buildstage
docker build -t denismakogon/gocv-alpine:4.0.0-runtime ./runtime
docker build .
