---
title: Extensión Metadatos SEO para phpBB
date: 2019-01-02T19:52:50-05:00
lastmod: 2021-06-14T12:46:40-05:00
categorias: [phpbb]
etiquetas: [extension-phpbb, seo, open-graph, twitter-cards, json-ld, schema-org, rdf]
archivos: [2019]
image:
  url: https://i.imgur.com/8rg2fKI.png
  type: png
  width: 773
  height: 733
assets: [fslightbox]
---
Extensión Metadatos SEO para phpBB.

[![Estado de desarrollo](https://img.shields.io/github/workflow/status/AlfredoRamos/phpbb-ext-seo-metadata/GitHub%20Actions%20CI?style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-seo-metadata/actions)
[![Última versión estable](https://img.shields.io/github/tag/AlfredoRamos/phpbb-ext-seo-metadata.svg?style=flat-square&label=stable)](https://github.com/AlfredoRamos/phpbb-ext-seo-metadata/releases)
[![Calidad de código](https://img.shields.io/codacy/grade/5da9411a064c41c6931af2a398dfad37.svg?style=flat-square)](https://app.codacy.com/gh/AlfredoRamos/phpbb-ext-seo-metadata/dashboard)
[![Progreso de traducciones](https://badges.crowdin.net/phpbb-ext-seo-metadata/localized.svg)](https://crowdin.com/project/phpbb-ext-seo-metadata)
[![Licencia](https://img.shields.io/github/license/AlfredoRamos/phpbb-ext-seo-metadata.svg?style=flat-square)](https://raw.githubusercontent.com/AlfredoRamos/phpbb-ext-seo-metadata/master/license.txt)

Agrega meta etiquetas Open Graph, Twitter Cards y JSON-LD generadas dinámicamente usando la información disponible en la página visitada de los foros, temas y mensajes, para mejorar el SEO de tu foro y mostrar información más precisa cuando se comparte a través de las redes sociales incluyendo (pero no limitado a) Facebook, Twitter, Vkontakte.

Si esta disponible, generará e incluirá dinámicamente los siguientes metadatos dentro de la etiqueta `<head>`:

<!--more-->
#### Metadescripción

```html
<meta name="description" content="...">
```

#### Open Graph

```html
<meta property="fb:app_id" content="...">
<meta property="og:locale" content="...">
<meta property="og:site_name" content="...">
<meta property="og:url" content="...">
<meta property="og:type" content="article">
<meta property="og:title" content="...">
<meta property="og:description" content="...">
<meta property="og:image" content="...">
<meta property="og:image:type" content="...">
<meta property="og:image:width" content="...">
<meta property="og:image:height" content="...">
<meta property="article:published_time" content="...">
<meta property="article:section" content="...">
<meta property="article:publisher" content="...">
```

#### Twitter Cards

```html
<meta name="twitter:card" content="summary|summary_large_image">
<meta name="twitter:site" content="...">
<meta name="twitter:title" content="...">
<meta name="twitter:description" content="...">
<meta name="twitter:image" content="..">
```

#### JSON-LD

```html
<script type="application/ld+json">
{
	"@context": "http://schema.org",
	"@type": "DiscussionForumPosting",
	"@id": "...",
	"headline": "...",
	"description": "...",
	"image": "...",
	"author": {
		"@type": "Person",
		"name": "..."
	},
	"datePublished": "..."
	"publisher": {
		"@type": "Organization",
		"name": "...",
		"url": "...",
		"logo": {
			"@type": "ImageObject",
			"url": "...",
			"width": "...",
			"height": "..."
		}
	}
}
</script>
```

### Características

- Genera dinámicamente meta tags Open Graph, Twitter Cards y microdatos JSON-LD usando la información de tu foro y de la página visitada
- Genera dinámicamente una descripción para los motores de búsqueda
- Establece una imágen por defecto para Opene Graph, Twitter Cards y JSON-LD
- Establece la forma en la que la descripción será generada
- Ajustes en el PCA para habilitar/deshabilitar Open Graph, Twitter Cards y JSON-LD
- Soporte para el uso de archivos adjuntos, para generar la imágen del tema
- Genera meta datos para mensajes específicos

### Vista previa

{{<preview src="https://i.imgur.com/8rg2fKIb.png" link="https://i.imgur.com/8rg2fKI.png" alt="Ajustes globales">}}
{{<preview src="https://i.imgur.com/042NB5Fb.png" link="https://i.imgur.com/042NB5F.png" alt="Ajustes de Open Graph, Twitter Cards y JSON-LD">}}
{{<preview src="https://i.imgur.com/xKswZUHb.png" link="https://i.imgur.com/xKswZUH.png" alt="Etiquetas generadas">}}

*(Haga clic para ver en tamaño completo)*

### Requisitos

- PHP 7.1.3 o superior
- phpBB 3.3 o superior

### Soporte

- [**Página de descarga**](https://www.phpbb.com/customise/db/extension/seo_metadata/)
- [Área de soporte](https://www.phpbb.com/customise/db/extension/seo_metadata/support)
- [Área de soporte en GitHub](https://github.com/AlfredoRamos/phpbb-ext-seo-metadata/issues)
- [Traducciones en Crowdin](https://crowdin.com/project/phpbb-ext-seo-metadata)

### Donar

{{<donate>}}

### Instalación

- Descargue la [última versión](https://github.com/AlfredoRamos/phpbb-ext-seo-metadata/releases)
- Descomprima el archivo `*.zip` o `*.tar.gz`
- Copie los archivos y directorios dentro de `{PHPBB_ROOT}/ext/alfredoramos/seometadata/`
- Dirígase a su `Panel de Control de Administración` > `Personalizar` > `Administrar extensiones`
- Haga clic en `Habilitar` y confirme

### Configuration

- Dirígase a su `Panel de Control de Administración` > `Extensiones` > `Metadatos SEO`
- Modifique los ajustes a su gusto
- Haga clic en `Enviar`

### Desinstalación

- Dirígase a su `Panel de Control de Administración` > `Personalizar` > `Administrar extensiones`
- Haga clic en `Deshabilitar` y confirme
- Regrese a `Administrar extensiones` > `SEO Metadata` > `Borrar datos` y confirme

### Actualización

- Dirígase a su `Panel de Control de Administración` > `Personalizar` > `Administrar extensiones`
- Haga clic en `Deshabilitar` y confirme
- Elimine todos los archivos dentro de `{PHPBB_ROOT}/ext/alfredoramos/seometadata/`
- Descargue la nueva versión
- Suba los nuevos archivos dentro de `{PHPBB_ROOT}/ext/alfredoramos/seometadata/`
- Habilite la extensión nuevamente
