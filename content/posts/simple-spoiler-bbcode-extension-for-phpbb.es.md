---
title: Extensión Simple Spoiler BBCode para phpBB
date: 2017-01-14T23:53:37-05:00
lastmod: 2021-06-14T12:46:30-05:00
categorias: [phpbb]
etiquetas: [extension-phpbb, spoiler, bbcode]
archivos: [2017]
image:
  url: https://i.imgur.com/5NrtAoS.png
  type: png
  width: 423
  height: 117
---
Extensión Simple Spoiler BBCode para phpBB.

[![Estado de desarrollo](https://img.shields.io/github/workflow/status/AlfredoRamos/phpbb-ext-simple-spoiler/GitHub%20Actions%20CI?style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-simple-spoiler/actions)
[![Última versión estable](https://img.shields.io/github/tag/AlfredoRamos/phpbb-ext-simple-spoiler.svg?label=stable&style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-simple-spoiler/releases)
[![Calidad de código](https://img.shields.io/codacy/grade/d999d79cca134f189502ad84cee17a33.svg?style=flat-square)](https://app.codacy.com/gh/AlfredoRamos/phpbb-ext-simple-spoiler/dashboard)
[![Progreso de traducciones](https://badges.crowdin.net/phpbb-ext-simple-spoiler/localized.svg)](https://crowdin.com/project/phpbb-ext-simple-spoiler)
[![Licencia](https://img.shields.io/github/license/AlfredoRamos/phpbb-ext-simple-spoiler.svg?style=flat-square)](https://raw.githubusercontent.com/AlfredoRamos/phpbb-ext-simple-spoiler/master/license.txt)

Permite usar el BBCode `[spoiler]texto[/spoiler]` o `[spoiler title=título]texto[/spoiler]` para ocultar su contenido, pudiendolo usar en cualquier lugar en donde sea posible usar BBCodes.

Es posible anidar las etiquetas `[spoiler]` y usar títulos en unicode dentro de `[spoiler title=título]`.

<!--more-->
### Características

- Los BBCode se pueden anidar
- Soporte completo para títulos en Unicode para el BBCode `[spoiler title=]`
- Se puede extender y personaluzar para nuevos estilos con facilidad
- Uso de HTML5

### Vista previa

{{<preview src="https://i.imgur.com/5NrtAoS.png" alt="Spoilers anidados" imgclass="img-fluid d-block mx-auto mb-3">}}

```plaintext
[spoiler title=Nested spoilers]First level
[spoiler title=«µǹï¢øð€»]Second level[/spoiler][/spoiler]
```

{{<preview src="https://i.imgur.com/5NrtAoS.png" alt="Spoilers usando emojis el título" imgclass="img-fluid d-block mx-auto mb-3">}}

```plaintext
[spoiler title=🇩🇪 🇲🇽 🇺🇸 Title with emojis 😁 🤗 🔱]Some text 🦏[/spoiler]
```

### Requisitos

- PHP 7.1.3 o superior
- phpBB 3.3 o superior

### Soporte

- [**Página de descarga**](https://www.phpbb.com/customise/db/extension/simple_spoiler_bbcode/)
- [Preguntas frecuentes](https://www.phpbb.com/customise/db/extension/simple_spoiler_bbcode/faq)
- [Área de soporte](https://www.phpbb.com/customise/db/extension/simple_spoiler_bbcode/support)
- [Área de soporte en GitHub](https://github.com/AlfredoRamos/phpbb-ext-simple-spoiler/issues)
- [Traducciones en Crowdin](https://crowdin.com/project/phpbb-ext-simple-spoiler)

### Donar

{{<donate>}}

### Configuración

Para personalizar la apariencia:

- Ingrese a `{PHPBB_ROOT}/ext/alfredoramos/simplespoiler/`
- Copie el directorio `styles/prosilver/` a `styles/{ESTILO}/`
- Realice las modificaciones necesarias a los siguientes archivos:
	- `styles/{ESTILO}/theme/css/style.css`
	- `styles/{ESTILO}/theme/css/colors.css`

**Nota:** Si su estilo no hereda de `prosilver`, necesitará seguir los pasos anteriores inclusive si no desea realizar ningúna modificación a los archivos.

### Instalación

- Descargue la [última versión](https://github.com/AlfredoRamos/phpbb-ext-simple-spoiler/releases)
- Descomprima el archivo `*.zip` o `*.tar.gz`
- Copie los archivos y directorios dentro de `{PHPBB_ROOT}/ext/alfredoramos/simplespoiler/`
- Dirígase a su `Panel de Control de Administración` > `Personalizar` > `Administrar extensiones`
- Haga clic en `Habilitar` y confirme

### Desinstalación

- Dirígase a su `Panel de Control de Administración` > `Personalizar` > `Administrar extensiones`
- Haga clic en `Deshabilitar` y confirme
- Regrese a `Administrar extensiones` > `Simple Spoiler BBCode` > `Borrar datos` y confirme

### Actualización

- Dirígase a su `Panel de Control de Administración` > `Personalizar` > `Administrar extensiones`
- Haga clic en `Deshabilitar` y confirme
- Elimine todos los archivos dentro de `{PHPBB_ROOT}/ext/alfredoramos/simplespoiler/`
- Descargue la nueva versión
- Suba los nuevos archivos dentro de `{PHPBB_ROOT}/ext/alfredoramos/simplespoiler/`
- Habilite la extensión nuevamente
