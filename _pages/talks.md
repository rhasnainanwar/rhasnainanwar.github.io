---
layout: page
title: Talks
permalink: /talks/
nav: true
nav_order: 4
---

{% assign years = site.data.talks | sort | reverse %}
{% for year in years %}
## {{ year[0] }}
{% for talk in year[1] %}
-   {% if talk.link %}[**{{ talk.title }}**]({{ talk.link }}){% else %}**{{ talk.title }}**{% endif %}
    {% if talk.youtube_embed %}<iframe width="560" height="315" src="{{ talk.youtube_embed }}" frameborder="0" allowfullscreen></iframe>{% endif %}
    * {{ talk.description }}

{% endfor %}
{% endfor %}