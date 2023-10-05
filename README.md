# Latest fsmark binary

[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/fsmark)](https://artifacthub.io/packages/search?repo=fsmark)

This image contains the current fsmark binary.

## Installation

### CI/Image Install

```
COPY --from=ghcr.io/simonwoodtli/fsmark:latest /bin/fsmark /where/You/Want
```

### Local install

1. Build image: 

```
podman build -t alpine-fsmark -f- . <<EOF
FROM alpine:latest
COPY --from=ghcr.io/simonwoodtli/fsmark:latest /bin/fsmark /bin/fsmark
EOF
```

2. Run container in detached mode:

```
podman run -dt localhost/alpine-fsmark
```

3. Get Container ID: 

```
podman ps
```

4. Copy fsmark to your host: 

```
podman cp <containerId>:/bin/fsmark /where/You/Want
```

Related:

* https://sourceforge.net/projects/fsmark/
