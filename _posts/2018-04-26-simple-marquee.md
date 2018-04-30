---
title: Simple Marquee
date: 2018-04-26 14:06:16 -0500
updated_at: 2018-04-29 19-10-23 -0500
category: development
tags: [sass, marquee]
stylesheets: [marquee]
---
A Simple SASS Marquee.

[![Build Status](https://img.shields.io/travis/AlfredoRamos/simple-marquee.svg?style=flat-square&maxAge=3600)](https://travis-ci.org/AlfredoRamos/simple-marquee) [![Latest Stable Version](https://img.shields.io/github/tag/AlfredoRamos/simple-marquee.svg?style=flat-square&label=stable&maxAge=3600)](https://github.com/AlfredoRamos/simple-marquee/releases) [![Code Quality](https://img.shields.io/codacy/grade/4880dfbf94f040f5900b2b840ddd5bd6.svg?style=flat-square&maxAge=3600)](https://www.codacy.com/app/AlfredoRamos/simple-marquee) [![License](https://img.shields.io/github/license/AlfredoRamos/simple-marquee.svg?style=flat-square)](https://raw.githubusercontent.com/AlfredoRamos/simple-marquee/master/LICENSE)

Links:

- [<svg class="icon icon-github"><use xlink:href="#github" /></svg> **AlfredoRamos/simple-marquee**](https://github.com/AlfredoRamos/simple-marquee)
- [<svg class="icon icon-github"><use xlink:href="#github" /></svg> **marquee.css** and **marquee.min.css**](https://gist.github.com/AlfredoRamos/241ebc49763fd6d8d805878e29b9c804)

<h4>Single element</h4>
<div class="marquee">
	<p class="marquee-content">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
</div>

```html
<div class="marquee">
	<p class="marquee-content">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
</div>
```

___

<h4>Multiple elements</h4>
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

___

<h4>Reverse order</h4>
<div class="marquee marquee-reverse">
	<p class="marquee-content">Vestibulum hendrerit dapibus placerat. Etiam bibendum mollis ipsum ac pellentesque.</p>
</div>

```html
<div class="marquee marquee-reverse">
	<p class="marquee-content">Vestibulum hendrerit dapibus placerat. Etiam bibendum mollis ipsum ac pellentesque.</p>
</div>
```

___

<h4>Marquee speed</h4>
**Slow** (from `sx2` to `sx5`)
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

**Fast** (from `fx2` to `fx5`)
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
