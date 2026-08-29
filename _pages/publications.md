---
layout: page
permalink: /publications/
title: Publications
description: >
  Publications organized by category and listed in reverse chronological order.
  A complete list is available on
  <a href='https://scholar.google.com/citations?user=w6pmCBMAAAAJ'>Google Scholar</a>.
nav: true
nav_order: 1

# Years to loop over
preprints_years: [2026]
articles_years: [2026, 2025, 2024, 2023, 2022, 2021, 2020, 2019, 2018, 2017, 2016, 2015]
bookchapters_years: [2019]
thesis_years: [2016]
---

<div class="publications">

  {% if page.preprints_years %}
  <h2 class="pub-type">Preprints</h2>
  {% for y in page.preprints_years %}
    {% bibliography -f preprints -q @*[year={{ y }}]* %}
  {% endfor %}
  {% endif %}

  {% if page.articles_years %}
  <h2 class="pub-type">Articles</h2>
  {% for y in page.articles_years %}
    {% bibliography -f articles -q @*[year={{ y }}]* %}
  {% endfor %}
  {% endif %}

  {% if page.bookchapters_years %}
  <h2 class="pub-type">Book Chapters</h2>
  {% for y in page.bookchapters_years %}
    {% bibliography -f bookchapters -q @*[year={{ y }}]* %}
  {% endfor %}
  {% endif %}

  {% if page.thesis_years %}
  <h2 class="pub-type">PhD Thesis</h2>
  {% for y in page.thesis_years %}
    {% bibliography -f thesis -q @*[year={{ y }}]* %}
  {% endfor %}
  {% endif %}
</div>

