.PHONY: all image clean publish

IMAGE=weaveworksdemos/micro-sock

all: image

micro-sock: main.go
	env GOOS=linux GOARCH=amd64 go build -tags netgo

image: Dockerfile micro-sock
	docker build -t $(IMAGE) .

clean:
	rm -f micro-sock
	docker rmi -f $(IMAGE) 2>/dev/null || true

publish:
	docker push $(IMAGE)
