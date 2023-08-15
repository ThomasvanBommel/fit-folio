build:
	podman build -t fit-folio . && \
	podman images

clean:
	podman rmi fit-folio
