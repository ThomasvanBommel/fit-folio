build:
	podman build -t fit-folio . && \
	podman run -i --rm --name fit-folio fit-folio

clean:
	podman rmi -i fit-folio; \
	DANGLES=$$(podman images -f "dangling=true" -q); \
	podman rmi -i $${DANGLES:-"unknown"};
