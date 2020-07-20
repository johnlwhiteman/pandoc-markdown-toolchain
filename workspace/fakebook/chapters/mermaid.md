# Mermaid

[Mermaid](https://mermaid-js.github.io/mermaid/#/) is a tool that generates diagrams and charts, from markdown-inspired text definitions.

## Execute:

I'm using the [pandoc-imagine](https://github.com/hertogp/imagine) filter although [pandoc-run-filter](https://github.com/johnlwhiteman/pandoc-run-filter) should work fine too.

### Markdown:

Take a look at the pandoc-imagine documentation for more details:

* [mermaid.md](https://github.com/hertogp/imagine/blob/master/examples/mermaid.md)
* [mermaid.pdf](https://github.com/hertogp/imagine/blob/master/examples/mermaid.pdf)

``````
```{.mermaid im_opt="-H 300" im_fmt="png" im_out="img,fcb"}
# ... mermaid goodness goes here
```
``````

### Command Line:

```bash
$ mmdc -h
Usage: mmdc [options]

Options:
  -V, --version                                   output the version number
  -t, --theme [theme]                             Theme of the chart, could be default, forest, dark or neutral. Optional. Default: default (default: "default")
  -w, --width [width]                             Width of the page. Optional. Default: 800 (default: "800")
  -H, --height [height]                           Height of the page. Optional. Default: 600 (default: "600")
  -i, --input <input>                             Input mermaid file. Required.
  -o, --output [output]                           Output file. It should be either svg, png or pdf. Optional. Default: input + ".svg"
  -b, --backgroundColor [backgroundColor]         Background color. Example: transparent, red, '#F0F0F0'. Optional. Default: white
  -c, --configFile [configFile]                   JSON configuration file for mermaid. Optional
  -C, --cssFile [cssFile]                         CSS file for the page. Optional
  -p --puppeteerConfigFile [puppeteerConfigFile]  JSON configuration file for puppeteer. Optional
  -h, --help                                      output usage information
```


## Examples

We'll be adding more custom one later:

```{.mermaid}
graph LR
    A[Hard edge] -->|Link text| B(Round edge)
    B --> C{Decision}
    C -->|One| D[Result one]
    C -->|Two| E[Result two]
```

``````
```{.mermaid}
graph LR
    A[Hard edge] -->|Link text| B(Round edge)
    B --> C{Decision}
    C -->|One| D[Result one]
    C -->|Two| E[Result two]
```
``````

```{.mermaid}
graph TD
    B["I am a fa:fa-car."]
    B-->C["You are a fa:fa-linux."]
    B-->D("They are fa:fa-user-secret.");
    B-->E("We are fa:fa-thumbs-up.");
```

``````
```{.mermaid}
graph TD
    B["I am a fa:fa-car."]
    B-->C["You are a fa:fa-linux."]
    B-->D("They are fa:fa-user-secret.");
    B-->E("We are fa:fa-thumbs-up.");
```
``````

Note: *The icons are coming from [fontawesome](https://fontawesome.com/).*


## Install

I had trouble globally installing it with npm. I kept getting strange error messages that didn't help much in regards to troubleshooting. Other people were seeing the strange message too. The [response](https://github.com/mermaidjs/mermaid.cli/issues/16) was to install locally then fully qualify path to *mmdc* executable. Not a solution, just a workaround. Installing it with yarn gave me no trouble at all, but it required more space for the docker image. I'm looking at making a simple python only port as a pandoc filter.


```bash
$ npm install -g mermaid.cli
# OR
$ yarn global add mermaid.cli mermaid-filter
```

## Links

* Homepage [[link](https://mermaid-js.github.io/mermaid/#/)]
* Mermaid CLI [[link](https://github.com/mermaidjs/mermaid.cli)]

