.PHONY: proto

proto:
	protoc --go-grpc_out=proto --go_out=proto proto/notes.proto

tidy:
	go mod tidy

run:
	go run main.go
