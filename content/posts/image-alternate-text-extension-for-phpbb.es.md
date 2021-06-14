---
title: Extensión Texto Alternativo de Imagen para phpBB
date: 2019-07-31T19:18:13-05:00
lastmod: 2020-12-25T13:50:00-05:00
categorias: [phpbb]
etiquetas: [extension-phpbb, alt-de-imagen, bbcode, textformatter, markdown, litedown]
archivos: [2019]
image:
  url: https://i.imgur.com/yLgDJpG.png
  width: 1049
  height: 246
---
Extensión Texto Alternativo de Imagen para phpBB.

[![Estado de desarrollo](https://img.shields.io/github/workflow/status/AlfredoRamos/phpbb-ext-image-alt/GitHub%20Actions%20CI?style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-hide/actions)
[![Última versión estable](https://img.shields.io/github/tag/AlfredoRamos/phpbb-ext-image-alt.svg?label=stable&style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-image-alt/releases)
[![Calidad de código](https://img.shields.io/codacy/grade/f06ec0db39c049fc8883b6c65e10405a.svg?style=flat-square)](https://app.codacy.com/gh/AlfredoRamos/phpbb-ext-image-alt/dashboard)
[![Licencia](https://img.shields.io/github/license/AlfredoRamos/phpbb-ext-image-alt.svg?style=flat-square)](https://raw.githubusercontent.com/AlfredoRamos/phpbb-ext-image-alt/master/license.txt)

Permite agregar un texto alternativo a las imágenes para cumplir con las recomendaciones para SEO.

**BBCode (entrada)**

```text
[img alt="texto"]url[/img]
```

**HTML (salida)**

```html
<img src="url" class="postimage" alt="texto">
```

<!--more-->
### Características

- No requiere configuración extra
- Es compatible con la extensión [Markdown]({{<relref "markdown-extension-for-phpbb">}})
- Es posible usarr texto en Unicode, incluyendo emojis
- El motor sanitiza el texto para eliminar código inseguro

### Vista previa

{{<preview src="https://i.imgur.com/yLgDJpG.png" alt="Código HTML generado" imgclass="img-fluid d-block mx-auto mb-3">}}

### Requisitos

- PHP 7.1.3 o superior
- phpBB 3.3 o superior

### Soporte

- [**Página de descarga**](https://www.phpbb.com/customise/db/extension/image_alternate_text/)
- [Área de soporte](https://www.phpbb.com/customise/db/extension/image_alternate_text/support)
- [Área de soporte en GitHub](https://github.com/AlfredoRamos/phpbb-ext-image-alt/issues)

### Donar

{{<donate>}}

### Instalación

- Descargue la [última versión](https://github.com/AlfredoRamos/phpbb-ext-image-alt/releases)
- Descomprima el archivo `*.zip` o `*.tar.gz`
- Copie los archivos y directorios dentro de `{PHPBB_ROOT}/ext/alfredoramos/imagealt/`
- Dirígase a su `Panel de Control de Administración` > `Personalizar` > `Administrar extensiones`
- Haga clic en `Habilitar` y confirme

### Desinstalación

- Dirígase a su `Panel de Control de Administración` > `Personalizar` > `Administrar extensiones`
- Haga clic en `Deshabilitar` y confirme
- Regrese a `Administrar extensiones` > `Image Alternate Text` > `Borrar datos` y confirme

### Actualización

- Dirígase a su `Panel de Control de Administración` > `Personalizar` > `Administrar extensiones`
- Haga clic en `Deshabilitar` y confirme
- Elimine todos los archivos dentro de `{PHPBB_ROOT}/ext/alfredoramos/imagealt/`
- Descargue la nueva versión
- Suba los nuevos archivos dentro de `{PHPBB_ROOT}/ext/alfredoramos/imagealt/`
- Habilite la extensión nuevamente
