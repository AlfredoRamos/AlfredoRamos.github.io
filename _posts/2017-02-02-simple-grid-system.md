---
layout: post
title: Simple Grid System
date: 2017-02-02 16:45:31 -0600
categories: [development]
tags: [sass, grids]
stylesheets: {
	head: [simple_grid]
}
---
A Simple SASS Grid System.

[![Build Status](https://img.shields.io/travis/AlfredoRamos/simple-grid-system.svg?style=flat-square&maxAge=3600)](https://travis-ci.org/AlfredoRamos/simple-grid-system) [![Latest Stable Version](https://img.shields.io/github/tag/AlfredoRamos/simple-grid-system.svg?style=flat-square&label=stable&maxAge=3600)](https://github.com/AlfredoRamos/simple-grid-system/releases) [![License](https://img.shields.io/github/license/AlfredoRamos/simple-grid-system.svg?style=flat-square)](https://raw.githubusercontent.com/AlfredoRamos/simple-grid-system/master/LICENSE)

Links:

- [<svg class="icon icon-github"><use xlink:href="#github"></use></svg> **AlfredoRamos/simple-grid-system**](https://github.com/AlfredoRamos/simple-grid-system)

<div class="container">
	<!-- Normal grid -->
	<h4>Normal grid</h4>
	<div class="row">
		<div class="col-md-1" title=".col-md-1">&nbsp;</div>
		<div class="col-md-11" title=".col-md-11">&nbsp;</div>
	</div>
	<div class="row">
		<div class="col-md-2" title=".col-md-2">&nbsp;</div>
		<div class="col-md-10" title=".col-md-10">&nbsp;</div>
	</div>
	<div class="row">
		<div class="col-md-3" title=".col-md-3">&nbsp;</div>
		<div class="col-md-9" title=".col-md-9">&nbsp;</div>
	</div>
	<div class="row">
		<div class="col-md-4" title=".col-md-4">&nbsp;</div>
		<div class="col-md-8" title=".col-md-8">&nbsp;</div>
	</div>
	<div class="row">
		<div class="col-md-5" title=".col-md-5">&nbsp;</div>
		<div class="col-md-7" title=".col-md-7">&nbsp;</div>
	</div>
	<div class="row">
		<div class="col-md-6" title=".col-md-6">&nbsp;</div>
		<div class="col-md-6" title=".col-md-6">&nbsp;</div>
	</div>
	<div class="row">
		<div class="col-md-7" title=".col-md-7">&nbsp;</div>
		<div class="col-md-5" title=".col-md-5">&nbsp;</div>
	</div>
	<div class="row">
		<div class="col-md-8" title=".col-md-8">&nbsp;</div>
		<div class="col-md-4" title=".col-md-4">&nbsp;</div>
	</div>
	<div class="row">
		<div class="col-md-9" title=".col-md-9">&nbsp;</div>
		<div class="col-md-3" title=".col-md-3">&nbsp;</div>
	</div>
	<div class="row">
		<div class="col-md-10" title=".col-md-10">&nbsp;</div>
		<div class="col-md-2" title=".col-md-2">&nbsp;</div>
	</div>
	<div class="row">
		<div class="col-md-11" title=".col-md-11">&nbsp;</div>
		<div class="col-md-1" title=".col-md-1">&nbsp;</div>
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
		<div class="col-md-3" title=".col-md-3">&nbsp;</div>
		<div class="col-md-3 col-md-offset-6" title=".col-md-3 col-md-offset-6">&nbsp;</div>
	</div>

	<h5>Code</h5>
{% highlight html %}<div class="container">
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-3 col-md-offset-6"></div>
	</div>
</div>{% endhighlight %}
	<!-- Offset grid -->

	<!-- Order swap -->
	<h4>Order swap</h4>
	<div class="row">
		<div class="col-md-4 col-md-push-8" title=".col-md-4 col-md-push-8">&nbsp;</div>
		<div class="col-md-8 col-md-pull-4" title=".col-md-8 col-md-pull-4">&nbsp;</div>
	</div>

	<h5>Code</h5>
{% highlight html %}<div class="container">
	<div class="row">
		<div class="col-md-4 col-md-push-8"></div>
		<div class="col-md-8 col-md-pull-4"></div>
	</div>
</div>{% endhighlight %}
	<!-- Order swap -->

	<!-- Nested grids -->
	<h4>Nested grids</h4>
	<div class="row">
		<div class="col-md-10 col-md-pull-1 col-md-push-1" title=".col-md-10 .col-md-pull-1 .col-md-push-1">
			<div class="row">
				<div class="col-md-9 col-md-push-3" title=".col-md-9 col-md-push-3">&nbsp;</div>
				<div class="col-md-3 col-md-pull-9" title=".col-md-3 col-md-pull-9">&nbsp;</div>
			</div>
		</div>
	</div>

	<h5>Code</h5>
{% highlight html %}<div class="container">
	<div class="row">
		<div class="col-md-10 col-md-pull-1 col-md-push-1">
			<div class="row">
				<div class="col-md-9 col-md-push-3"></div>
				<div class="col-md-3 col-md-pull-9"></div>
			</div>
		</div>
	</div>
</div>{% endhighlight %}
	<!-- Nested grids -->

	<!-- Mixed mobile and desktop -->
	<h4>Mixed: mobile and desktop</h4>
	<div class="row">
		<div class="col-xs-6 col-md-8" title=".col-xs-6 .col-md-8">&nbsp;</div>
		<div class="col-xs-6 col-md-4" title=".col-xs-6 .col-md-4">&nbsp;</div>
	</div>

	<h5>Code</h5>
{% highlight html %}<div class"container">
	<div class="row">
		<div class="col-xs-6 col-md-8"></div>
		<div class="col-xs-6 col-md-4"></div>
	</div>
</div>{% endhighlight %}
	<!-- Mixed mobile and desktop -->

	<!-- Offset, push, and pull resets -->
	<h4>Offset, push, and pull resets</h4>
	<div class="row">
		<div class="col-sm-5 col-md-6" title=".col-sm-5 .col-md-6">&nbsp;</div>
		<div class="col-sm-5 col-sm-offset-2 col-md-6 col-md-offset-0" title=".col-sm-5 .col-sm-offset-2 .col-md-6 .col-md-offset-0">&nbsp;</div>
	</div>
	<div class="row">
		<div class="col-sm-6 col-md-5 col-lg-6" title=".col-sm-6 .col-md-5 .col-lg-6">&nbsp;</div>
		<div class="col-sm-6 col-md-5 col-md-offset-2 col-lg-6 col-lg-offset-0" title=".col-sm-6 .col-md-5 .col-md-offset-2 .col-lg-6 .col-lg-offset-0">&nbsp;</div>
	</div>

	<h5>Code</h5>
{% highlight html%}<div class="container">
	<div class="row">
		<div class="col-sm-5 col-md-6"></div>
		<div class="col-sm-5 col-sm-offset-2 col-md-6 col-md-offset-0"></div>
	</div>
	<div class="row">
		<div class="col-sm-6 col-md-5 col-lg-6"></div>
		<div class="col-sm-6 col-md-5 col-md-offset-2 col-lg-6 col-lg-offset-0"></div>
	</div>
</div>{% endhighlight %}
	<!-- Offset, push, and pull resets -->
</div>
