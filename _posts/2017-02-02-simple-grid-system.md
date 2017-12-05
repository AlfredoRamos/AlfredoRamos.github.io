---
title: Simple Grid System
date: 2017-02-02 16:45:31 -0600
updated_at: 2017-12-05 15:35:32 -0600
category: development
tags: [sass, grids]
stylesheets: [simple_grid]
---
A Simple SASS Grid System.

[![Build Status](https://img.shields.io/travis/AlfredoRamos/simple-grid-system.svg?style=flat-square&maxAge=3600)](https://travis-ci.org/AlfredoRamos/simple-grid-system) [![Latest Stable Version](https://img.shields.io/github/tag/AlfredoRamos/simple-grid-system.svg?style=flat-square&label=stable&maxAge=3600)](https://github.com/AlfredoRamos/simple-grid-system/releases) [![Code Quality](https://img.shields.io/codacy/grade/305ccf33491f4e2ba5405a0cff204b0f.svg?style=flat-square&maxAge=3600)](https://www.codacy.com/app/AlfredoRamos/simple-grid-system) [![License](https://img.shields.io/github/license/AlfredoRamos/simple-grid-system.svg?style=flat-square)](https://raw.githubusercontent.com/AlfredoRamos/simple-grid-system/master/LICENSE)

Links:

- [<svg class="icon icon-github"><use xlink:href="#github" /></use></svg> **AlfredoRamos/simple-grid-system**](https://github.com/AlfredoRamos/simple-grid-system)
- [<svg class="icon icon-github"><use xlink:href="#github" /></svg> **grids.css** and **grids.min.css**](https://gist.github.com/AlfredoRamos/7373ba3506e10358bb84648af9a808b0)

<div class="container">
	<!-- Normal grid -->
	<h4>Normal grid</h4>
	<div class="row">
		<div class="col-md-1" title=".col-md-1"></div>
		<div class="col-md-11" title=".col-md-11"></div>
	</div>
	<div class="row">
		<div class="col-md-2" title=".col-md-2"></div>
		<div class="col-md-10" title=".col-md-10"></div>
	</div>
	<div class="row">
		<div class="col-md-3" title=".col-md-3"></div>
		<div class="col-md-9" title=".col-md-9"></div>
	</div>
	<div class="row">
		<div class="col-md-4" title=".col-md-4"></div>
		<div class="col-md-8" title=".col-md-8"></div>
	</div>
	<div class="row">
		<div class="col-md-5" title=".col-md-5"></div>
		<div class="col-md-7" title=".col-md-7"></div>
	</div>
	<div class="row">
		<div class="col-md-6" title=".col-md-6"></div>
		<div class="col-md-6" title=".col-md-6"></div>
	</div>
	<div class="row">
		<div class="col-md-7" title=".col-md-7"></div>
		<div class="col-md-5" title=".col-md-5"></div>
	</div>
	<div class="row">
		<div class="col-md-8" title=".col-md-8"></div>
		<div class="col-md-4" title=".col-md-4"></div>
	</div>
	<div class="row">
		<div class="col-md-9" title=".col-md-9"></div>
		<div class="col-md-3" title=".col-md-3"></div>
	</div>
	<div class="row">
		<div class="col-md-10" title=".col-md-10"></div>
		<div class="col-md-2" title=".col-md-2"></div>
	</div>
	<div class="row">
		<div class="col-md-11" title=".col-md-11"></div>
		<div class="col-md-1" title=".col-md-1"></div>
	</div>

	<h5>Code</h5>
{% highlight html %}<div class="container">
	<div class="row">
		<div class="col-md-1"></div>
		<div class="col-md-11"></div>
	</div>
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-10"></div>
	</div>
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-9"></div>
	</div>
	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-8"></div>
	</div>
	<div class="row">
		<div class="col-md-5"></div>
		<div class="col-md-7"></div>
	</div>
	<div class="row">
		<div class="col-md-6"></div>
		<div class="col-md-6"></div>
	</div>
	<div class="row">
		<div class="col-md-7"></div>
		<div class="col-md-5"></div>
	</div>
	<div class="row">
		<div class="col-md-8"></div>
		<div class="col-md-4"></div>
	</div>
	<div class="row">
		<div class="col-md-9"></div>
		<div class="col-md-3"></div>
	</div>
	<div class="row">
		<div class="col-md-10"></div>
		<div class="col-md-2"></div>
	</div>
	<div class="row">
		<div class="col-md-11"></div>
		<div class="col-md-1"></div>
	</div>
</div>{% endhighlight %}
	<!-- Normal grid -->

	<!-- Offset grid -->
	<h4>Offset grid</h4>
	<div class="row">
		<div class="col-md-3" title=".col-md-3"></div>
		<div class="col-md-3 offset-md-0" title=".col-md-3 .offset-md-0"></div>
	</div>

	<h5>Code</h5>
{% highlight html %}<div class="container">
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-3 offset-md-0"></div>
	</div>
</div>{% endhighlight %}
	<!-- Offset grid -->

	<!-- Order swap -->
	<h4>Order swap</h4>
	<div class="row">
		<div class="col-md-4 order-md-12" title=".col-md-4 .order-md-12"></div>
		<div class="col-md-8 order-md-1" title=".col-md-8 .order-md-1"></div>
	</div>

	<h5>Code</h5>
{% highlight html %}<div class="container">
	<div class="row">
		<div class="col-md-4 order-md-12"></div>
		<div class="col-md-8 order-md-1"></div>
	</div>
</div>{% endhighlight %}
	<!-- Order swap -->

	<!-- Nested grids -->
	<h4>Nested grids</h4>
	<div class="row center-md">
		<div class="col-md-10" title=".col-md-10">
			<div class="row">
				<div class="col-md-9 order-md-12" title=".col-md-9 .order-md-12"></div>
				<div class="col-md-3 order-md-1" title=".col-md-3 .order-md-1"></div>
			</div>
		</div>
	</div>

	<h5>Code</h5>
{% highlight html %}<div class="container">
	<div class="row center-md">
		<div class="col-md-10">
			<div class="row">
				<div class="col-md-9 order-md-12"></div>
				<div class="col-md-3 order-md-1"></div>
			</div>
		</div>
	</div>
</div>{% endhighlight %}
	<!-- Nested grids -->

	<!-- Mixed mobile and desktop -->
	<h4>Mixed: mobile and desktop</h4>
	<div class="row">
		<div class="col-xs-6 col-md-8" title=".col-xs-6 .col-md-8"></div>
		<div class="col-xs-6 col-md-4" title=".col-xs-6 .col-md-4"></div>
	</div>

	<h5>Code</h5>
{% highlight html %}<div class="container">
	<div class="row">
		<div class="col-xs-6 col-md-8"></div>
		<div class="col-xs-6 col-md-4"></div>
	</div>
</div>{% endhighlight %}
	<!-- Mixed mobile and desktop -->

	<!-- Auto width -->
	<h4>Auto width</h4>
	<div class="row">
		<div class="col-xs" title=".col-xs"></div>
		<div class="col-xs" title=".col-xs"></div>
		<div class="col-xs" title=".col-xs"></div>
		<div class="col-xs" title=".col-xs"></div>
		<div class="col-xs" title=".col-xs"></div>
	</div>

	<h5>Code</h5>
{% highlight html %}<div class="container">
	<div class="row">
		<div class="col-xs"></div>
		<div class="col-xs"></div>
		<div class="col-xs"></div>
		<div class="col-xs"></div>
		<div class="col-xs"></div>
	</div>
</div>{% endhighlight %}
	<!-- Auto width -->

	<!-- Mixed mobile and desktop alignment -->
	<h4>Mixed: mobile and desktop alignment</h4>
	<div class="row top-sm middle-md bottom-lg">
		<div class="col-xs" title=".col-xs">
			<div style="height: 65px"></div>
		</div>
		<div class="col-xs" title=".col-xs"></div>
		<div class="col-xs" title=".col.xs"></div>
	</div>

	<h5>Code</h5>
{% highlight html %}<div class="container">
	<div class="row top-sm middle-md bottom-lg">
		<div class="col-xs"></div>
		<div class="col-xs"></div>
		<div class="col-xs"></div>
	</div>
</div>{% endhighlight %}
	<!-- Mixed mobile and desktop alignment -->

	<!-- Responsive embedding -->
	<h4>Responsive embedding</h4>

	<div class="media">
		<iframe class="media-item" src="https://www.youtube-nocookie.com/embed/SkVqJ1SGeL0?rel=0" allowfullscreen></iframe>
	</div>

	<h5>Code</h5>
{% highlight html %}<div class="media">
	<iframe class="media-item" src="https://www.youtube-nocookie.com/embed/SkVqJ1SGeL0?rel=0" allowfullscreen></iframe>
</div>{% endhighlight %}
	<!-- Responsive embedding -->
</div>
