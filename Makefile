.PHONY: proto

proto:
	protoc --go-grpc_out=proto --go_out=proto proto/notes.proto

tidy:
	go mod tidy

run:
	go run main.go

note-add:
	go run client/main.go save -title test -content "Lorem ipsum dolor sit amet, consectetur "

note-get:
	go run client/main.go load -keyword Lorem
