---
layout: page
permalink: /publications/
title: publications
description: Publications organized by category, listed in reverse chronological order; an up-to-date list is available on <a href='https://scholar.google.com/citations?user=w6pmCBMAAAAJ'>Google Scholar</a>
preprints_years: [2025]
articles_years: [2025, 2024, 2023, 2022, 2021, 2020, 2019, 2018, 2017, 2016, 2015]
bookchapters_years: [2019]
nav: true
nav_order: 1
---

<!-- _pages/publications.md -->
<div class="publications">

  <h2 class="pub-type">preprints</h2>
  {% for y in page.preprints_years %}
    {% bibliography -f preprints -q @*[year={{y}}]* %}
  {% endfor %}

  <h2 class="pub-type">articles</h2>
  {% for y in page.articles_years %}
    {% bibliography -f articles -q @*[year={{y}}]* %}
  {% endfor %}

  <h2 class="pub-type">bookchapters</h2>
  {% for y in page.bookchapters_years %}
    {% bibliography -f bookchapters -q @*[year={{y}}]* %}
  {% endfor %}

</div>
