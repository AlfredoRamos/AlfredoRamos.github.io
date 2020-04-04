---
title: Mermaid Diagrams extension for phpBB
date: 2019-10-26 19:56:28 -0500
last_modified_at: 2020-03-03 15:01:20 -0500
category: phpbb
tags: [phpbb-extension, mermaid, diagrams, flowchart, sequence-diagram, gantt-diagram, class-diagram, state-diagram, git-graph, pie-chart, bbcode, svg]
stylesheets: [lightcase]
scripts: [lightcase]
thumbnail: https://i.imgur.com/iHEDfxQm.png
image: https://i.imgur.com/iHEDfxQ.png
image_type: png
image_width: 882
image_height: 610
---
Mermaid Diagrams extension for phpBB.

[![Build Status](https://img.shields.io/travis/com/AlfredoRamos/phpbb-ext-mermaid.svg?style=flat-square)](https://travis-ci.com/AlfredoRamos/phpbb-ext-mermaid)
[![Latest Stable Version](https://img.shields.io/github/tag/AlfredoRamos/phpbb-ext-mermaid.svg?label=stable&style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-mermaid/releases)
[![License](https://img.shields.io/github/license/AlfredoRamos/phpbb-ext-mermaid.svg?style=flat-square)](https://raw.githubusercontent.com/AlfredoRamos/phpbb-ext-mermaid/master/license.txt)

Allows you to generate diagrams and flowcharts from text in a similar manner as markdown.

It uses the [mermaid](https://github.com/knsv/mermaid) library to generate the SVG markup and supports all diagrams available. You can read more about the supported syntax in the official documentation:

- [mermaid](https://mermaidjs.github.io)

<!-- more -->
### Features

- Posting button for the `[mermaid]` BBCode
- Generate SVG diagrams from text
- Supports all diagrams and charts available in the library, currently:
	- Flowchart
	- Sequence diagram
	- Class diagram
	- State diagram
	- Gantt diagram
	- Git graph
	- Pie chart
- Compatible with [Markdown]({% post_url 2019-07-01-markdown-extension-for-phpbb %}) extension
- It doesn't require extra configuration

### Preview

[![Flowchart](https://i.imgur.com/5jhoiqgb.png)](https://i.imgur.com/5jhoiqg.png){:data-rel="lightcase:preview"}
[![Sequence diagram](https://i.imgur.com/QPVhPuhb.png)](https://i.imgur.com/QPVhPuh.png){:data-rel="lightcase:preview"}
[![Gantt diagram](https://i.imgur.com/C1qOugrb.png)](https://i.imgur.com/C1qOugr.png){:data-rel="lightcase:preview"}
[![Class diagram](https://i.imgur.com/iHEDfxQb.png)](https://i.imgur.com/iHEDfxQ.png){:data-rel="lightcase:preview"}
[![State diagram](https://i.imgur.com/hDGmUm9b.png)](https://i.imgur.com/hDGmUm9.png){:data-rel="lightcase:preview"}
[![Pie chart](https://i.imgur.com/WP7uiQwb.png)](https://i.imgur.com/WP7uiQw.png){:data-rel="lightcase:preview"}

*(Click to view in full size)*

### Requirements

- PHP 7.1.3 or greater
- phpBB 3.3 or greater

### Support

- [**Download page**](https://www.phpbb.com/community/viewtopic.php?t=2527586)
- [GitHub issues](https://github.com/AlfredoRamos/phpbb-ext-mermaid/issues)

### Donate

{% include donation.html %}

### Installation

- Download the [latest release](https://github.com/AlfredoRamos/phpbb-ext-mermaid/releases)
- Decompress the `*.zip` or `*.tar.gz` file
- Copy the files and directories inside `{PHPBB_ROOT}/ext/alfredoramos/mermaid/`
- Go to your `Administration Control Panel` > `Customize` > `Manage extensions`
- Click on `Enable` and confirm

### Configuration

It doesn’t require any configuration.

### Uninstallation

- Go to your `Administration Control Panel` > `Customize` > `Manage extensions`
- Click on `Disable` and confirm
- Go back to `Manage extensions` > `Mermaid Diagrams` > `Delete data` and confirm

### Upgrade

- Uninstall the extension
- Delete all the files inside `{PHPBB_ROOT}/ext/alfredoramos/mermaid/`
- Download the new version
- Install the extension
