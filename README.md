# pandoc-markdown-toolchain

A ready-to-run Docker environment that provides a collection of tools and other goodies for those who like to write in markdown and use pandoc to convert to other formats.

* blockdiag (2.0.1)
* ditaa (0.9)
* figlet (2.2.5)
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
* pandoc-imagine (0.1.6) (some sub-filters supported)
* pandoc-run-filter (0.0.1)
* pillow (7.2.0)
* plantuml (1.2018.13)
* pygal (2.0.0)
* seqdiag (2.0.0)

## Install

```bash
$ https://github.com/johnlwhiteman/markdown-pandoc-toolchain.git
$ cd ./markdown-pandoc-toolchain
$ ./bin/go
# Note: This may take a while ... go learn a new language.
```

## Some Commands

### Build Image
```bash
$ ./bin/build
```

### Run Container
```bash
$ ./bin/run
```

### Interactive Shell Mode
```bash
$ ./bin/exec
```

### Stop Container
```bash
$ ./bin/stop
```

### Start Container
```bash
$ ./bin/start
```

### Show Statues
```bash
$ ./bin/show
```

### Remove All
```bash
$ ./bin/clean
# Note: Content under ./projects preserved
```

## Requirements

* Docker installed on your host system. [[link](https://docs.docker.com/get-docker/)]
  * Windows 10 build >= 2004 and WSL 2 activated [[link](https://docs.docker.com/docker-for-windows/wsl/)]
  * Linux - anything should work
*  Docker Compose [[link](https://docs.docker.com/compose/install/)]
* 2.0GB disk space (yes quite big, but so are your dreams)
* Optional: Visual Studio Code on host system. [[link](https://code.visualstudio.com/download)]

