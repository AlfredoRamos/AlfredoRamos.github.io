---
title: Extensions Composer repository for phpBB
date: 2019-09-18 18:35:23 -0500
category: phpbb
tags: [composer-repository]
stylesheets: [lightcase]
scripts: [lightcase]
---
The release of the new phpBB 3.3.x version introduced, along with another new features and fixes, the option to add custom [Composer repositories](https://getcomposer.org/doc/05-repositories.md) from which we could install or update our extensions.

To use this new feature you will need to fulfill the following requirements:

- A phpBB board version 3.3.x or greater
- The paths `ext/` and `vendor-ext/` must have write permissions (`chmod 777`)
- The files `composer-ext.json` and `composer-ext.lock` must have write permissions (`chmod 777`)

I've created a repository that includes most of my public extensions:

{%- assign extensions = site.posts | where_exp: 'p', 'p.tags contains "phpbb-extension"' | sort: 'date' -%}
{%- for ext in extensions %}
- [{{ ext.title | replace_first: ' extension for phpBB', '' | strip | escape }}]({{ ext.url | relative_url }})
{%- endfor %}

Here's a brief guide on how you can use this new feature on your phpBB boards:

<!-- more -->
1. First, you need to go to the <samp>Administration Control Panel</samp> > <samp>Customize</samp> > <samp>Extensions management</samp> > <samp>Extensions catalog</samp> and click on <samp>Settings</samp>.

	There you will see the following options:

	Option | Explanation
	- | -
	<samp>Enable extensions while installing</samp> | It will enable the extensions once installed from the catalog.
	<samp>Purge extensions while removing</samp> | It will purge the extensions once removed from the catalog.
	<samp>Repositories</samp> | The URL of Composer repositories with phpBB extensions.
	<samp>Search packagist</samp> | It will download packages from packagist. It's useful especially if an extension have dependencies that need to be downloaded from [Packagist](https://packagist.org).
	<samp>Minimum stability</samp> | It will set the minimum stability of the package. It's usefull if you want to test a beta or development version of an extension. See [minimum-stability](https://getcomposer.org/doc/04-schema.md#minimum-stability) for more information.
	{: class="table table-striped table-sm"}

2. Then add `https://alfredoramos.github.io/phpbb-extensions-repository/` in a new line, in the <samp>Repositories</samp> field and save the changes.

	[![Extensions catalog settings](https://i.imgur.com/1uYkwvdm.png){: class="mx-auto d-block"}](https://i.imgur.com/1uYkwvd.png){: data-rel="lightcase:setup"}

3. Go back to the <samp>Extension catalog</samp>, now you should see the extensions provided by the repository you just added.

	[![Extension list in the catalog](https://i.imgur.com/yItFMs8m.png){: class="mx-auto d-block"}](https://i.imgur.com/yItFMs8.png){: data-rel="lightcase:setup"}

	When an extension is installed successfully, you will get a confirmation screen like the following:

	[![Extension enabled](https://i.imgur.com/j34kKjbm.png){: class="mx-auto d-block"}](https://i.imgur.com/j34kKjb.png){: data-rel="lightcase:setup"}

4. Once the extension is enabled and if the option <samp>Enable extensions while installing</samp> is disabled, you can now go to <samp>Manage extensions</samp> to enable each extension you want individually.

	[![Extension management](https://i.imgur.com/12zNvHrm.png){: class="mx-auto d-block"}](https://i.imgur.com/12zNvHr.png){: data-rel="lightcase:setup"}
