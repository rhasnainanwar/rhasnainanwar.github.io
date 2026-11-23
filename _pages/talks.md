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
<ul class="talk-list">
{% for talk in group.items %}
  <li class="talk-item{% if talk.youtube_embed %} talk-item--video{% else %} talk-item--text{% endif %}">
    {% if talk.youtube_embed %}
    <div class="talk-video">
      <iframe src="{{ talk.youtube_embed }}" title="{{ talk.title | escape }}" loading="lazy" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
    </div>
    {% endif %}
    <div class="talk-content">
      <div class="talk-meta">
        <span class="talk-type">{{ talk.type }}</span>
        <span class="talk-year">{{ talk.year }}</span>
      </div>
      <h3 class="talk-title">
        {% if talk.link %}<a href="{{ talk.link }}">{{ talk.title }}</a>{% else %}{{ talk.title }}{% endif %}
      </h3>
      <p class="talk-description">{{ talk.description }}</p>
      {% if talk.link %}
      <a class="talk-link" href="{{ talk.link }}">
        {% if talk.type == "Podcast" %}Listen to the episode{% elsif talk.youtube_embed %}Watch the talk{% else %}View presentation{% endif %}
        <span aria-hidden="true">&rarr;</span>
      </a>
      {% endif %}
    </div>
  </li>
{% endfor %}
</ul>
{% endfor %}