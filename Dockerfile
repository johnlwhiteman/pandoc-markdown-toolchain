FROM python:3.8.3-slim-buster AS STAGE1

# Update these to the latest if you want
ENV PANDOC=https://github.com/jgm/pandoc/releases/download/2.10/pandoc-2.10-1-amd64.deb
ENV PANDOCC=https://github.com/lierdakil/pandoc-crossref/releases/download/v0.3.7.0/pandoc-crossref-Linux-2.10.tar.xz
ENV DEBIAN=https://dl.yarnpkg.com/debian/
ENV KINDLEGEN=http://www.amazon.com/gp/redirect.html/ref=amb_link_6?location=http://kindlegen.s3.amazonaws.com/kindlegen_linux_2.6_i386_v2_9.tar.gz&token=536D040605DC9B19419F3E7C28396577B326A45A&source=standards&pf_rd_m=ATVPDKIKX0DER&pf_rd_s=center-7&pf_rd_r=2GK0TQH3KFWWE4ESFDC5&pf_rd_r=2GK0TQH3KFWWE4ESFDC5&pf_rd_t=1401&pf_rd_p=51e198fa-b346-4ea1-ab56-68aefc1abc58&pf_rd_p=51e198fa-b346-4ea1-ab56-68aefc1abc58&pf_rd_i=1000765211
ENV YARN=https://dl.yarnpkg.com/debian/pubkey.gpg

# Set languages
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

ARG USER=me
ARG HOMEDIR=/home/${USER}
ARG TESTSDIR=${HOMEDIR}/tests

WORKDIR /tmp

RUN mkdir -p /usr/share/man/man1 ${TESTSDIR} && \
    echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections && \
    # Install Dependencies
    apt-get update && \
    apt-get install -y --no-install-recommends \
    apt-utils \
    gnupg2 \
    curl \
    git \
    librsvg2-2 \
    lmodern \
    make \
    nodejs \
    software-properties-common \
    sudo \
    texlive \
    vim \
    xz-utils && \
    curl -sS ${YARN} | apt-key add - && \
    echo "deb ${DEBIAN} stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
    yarn && \
    # Install Pandoc
    curl -sL -o pandoc.deb ${PANDOC} && \
    dpkg -i pandoc.deb && rm -f pandoc.deb && \
    curl -sL -o pandoc-crossref.tgz ${PANDOCC} && \
    tar -xvf pandoc-crossref.tgz && \
    mv ./pandoc-crossref /usr/bin/pandoc-crossref && rm -fr pandoc-crossref* && \
    pandoc --version && pandoc-crossref --version && \
    # Install Kindle
    mkdir -p /tmp/tmp && cd /tmp/tmp && \
    curl -sL -o kindlegen.tgz ${KINDLEGEN} && tar -xvf kindlegen.tgz && \
    mv ./kindlegen /usr/bin/kindlegen && cd /tmp && rm -fr /tmp/tmp && \
    # Install Application Features
    yarn global add mermaid.cli mermaid-filter && yarn cache clean && \
    apt-get install -y --no-install-recommends \
    ditaa \
    figlet \
    mscgen \
    pandoc-citeproc \
    plantuml && \
    mv /usr/bin/ditaa /usr/bin/ditaa.jar && \
    echo '#!/usr/bin/env bash' > /usr/bin/ditaa && \
    echo 'java -jar /usr/bin/ditaa.jar' >> /usr/bin/ditaa && \
    chmod +x /usr/bin/ditaa && \
    # Install Python Features
    python -m pip install --no-cache-dir \
    blockdiag \
    matplotlib \
    matplotlib-venn \
    nwdiag \
    numpy \
    pandoc-imagine \
    pandoc-run-filter \
    pillow \
    pygal \
    pytest \
    seqdiag && \
    rm -fr /tmp/

# Setup default user
ARG UID=1000
ARG GID=1000
RUN useradd -m ${USER} --uid=${UID} && \
    echo "${USER} ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
COPY ./assets/* ${HOMEDIR}/
COPY ./tests/* ${HOMEDIR}/tests
RUN chmod +x ${HOMEDIR}/.bashrc && \
    chown -R ${USER}:${USER} ${HOMEDIR} ${TESTSDIR}
USER ${UID}:${GID}
WORKDIR ${HOMEDIR}/workspace
ENTRYPOINT ["/bin/bash"]