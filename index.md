{%- comment -%}
arguments:
-    dir: the prefix in the path of pages to consider
-    numbers: true if you want the list to be numbered
{%- endcomment -%}
{%- assign pdir = site.pages -%}
{% for p in pdir -%}
{%- assign purl = p.url | replace: page.dir, "" | replace: ".html", "" -%}
{%- if purl == "" -%}{%- continue -%}{%- endif -%}
{%- assign pathsuffix = p.url | replace: ".html", "" | split: "/" | last -%}
{{prefix}} [{{ p.title | default: pathsuffix }}]({{ purl }})
{% endfor %}

{% include pages-list-by-path.html dir=page.dir %}
