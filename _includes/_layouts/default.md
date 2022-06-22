<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>{{ page.title }}</title>
  </head>
  <body>
    {% include navigation.md %}
    <h1>{{ page.title }}</h1>
    <section>
      {{ content }}
    </section>
    {% include footer.md %}
  </body>
</html>