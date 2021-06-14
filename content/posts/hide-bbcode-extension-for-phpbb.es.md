---
title: Extensión Hide BBCode para phpBB
date: 2019-09-02T16:26:38-05:00
lastmod: 2020-12-25T13:51:00-05:00
categorias: [phpbb]
etiquetas: [extension-phpbb, ocultar, bbcode]
archivos: [2019]
image:
  url: https://i.imgur.com/OajNWkc.png
  type: png
  width: 480
  height: 80
---
Extensión Hide BBCode para phpBB.

[![Estado de desarrollo](https://img.shields.io/github/workflow/status/AlfredoRamos/phpbb-ext-hide/GitHub%20Actions%20CI?style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-hide/actions)
[![Última versión estable](https://img.shields.io/github/tag/AlfredoRamos/phpbb-ext-hide.svg?label=stable&style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-hide/releases)
[![Calidad de código](https://img.shields.io/codacy/grade/5de75f922b4f4eae90615728e908c1c7.svg?style=flat-square)](https://app.codacy.com/gh/AlfredoRamos/phpbb-ext-hide/dashboard)
[![Progreso de las traducciones](https://badges.crowdin.net/phpbb-ext-hide/localized.svg)](https://crowdin.com/project/phpbb-ext-hide)
[![Licencia](https://img.shields.io/github/license/AlfredoRamos/phpbb-ext-hide.svg?style=flat-square)](https://raw.githubusercontent.com/AlfredoRamos/phpbb-ext-hide/master/license.txt)

Permite ocultar contenido a los usuarios invitados usando el BBCode `[hide]texto[/hide]` o `[hide inline=1]texto[/hide]`.

Es posible anidar `[hide]` u otros BBCode, dentro de las etiquetas.

<!--more-->
### Características

- Los BBCode se pueden anidar
- Agrega una ayuda visual para reconocer el contenido que será ocultado
- Puede ocultar texto entre líneas
- No requiere de configuración extra

### Vista previa

{{<preview src="https://i.imgur.com/OajNWkc.png" alt="Content as logged-in user" imgclass="img-fluid d-block mx-auto mb-3">}}
{{<preview src="https://i.imgur.com/xDbK3oU.png" alt="Content as guest" imgclass="img-fluid d-block mx-auto mb-3">}}

### Requisitos

- PHP 7.1.3 o superior
- phpBB 3.3 o superior

### Soporte

- [**Página de descarga**](https://www.phpbb-es.com/foro/viewtopic.php?t=42374)
- [Área de soporte en GitHub](https://github.com/AlfredoRamos/phpbb-ext-hide/issues)
- [Traducciones en Crowdin](https://crowdin.com/project/phpbb-ext-hide)

### Donar

{{<donate>}}

### Configuración

Para personalizar la apariencia:

- Ingrese a `{PHPBB_ROOT}/ext/alfredoramos/hide/`
- Copie el directorio `styles/prosilver/` a `styles/{ESTILO}/`
- Realice las modificaciones necesarias a los siguientes archivos:
	- `styles/{ESTILO}/theme/css/style.css`
	- `styles/{ESTILO}/theme/css/colors.css`

**Nota:** Si su estilo no hereda de `prosilver`, necesitará seguir los pasos anteriores inclusive si no desea realizar ningúna modificación a los archivos.

### Instalación

- Descargue la [última versión](https://github.com/AlfredoRamos/phpbb-ext-hide/releases)
- Descomprima el archivo `*.zip` o `*.tar.gz`
- Copie los archivos y directorios dentro de `{PHPBB_ROOT}/ext/alfredoramos/hide/`
- Dirígase a su `Panel de Control de Administración` > `Personalizar` > `Administrar extensiones`
- Haga clic en `Habilitar` y confirme

### Desinstalación

- Dirígase a su `Panel de Control de Administración` > `Personalizar` > `Administrar extensiones`
- Haga clic en `Deshabilitar` y confirme
- Regrese a `Administrar extensiones` > `Hide` > `Borrar datos` y confirme

### Actualización

- Dirígase a su `Panel de Control de Administración` > `Personalizar` > `Administrar extensiones`
- Haga clic en `Deshabilitar` y confirme
- Elimine todos los archivos dentro de `{PHPBB_ROOT}/ext/alfredoramos/hide/`
- Descargue la nueva versión
- Suba los nuevos archivos dentro de `{PHPBB_ROOT}/ext/alfredoramos/hide/`
- Habilite la extensión nuevamente
