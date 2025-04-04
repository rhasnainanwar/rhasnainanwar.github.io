---
layout: page
title: Research Talks
permalink: /talks/
---

{% assign sorted_talks = site.data.talks | values | flatten | sort: 'year' | reverse %}

{% for item in sorted_talks %}
  {% if forloop.first or item.year != previous_year %}
    {% assign previous_year = item.year %}
    <h2>{{ item.year }}</h2>
    <div class="publications">
  {% endif %}
  <div class="publication">
    {% if item.youtube_embed %}
      <div class="publication-video">
        <iframe width="560" height="315" src="{{ item.youtube_embed }}" frameborder="0" allowfullscreen></iframe>
      </div>
    {% endif %}
    <div class="publication-content">
      <div class="publication-title">
        {% if item.link %}
          <a href="{{ item.link }}">{{ item.title }}</a>
        {% else %}
          {{ item.title }}
        {% endif %}
      </div>
      <div class="publication-description">
        {{ item.description | markdownify }}
      </div>
    </div>
  </div>
  {% if forloop.last or item.year != sorted_talks[forloop.index].year %}
    </div>
  {% endif %}
{% endfor %}