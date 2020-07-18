# Pandoc

## Introduction

### Debian

```bash
URL1=https://github.com/jgm/pandoc/releases/download/2.10/pandoc-2.10-1-amd64.deb
URL2=https://github.com/lierdakil/pandoc-crossref/releases/download/v0.3.7.0/pandoc-crossref-Linux-2.10.tar.xz

$ sudo apt-get update
$ sudo apt-get install -y software-properties-common \
    texlive
$ curl -sL ${URL1} -o pandoc.deb
$ dpkg -i pandoc.deb && rm -f pandoc.deb
$ curl -sL -o pandoc-crossref.tgz ${URL2}
$ tar -xvf pandoc-crossref.tgz
$ mv ./pandoc-crossref /usr/bin/pandoc-crossref && rm -fr pandoc-crossref*
$ pandoc --version && pandoc-crossref --version
```