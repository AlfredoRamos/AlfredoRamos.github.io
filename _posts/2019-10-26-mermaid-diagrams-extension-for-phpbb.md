---
title: Mermaid Diagrams extension for phpBB
date: 2019-10-26 19:56:28 -0500
last_modified_at: 2020-12-25 13:52:00 -0500
category: phpbb
tags: [phpbb-extension, mermaid, diagrams, flowchart, sequence-diagram, gantt-diagram, class-diagram, entity-relationship-diagram, state-diagram, git-graph, pie-chart, bbcode, svg]
scripts: [fslightbox]
image: https://i.imgur.com/iHEDfxQ.png
image_type: png
image_width: 882
image_height: 610
---
Mermaid Diagrams extension for phpBB.

[![Build Status](https://img.shields.io/github/workflow/status/AlfredoRamos/phpbb-ext-mermaid/GitHub%20Actions%20CI?style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-mermaid/actions)
[![Latest Stable Version](https://img.shields.io/github/tag/AlfredoRamos/phpbb-ext-mermaid.svg?label=stable&style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-mermaid/releases)
[![Code Quality](https://img.shields.io/codacy/grade/6ca752c34b9d4b66b7eb1c5de12af765.svg?style=flat-square)](https://app.codacy.com/manual/AlfredoRamos/phpbb-ext-mermaid/dashboard)
[![License](https://img.shields.io/github/license/AlfredoRamos/phpbb-ext-mermaid.svg?style=flat-square)](https://raw.githubusercontent.com/AlfredoRamos/phpbb-ext-mermaid/master/license.txt)

Allows you to generate diagrams and flowcharts from text in a similar manner as markdown.

It uses the [mermaid](https://github.com/mermaid-js/mermaid) library to generate the SVG markup and supports all diagrams available. You can read more about the supported syntax in the official documentation:

- [mermaid](https://mermaid-js.github.io/mermaid/)

<!-- more -->
### Features

- Posting button for the `[mermaid]` BBCode
- Generate SVG diagrams from text
- Supports all diagrams and charts available in the library, currently:
	- Flowchart
	- Sequence diagram
	- Class diagram
	- Entity relationship diagram
	- State diagram
	- Gantt diagram
	- Git graph
	- Pie chart
- Compatible with [Markdown]({% post_url 2019-07-01-markdown-extension-for-phpbb %}) extension
- It doesn't require extra configuration

### Preview

[![Flowchart](https://i.imgur.com/5jhoiqgb.png)](https://i.imgur.com/5jhoiqg.png){:data-fslightbox="preview"}
[![Sequence diagram](https://i.imgur.com/QPVhPuhb.png)](https://i.imgur.com/QPVhPuh.png){:data-fslightbox="preview"}
[![Gantt diagram](https://i.imgur.com/C1qOugrb.png)](https://i.imgur.com/C1qOugr.png){:data-fslightbox="preview"}
[![Class diagram](https://i.imgur.com/iHEDfxQb.png)](https://i.imgur.com/iHEDfxQ.png){:data-fslightbox="preview"}
 [![Entity relationship diagram](https://i.imgur.com/jbZzc2Pb.png)](https://i.imgur.com/jbZzc2P.png){:data-fslightbox="preview"}
[![State diagram](https://i.imgur.com/hDGmUm9b.png)](https://i.imgur.com/hDGmUm9.png){:data-fslightbox="preview"}
[![Pie chart](https://i.imgur.com/WP7uiQwb.png)](https://i.imgur.com/WP7uiQw.png){:data-fslightbox="preview"}

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
