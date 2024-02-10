#!/usr/bin/env bash

go test -v ./... -coverprofile=coverage.out -coverpkg=./internal/... -covermode count
echo $?
go tool cover -html=coverage.out -o coverage.html
go tool cover -func=coverage.out

# workaround 1: changes semantic of the coverage result
go test -v ./... -coverprofile=coverage.out -coverpkg=./... -covermode count
echo $?

# workaround 2: doesnt uses the changes in go 1.22.0
GOEXPERIMENT=nocoverageredesign go test -v ./... -coverprofile=coverage.out -coverpkg=./internal/... -covermode count
echo $?
