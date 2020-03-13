---
title: SEO Metadata extension for phpBB
date: 2019-01-02 19:52:50 -0500
last_modified_at: 2020-03-03 15:00:30 -0500
category: phpbb
tags: [phpbb-extension, seo, open-graph, twitter-cards, json-ld, schema-org, rdf]
stylesheets: [lightcase]
scripts: [lightcase]
thumbnail: https://i.imgur.com/8rg2fKIm.png
image: https://i.imgur.com/8rg2fKI.png
image_type: png
image_width: 773
image_height: 733
---
SEO Metadata extension for phpBB

[![Build Status](https://img.shields.io/travis/com/AlfredoRamos/phpbb-ext-seo-metadata.svg?style=flat-square)](https://travis-ci.com/AlfredoRamos/phpbb-ext-seo-metadata)
[![Latest Stable Version](https://img.shields.io/github/tag/AlfredoRamos/phpbb-ext-seo-metadata.svg?style=flat-square&label=stable)](https://github.com/AlfredoRamos/phpbb-ext-seo-metadata/releases)
[![License](https://img.shields.io/github/license/AlfredoRamos/phpbb-ext-seo-metadata.svg?style=flat-square)](https://raw.githubusercontent.com/AlfredoRamos/phpbb-ext-seo-metadata/master/license.txt)

Add Open Graph, Twitter Cards and JSON-LD data in posts.

If available, it will dynamically generate and include the following data inside the `<head>` tag:

<!-- more -->
### Features

- Dynamically generated Open Graph, Twitter Cards meta tags and JSON-LD microdata from your board data and current page
- Set default image for Open Graph and JSON-LD
- Set how description will be generated
- ACP settings to enable/disable Open Graph, Twitter Cards and JSON-LD
- Support for attachments, for topic image

#### Meta description

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
<meta name="twitter:card" content="summary">
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
		"logo": "..."
	}
}
</script>
```

### Preview

[![Global settings](https://i.imgur.com/8rg2fKIb.png)](https://i.imgur.com/8rg2fKI.png){:data-rel="lightcase:preview"}
[![Open Graph, Twitter Cards and JSON-LD settings](https://i.imgur.com/042NB5Fb.png)](https://i.imgur.com/042NB5F.png){:data-rel="lightcase:preview"}
[![Generated markup](https://i.imgur.com/xKswZUHb.png)](https://i.imgur.com/xKswZUH.png){:data-rel="lightcase:preview"}

*(Click to view in full size)*

### Requirements

- PHP 7.1.3 or greater
- phpBB 3.3 or greater

### Support

- [**Download page**](https://www.phpbb.com/customise/db/extension/seo_metadata/)
- [Support area](https://www.phpbb.com/customise/db/extension/seo_metadata/support)
- [GitHub issues](https://github.com/AlfredoRamos/phpbb-ext-seo-metadata/issues)

### Donate

If you like or found this extensions useful and want to show some appreciation, you can consider donating.

[![PayPal Donate](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)]({{ '/donate/' | relative_url }})

### Installation

- Download the [latest release](https://github.com/AlfredoRamos/phpbb-ext-seo-metadata/releases)
- Decompress the `*.zip` or `*.tar.gz` file
- Copy the files and directories inside `{PHPBB_ROOT}/ext/alfredoramos/seometadata/`
- Go to your `Administration Control Panel` > `Customize` > `Manage extensions`
- Click on `Enable` and confirm

### Configuration

- Go to your `Administration Control Panel` > `Extensions` > `SEO Metadata settings`
- Change settings as needed
- Click on `Submit`

### Uninstallation

- Go to your `Administration Control Panel` > `Customize` > `Manage extensions`
- Click on `Disable` and confirm
- Go back to `Manage extensions` > `SEO Metadata` > `Delete data` and confirm

### Upgrade

- Uninstall the extension
- Delete all the files inside `{PHPBB_ROOT}/ext/alfredoramos/seometadata/`
- Download the new version
- Install the extension
