# Latest fsmark binary

[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/fsmark)](https://artifacthub.io/packages/search?repo=fsmark)

This image contains the current fsmark binary.

## Installation

### CI/Image Install

```
COPY --from=ghcr.io/simonwoodtli/fsmark:latest /bin/fsmark/where/You/Want
```

### Local install

1. Build image: 

```
docker build -t alpine-fsmark -f- . <<EOF
FROM alpine:latest
COPY --from=ghcr.io/simonwoodtli/fsmark:latest /bin/fsmark /bin/fsmark
EOF
```

2. Copy fsmark to your host: 

```
docker run --rm -v $HOME/.local/bin:/mnt alpine-fsmark sh -c "install /bin/fsmark /mnt"
```

Related:

* https://sourceforge.net/projects/fsmark/
