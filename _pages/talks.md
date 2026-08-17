---
layout: page
title: Talks
permalink: /talks/
nav: true
nav_order: 4
---

{% assign talks_by_year = site.data.talks | group_by: "year" | sort: "name" | reverse %}
{% for group in talks_by_year %}
## {{ group.name }}
{% for talk in group.items %}
-   {% if talk.link %}[**{{ talk.title }}**]({{ talk.link }}){% else %}**{{ talk.title }}**{% endif %}
    {% if talk.youtube_embed %}<iframe width="560" height="315" src="{{ talk.youtube_embed }}" frameborder="0" allowfullscreen></iframe>{% endif %}
    * {{ talk.description }}

{% endfor %}
{% endfor %}