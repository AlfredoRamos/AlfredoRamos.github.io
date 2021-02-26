---
title: Marquesina simple en CSS
date: 2018-04-26T14:06:16-06:00
lastmod: 2021-01-20T14:29:11-05:00
categorias: [desarrollo]
etiquetas: [scss, css, marquee]
archivos: [2018]
image:
  url: https://i.imgur.com/qROSaDD.png
  type: png
  width: 1141
  height: 587
assets: [marquee]
aliases: ['simple-marquee']
---
Marquesina simple en CSS.

[![Estado de desarrollo](https://img.shields.io/github/workflow/status/AlfredoRamos/simple-marquee/GitHub%20Actions%20CI?style=flat-square)](https://github.com/AlfredoRamos/simple-marquee/actions)
[![Última versión estable](https://img.shields.io/github/tag/AlfredoRamos/simple-marquee.svg?style=flat-square&label=stable)](https://github.com/AlfredoRamos/simple-marquee/releases)
[![Calidad de código](https://img.shields.io/codacy/grade/63fcd59694174ec88466aff031a8868b.svg?style=flat-square)](https://app.codacy.com/gh/AlfredoRamos/simple-marquee/dashboard)
[![Licencia](https://img.shields.io/github/license/AlfredoRamos/simple-marquee.svg?style=flat-square)](https://raw.githubusercontent.com/AlfredoRamos/simple-marquee/master/LICENSE)

Genera un efecto de animación de desplazamiento horizontal de elementos, como texto o imágenes. Intenta imitar el comportamiento que realizaba la obsoleta etiqueta [`<marquee>`](https://developer.mozilla.org/es/docs/Web/HTML/Elemento/marquee), usando únicamente CSS.

<!--more-->
### Características

- Desplaza uno o varios elementos
- Es posible cambiar el sentido de la animación
- Es posible cambiar la velocidad de la animación
- Facilmente personalizable usando SCSS

### Modo de uso

Agregue la siguiente hoja de estilo dentro de `<head>`:

```html
<link rel="stylesheet" src="https://gistcdn.githack.com/AlfredoRamos/241ebc49763fd6d8d805878e29b9c804/raw/f09b2f37fd72e5a467751cd38c91ce37a3a29e10/marquee.min.css" integrity="sha384-ECRKWCMB2qBwzuBeswCnbFX/P6kUKtMxQXk9PkbsLPQGAtgAyIoH8LRchuTJws+c" crossorigin="anonymous">
```

Si desea personalizarlo, puede modificar y generar los archivos CSS con los siguientes comandos (ver [Requisitos](#requisitos)):

```shell
bundle update
bundle exec rake build:all
```

### Vista previa

#### Elemento único

<div class="marquee">
	<p class="marquee-content">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
</div>

```html
<div class="marquee">
	<p class="marquee-content">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
</div>
```

#### Elementos múltiples

<div class="marquee">
	<ul class="marquee-content">
		<li>Cras volutpat ante a risus eleifend fringilla in maximus nulla.</li>
		<li>Duis pretium, dolor vitae placerat scelerisque, sem magna posuere nisi, ac tempus lacus eros in ex.</li>
		<li>Morbi luctus condimentum tincidunt. Interdum et malesuada fames ac ante ipsum primis in faucibus.</li>
	</ul>
</div>

```html
<div class="marquee">
	<ul class="marquee-content">
		<li>Cras volutpat ante a risus eleifend fringilla in maximus nulla.</li>
		<li>Duis pretium, dolor vitae placerat scelerisque, sem magna posuere nisi, ac tempus lacus eros in ex.</li>
		<li>Morbi luctus condimentum tincidunt. Interdum et malesuada fames ac ante ipsum primis in faucibus.</li>
	</ul>
</div>
```

#### Sentido contrario

<div class="marquee marquee-reverse">
	<p class="marquee-content">Vestibulum hendrerit dapibus placerat. Etiam bibendum mollis ipsum ac pellentesque.</p>
</div>

```html
<div class="marquee marquee-reverse">
	<p class="marquee-content">Vestibulum hendrerit dapibus placerat. Etiam bibendum mollis ipsum ac pellentesque.</p>
</div>
```

#### Velocidad

##### Lento

Velocidades disponibles para animación lenta van desde `sx2` hasta `sx5`.

<div class="marquee marquee-speed-sx2">
	<p class="marquee-content">Aenean feugiat mi nibh, nec congue sapien efficitur et.</p>
</div>
<div class="marquee marquee-speed-sx3">
	<p class="marquee-content">Aenean feugiat mi nibh, nec congue sapien efficitur et.</p>
</div>
<div class="marquee marquee-speed-sx4">
	<p class="marquee-content">Aenean feugiat mi nibh, nec congue sapien efficitur et.</p>
</div>
<div class="marquee marquee-speed-sx5">
	<p class="marquee-content">Aenean feugiat mi nibh, nec congue sapien efficitur et.</p>
</div>

```html
<div class="marquee marquee-speed-sx2">
	<p class="marquee-content">Aenean feugiat mi nibh, nec congue sapien efficitur et.</p>
</div>
<div class="marquee marquee-speed-sx3">
	<p class="marquee-content">Aenean feugiat mi nibh, nec congue sapien efficitur et.</p>
</div>
<div class="marquee marquee-speed-sx4">
	<p class="marquee-content">Aenean feugiat mi nibh, nec congue sapien efficitur et.</p>
</div>
<div class="marquee marquee-speed-sx5">
	<p class="marquee-content">Aenean feugiat mi nibh, nec congue sapien efficitur et.</p>
</div>
```

##### Rápido

Velocidades disponibles para animación rápida van desde `fx2` hasta `fx5`.

<div class="marquee marquee-speed-fx2">
	<p class="marquee-content">Aenean feugiat mi nibh, nec congue sapien efficitur et.</p>
</div>
<div class="marquee marquee-speed-fx3">
	<p class="marquee-content">Aenean feugiat mi nibh, nec congue sapien efficitur et.</p>
</div>
<div class="marquee marquee-speed-fx4">
	<p class="marquee-content">Aenean feugiat mi nibh, nec congue sapien efficitur et.</p>
</div>
<div class="marquee marquee-speed-fx5">
	<p class="marquee-content">Aenean feugiat mi nibh, nec congue sapien efficitur et.</p>
</div>

```html
<div class="marquee marquee-speed-fx2">
	<p class="marquee-content">Aenean feugiat mi nibh, nec congue sapien efficitur et.</p>
</div>
<div class="marquee marquee-speed-fx3">
	<p class="marquee-content">Aenean feugiat mi nibh, nec congue sapien efficitur et.</p>
</div>
<div class="marquee marquee-speed-fx4">
	<p class="marquee-content">Aenean feugiat mi nibh, nec congue sapien efficitur et.</p>
</div>
<div class="marquee marquee-speed-fx5">
	<p class="marquee-content">Aenean feugiat mi nibh, nec congue sapien efficitur et.</p>
</div>
```

### Requisitos

Éstos requisitos únicamente son necesarios para desarrollo:

- Ruby 2.4.0 o superior
- Bundler

### Suporte

- [GitHub](https://github.com/AlfredoRamos/simple-marquee/issues)
- [Archivos CSS](https://gist.github.com/AlfredoRamos/241ebc49763fd6d8d805878e29b9c804)
