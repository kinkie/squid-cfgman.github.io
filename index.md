{%- comment -%}
arguments:
-    dir: the prefix in the path of pages to consider
-    numbers: true if you want the list to be numbered
{%- endcomment -%}
{%- if include.numbers -%}{%- assign prefix = "1."-%}{%- else -%}{%- assign prefix = "*"-%}{%- endif -%}
{%- assign pdir = site.pages | where_exp: "p", "p.url contains include.dir" -%}
{% for p in pdir -%}
{%- assign purl = p.url | replace: page.dir, "" | replace: ".html", "" -%}
{%- if purl == "" -%}{%- continue -%}{%- endif -%}
{%- assign pathsuffix = p.url | replace: ".html", "" | split: "/" | last -%}
{{prefix}} [{{ p.title | default: pathsuffix }}]({{ purl }})
{% endfor %}

{% include pages-list-by-path.html dir=page.dir %}
