build:
	docker build -t ownport/nomad:0.8.6 .

server-console:
	docker run -ti --rm --name nomad-server \
		ownport/nomad:0.8.6 \
		server

client-console:
	docker run -ti --rm --name nomad-server \
		ownport/nomad:0.8.6 \
		client

nomad-version:
	docker run -ti --rm --name nomad-server \
		ownport/nomad:0.8.6 \
		version

console:
	docker run -ti --rm --name nomad-server \
		ownport/nomad:0.8.6 \
		bash

