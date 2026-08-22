# Publicar Portfolio — GitHub Pages

Cuenta GitHub:

`Isaula2716`

Repositorio requerido para el sitio personal:

`isaula2716.github.io`

URL final:

`https://isaula2716.github.io/`

## 1. Crear el repositorio

En GitHub, usando la cuenta `Isaula2716`, crea un repositorio público llamado exactamente:

`isaula2716.github.io`

Recomendación: créalo vacío, sin README, .gitignore ni licencia, porque este proyecto ya los contiene.

## 2. Primera publicación desde esta carpeta

Abre Terminal dentro de la carpeta del proyecto y ejecuta:

```bash
git init
git branch -M main
git add .
git commit -m "Publicar portafolio inicial"
git remote add origin https://github.com/Isaula2716/isaula2716.github.io.git
git push -u origin main
```

## 3. Activar GitHub Pages

En el repositorio:

Settings > Pages

En:

Build and deployment > Source

selecciona:

GitHub Actions

Después abre la pestaña Actions y espera a que termine correctamente:

`Deploy Quarto website to GitHub Pages`

## 4. Abrir el website

`https://isaula2716.github.io/`

## Actualizaciones futuras

Después de realizar cambios:

```bash
git add .
git commit -m "Actualizar portafolio"
git push
```

GitHub Actions renderizará nuevamente el sitio Quarto y lo publicará.
