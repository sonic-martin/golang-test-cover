#!/usr/bin/env bash

go test -v ./... -coverprofile=coverage.out -coverpkg=./internal/... -covermode count
echo $?
go tool cover -html=coverage.out -o coverage.html
go tool cover -func=coverage.out
