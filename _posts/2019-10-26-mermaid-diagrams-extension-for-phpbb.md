---
title: Mermaid Diagrams extension for phpBB
date: 2019-10-26 19:56:28 -0500
category: phpbb
tags: [phpbb-extension, mermaid, diagrams, flowchart, sequence-diagram, gantt-diagram, class-diagram, state-diagram, git-graph, pie-chart, bbcode, svg]
stylesheets: [lightcase]
scripts: [lightcase]
---
Mermaid Diagrams extension for phpBB.

[![Build Status](https://img.shields.io/travis/com/AlfredoRamos/phpbb-ext-mermaid.svg?style=flat-square)](https://travis-ci.com/AlfredoRamos/phpbb-ext-mermaid)
[![Latest Stable Version](https://img.shields.io/github/tag/AlfredoRamos/phpbb-ext-mermaid.svg?label=stable&style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-mermaid/releases)
[![Code Quality](https://img.shields.io/codacy/grade/9a33e76aa58540f2bc1ce04738d3309b.svg?style=flat-square)](https://app.codacy.com/app/AlfredoRamos/phpbb-ext-mermaid)
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

- PHP 5.6 or greater
- phpBB 3.2 or greater

### Support

- [**Download page**](https://www.phpbb.com/community/viewtopic.php?t=2527586)
- [GitHub issues](https://github.com/AlfredoRamos/phpbb-ext-mermaid/issues)

### Donate

If you like or found this extensions useful and want to show some appreciation, you can consider donating.

[![PayPal Donate](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=T2MSPMT8HJ96A&source=url)

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
