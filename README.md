# Juan Isaula — Portfolio

Quarto multipage portfolio for GitHub Pages.

## Concept D
Modern executive redesign focused on Data Science, Risk Analytics and Applied AI.


## Blog técnico

Se agregó una sección Blog construida con Quarto Listings.

### Crear un nuevo post

Crea un archivo `.qmd` dentro de `blog/`, por ejemplo:

`blog/introduccion-pandas.qmd`

Front matter recomendado:

```yaml
---
title: "Introducción a Pandas"
description: "Conceptos básicos para análisis de datos con Python."
author: "Juan Isaula"
date: "2026-11-14"
categories: [Python, Pandas, Data Science]
format:
  html:
    toc: true
    code-fold: true
    code-tools: true
---
```

Después puedes escribir Markdown y ejecutar Python directamente:

````markdown
```{python}
import pandas as pd
print(pd.__version__)
```
````

### Publicar

Después de agregar o editar posts:

```bash
quarto preview
git add .
git commit -m "Nuevo post del blog"
git push
```

GitHub Actions renderizará el sitio y actualizará el Blog.


## Stable preview mode

This version disables Quarto's automatic input watching and automatic browser navigation
during preview. This prevents repeated reload loops when executable Blog posts generate
or update computational artifacts.

Recommended workflow:

```bash
conda activate quarto-blog
quarto render
quarto preview --no-watch-inputs --no-navigate
```

After editing a post:

1. Stop preview with `Ctrl + C`
2. Run `quarto render`
3. Run `quarto preview --no-watch-inputs --no-navigate`

On macOS you can also double-click `preview-safe.command` after granting execution permission if needed.


## Blog V4 — índice estático

El índice del Blog ya no utiliza `listing:` de Quarto.

Esto elimina la capa JavaScript dinámica de listings/filtros y deja una página HTML
simple con enlaces directos a los posts.

Los posts siguen siendo archivos `.qmd` y pueden ejecutar Python normalmente.
Para agregar un post nuevo:

1. Crear el `.qmd` dentro de `blog/`.
2. Agregar una tarjeta/enlace en `blog.qmd`.
3. Ejecutar `quarto render`.

## Blog V5 Pro

- Nuevo índice visual con portada destacada y preview de código.
- Contraste corregido usando las variables reales del tema (`--navy`, `--blue`, `--teal`, `--ink`).
- Artículos con cabecera editorial propia.
- Tabla de navegación lateral en escritorio.
- Código con fondo oscuro y tipografía monoespaciada legible.
- Outputs de Python en tarjetas blancas separadas.
- Diseño responsive para móvil.

## Blog V6
- Se eliminó el bloque grande de código de la portada del Blog.
- El código aparece únicamente dentro de los artículos.
- El artículo destacado queda más limpio y editorial.

## Blog V7
- Se eliminó por completo el artículo destacado de la portada.
- La página del Blog inicia directamente en “Últimos artículos / Notas para aprender y experimentar”.
- El artículo de Python sigue existiendo como post individual, pero ya no ocupa la portada.
