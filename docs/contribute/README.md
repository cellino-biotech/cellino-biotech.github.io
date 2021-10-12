---
sort: 10
---

# Contribution

## Rundocs
This wiki uses rundocs, with Jekyll backend for serving markdown on github.io

To get started, [Follow this tutorial](https://github.com/rundocs/starter/)

## Documentation

https://jekyll-rtd-theme.rundocs.io

## Local debug

```sh
make
make server
```

## The license

The theme is available as open source under the terms of the MIT License

source: `{{ page.path }}`

## site.pages

<!-- prettier-ignore-start -->

| source          | link                                                           |
| --------------- | -------------------------------------------------------------- |
{% for page in site.pages -%}
| {{ page.path }} | [{{ page.url | relative_url }}]({{ page.url | relative_url }}) |
{% endfor %}

<!-- prettier-ignore-end -->

source: `{{ page.path }}`
<footer>Copyright © 2021 Cellino Biotech</footer>