<p align="center">
    <a alt="Docker-Cloud Build Status" href="https://hub.docker.com/r/otaviof/go-dev-sh">
        <img alt="Docker-Cloud Build Status" src="https://img.shields.io/docker/cloud/build/otaviof/go-dev-sh.svg">
    </a>
</p>

# `go-dev-sh`

Linux based container image carrying Golang development tooling, with a command line helper to spin
up mounting local directory, keeping shell history and `GOPATH` outside as well. Container images are
in [Docker-Hub][dockerhub].

## Usage

In a project where you would like to have Golang development tooling, run:

```bash
go-dev-sh
```

The directory will be mounted upon `/src` and the working directory will be kept the same inside the
container.

Export `GO_DEV_SH_IMAGE_TAG` environment variable to use a custom container image/tag.

## Installing

### Command-Line

To install the command-line helper locally, run:

```bash
make install
```

Default instalaltion folder is at `/usr/local/bin/`, you can export a different location during
`install` target, to install in a different base folder.

```bash
make install SCRIPT_INSTALL_DIR="/usr/local/bin/"
```

### Container Image

The container image can be build with the following targets, consider `GO_DEV_SH_IMAGE_TAG` to use a
custom image-tag combination.

```bash
make build GO_DEV_SH_IMAGE_TAG="otaviof/go-dev-sh:latest"
```

[dockerhub]: https://hub.docker.com/r/otaviof/go-dev-sh