# markdown-pandoc-toolchain  (v0.0.1)

A ready-to-run Docker image that provides a collection of tools for those who write in markdown and use pandoc to convert to other formats.

* asymptote (asy) (2.47)
* blockdiag (2.0.1)
* ditaa (0.9)
* figlet (2.2.5)
* graphviz (2.40.1-6)
* kindlegen (2.9)
* matplotlib (3.2.2)
* matplotlib-venn (0.11.5)
* mermaid.cli (mmdc) (0.5.1)
* mscgen (0.20)
* nodejs (10.21.0)
* numpy (1.19.0)
* nwdiag (2.0.0)
* pandoc (2.10)
* pandoc-citeproc (0.17.0.1)
* pandoc-crossref (0.3.7.0)
* pandoc-imagine (0.1.6)
* pandoc-run-filter (0.0.1)
* pillow (7.2.0)
* plantuml (1.2018.13)
* pygal (2.0.0)
* seqdiag (2.0.0)
* texlive ()

## Requirements

* Docker installed on your host system.
  * Windows 10 build >= 2004 and WSL 2 activated [[link](https://docs.docker.com/docker-for-windows/wsl/)]
  * Linux - anything should work
* 1.5 G disk space (yes quite big, but so are your dreams)
* Optional: Visual Studio Code on host system. [[link](https://code.visualstudio.com/download)]

## Build Image
```bash
$ docker build -t pandoc-run-env .
$ docker image ls
```

## Run Container
```bash
$ docker container
```

## Interactive Shell Mode
```bash
$ docker exec -it pandoc-run-env bash
```

## Remove
```bash
$ docker rm --force pandoc-run-env
```

