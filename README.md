# pandoc-markdown-toolchain

A ready-to-run Docker environment that provides a collection of tools and other goodies for those who like to write in markdown and use pandoc to convert to other formats.

## Features

* blockdiag
* ditaa
* figlet
* kindlegen
* latex
* markdown
* matplotlib
* matplotlib-venn
* mermaid
* mscgen
* nodejs
* numpy
* nwdiag
* pandoc
* pandoc-citeproc
* pandoc-crossref
* pandoc-imagine (most sub-filters supported)
* pandoc-run-filter
* pillow
* plantuml
* pygal
* seqdiag
* texlive

## Install

```bash
$ https://github.com/johnlwhiteman/markdown-pandoc-toolchain.git
$ cd ./markdown-pandoc-toolchain
# Linux
$ ./bin/go
# Windows
$ .\bin\go.cmd

# Note: This may take a while ... go learn a new language or something.
```

## Test (In Container)
```bash
$ pytest /home/tests/tests.py
```

## Some Useful Commands

### Build Image
```bash
# Linux
$ ./bin/build
# Windows
$ .\bin\build.cmd
```

### Run Container
```bash
# Linux
$ ./bin/run
# Windows
$ .\bin\run.cmd
```

### Interactive Shell Mode
```bash
# Linux
$ ./bin/exec
# Windows
$ .\bin\exec.cmd
```

### Stop Container
```bash
# Linux
$ ./bin/stop
# Windows
$ .\bin\stop.cmd
```

### Start Container
```bash
# Linux
$ ./bin/start
# Windows
$ .\bin\start.cmd
```

### Show Statues
```bash
# Linux
$ ./bin/show
# Windows
$ .\bin\show.cmd
```

### Remove All
```bash
# Linux
$ ./bin/clean
# Windows
$ .\bin\clean.cmd

# Note: All content under ./projects is preserved
```

## Requirements
* Install git so you can clone the project [[link](https://git-scm.com/downloads)]
* Install Docker: [[link](https://docs.docker.com/get-docker/)]
* Install Docker Compose: [[link](https://docs.docker.com/compose/install/)]
* Install python >= v3.8 [[link](https://www.python.org/downloads/)]
* ~2.5GB disk space (yes quite big, but so are your dreams)
* Optional: Visual Studio Code on host system. [[link](https://code.visualstudio.com/download)]

