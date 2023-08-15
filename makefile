build:
	podman build -t fit-folio . && \
	podman run -i --rm --name fit-folio fit-folio

clean:
	podman rmi fit-folio
