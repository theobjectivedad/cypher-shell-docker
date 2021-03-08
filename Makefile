
TAG:=theobjectivedad/cypher-shell-docker:latest

build:
	docker build . -t $(TAG)

push:
	docker push $(TAG)