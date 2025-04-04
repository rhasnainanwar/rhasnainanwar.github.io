---
layout: page
title: Research Talks
permalink: /talks/
---

{% assign sorted_talks = site.data.talks | sort: 'year' | reverse %}

{% for group in sorted_talks | group_by: 'year' %}
  <h2>{{ group.name }}</h2>
  <div class="publications">
    {% for item in group.items %}
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
    {% endfor %}
  </div>
{% endfor %}