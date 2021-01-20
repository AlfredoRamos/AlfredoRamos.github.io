---
title: Simple Marquee
date: 2018-04-26 14:06:16 -0600
last_modified_at: 2021-01-20 14:29:11 -0500
category: development
tags: [sass, marquee]
stylesheets: [marquee]
image: https://i.imgur.com/qROSaDD.png
image_type: png
image_width: 1141
image_height: 587
---
Simple CSS Marquee.

[![Build Status](https://img.shields.io/github/workflow/status/AlfredoRamos/simple-marquee/GitHub%20Actions%20CI?style=flat-square)](https://github.com/AlfredoRamos/simple-marquee/actions)
[![Latest Stable Version](https://img.shields.io/github/tag/AlfredoRamos/simple-marquee.svg?style=flat-square&label=stable)](https://github.com/AlfredoRamos/simple-marquee/releases)
[![Code Quality](https://img.shields.io/codacy/grade/63fcd59694174ec88466aff031a8868b.svg?style=flat-square)](https://app.codacy.com/manual/AlfredoRamos/simple-marquee/dashboard)
[![License](https://img.shields.io/github/license/AlfredoRamos/simple-marquee.svg?style=flat-square)](https://raw.githubusercontent.com/AlfredoRamos/simple-marquee/master/LICENSE)

Generates an animation effect that horizontally scrolls elements, like text or images. It tries to mimic what the obsolete [`<marquee>`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/marquee) tag did, using only CSS.

<!-- more -->
### Features

- Scroll single or multiple elements
- Reverse order
- Change animation speed
- Customizable using SCSS

### Usage

Add the following stylesheet into your `<head>`:

```html
<link rel="stylesheet" src="https://gistcdn.githack.com/AlfredoRamos/241ebc49763fd6d8d805878e29b9c804/raw/f09b2f37fd72e5a467751cd38c91ce37a3a29e10/marquee.min.css" integrity="sha384-ECRKWCMB2qBwzuBeswCnbFX/P6kUKtMxQXk9PkbsLPQGAtgAyIoH8LRchuTJws+c" crossorigin="anonymous">
```

If you want to customize it, you can modify and build the sources using the command line (see [Requirements](#requirements)):

```shell
bundle update
bundle exec rake build:all
```

### Preview

#### Single element
<div class="marquee">
	<p class="marquee-content">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
</div>

```html
<div class="marquee">
	<p class="marquee-content">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
</div>
```

#### Multiple elements
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

#### Reverse order
<div class="marquee marquee-reverse">
	<p class="marquee-content">Vestibulum hendrerit dapibus placerat. Etiam bibendum mollis ipsum ac pellentesque.</p>
</div>

```html
<div class="marquee marquee-reverse">
	<p class="marquee-content">Vestibulum hendrerit dapibus placerat. Etiam bibendum mollis ipsum ac pellentesque.</p>
</div>
```

#### Marquee speed
##### Slow

Available slow speeds are from `sx2` to `sx5`.

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

##### Fast

Available fast speeds are from `fx2` to `fx5`.

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

### Requirements

These requirements are are only needed for development:

- Ruby 2.4.0 or greater
- Bundler

### Support

- [GitHub issues](https://github.com/AlfredoRamos/simple-marquee/issues)
- [CSS files](https://gist.github.com/AlfredoRamos/241ebc49763fd6d8d805878e29b9c804)
