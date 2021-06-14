---
title: Mermaid Diagrams extension for phpBB
date: 2019-10-26T19:56:28-05:00
lastmod: 2020-12-25T13:52:00-05:00
categories: [phpbb]
tags: [phpbb-extension, mermaid, diagrams, flowchart, sequence-diagram, gantt-diagram, class-diagram, entity-relationship-diagram, state-diagram, git-graph, pie-chart, bbcode, svg]
archives: [2019]
image:
  url: https://i.imgur.com/iHEDfxQ.png
  type: png
  width: 882
  height: 610
assets: [fslightbox]
---
Mermaid Diagrams extension for phpBB.

[![Build Status](https://img.shields.io/github/workflow/status/AlfredoRamos/phpbb-ext-mermaid/GitHub%20Actions%20CI?style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-mermaid/actions)
[![Latest Stable Version](https://img.shields.io/github/tag/AlfredoRamos/phpbb-ext-mermaid.svg?label=stable&style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-mermaid/releases)
[![Code Quality](https://img.shields.io/codacy/grade/6ca752c34b9d4b66b7eb1c5de12af765.svg?style=flat-square)](https://app.codacy.com/gh/AlfredoRamos/phpbb-ext-mermaid/dashboard)
[![License](https://img.shields.io/github/license/AlfredoRamos/phpbb-ext-mermaid.svg?style=flat-square)](https://raw.githubusercontent.com/AlfredoRamos/phpbb-ext-mermaid/master/license.txt)

Allows you to generate diagrams and flowcharts from text in a similar manner as markdown.

It uses the [mermaid](https://github.com/mermaid-js/mermaid) library to generate the SVG markup and supports all diagrams available. You can read more about the supported syntax in the official documentation:

- [mermaid](https://mermaid-js.github.io/mermaid/)

<!--more-->
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
- Compatible with [Markdown]({{<relref "markdown-extension-for-phpbb">}}) extension
- It doesn't require extra configuration

### Preview

{{<preview src="https://i.imgur.com/5jhoiqgb.png" link="https://i.imgur.com/5jhoiqg.png" alt="Flowchart">}}
{{<preview src="https://i.imgur.com/QPVhPuhb.png" link="https://i.imgur.com/QPVhPuh.png" alt="Sequence diagram">}}
{{<preview src="https://i.imgur.com/C1qOugrb.png" link="https://i.imgur.com/C1qOugr.png" alt="Gantt diagram">}}
{{<preview src="https://i.imgur.com/iHEDfxQb.png" link="https://i.imgur.com/iHEDfxQ.png" alt="Class diagram">}}
{{<preview src="https://i.imgur.com/jbZzc2Pb.png" link="https://i.imgur.com/jbZzc2P.png" alt="Entity relationship diagram">}}
{{<preview src="https://i.imgur.com/hDGmUm9b.png" link="https://i.imgur.com/hDGmUm9.png" alt="State diagram">}}
{{<preview src="https://i.imgur.com/WP7uiQwb.png" link="https://i.imgur.com/WP7uiQw.png" alt="Pie chart">}}

*(Click to view in full size)*

### Requirements

- PHP 7.1.3 or greater
- phpBB 3.3 or greater

### Support

- [**Download page**](https://www.phpbb.com/community/viewtopic.php?t=2527586)
- [GitHub issues](https://github.com/AlfredoRamos/phpbb-ext-mermaid/issues)

### Donate

{{<donate>}}

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

- Go to your `Administration Control Panel` > `Customize` > `Manage extensions`
- Click on `Disable` and confirm
- Delete all the files inside `{PHPBB_ROOT}/ext/alfredoramos/mermaid/`
- Download the new version
- Upload the new files inside `{PHPBB_ROOT}/ext/alfredoramos/mermaid/`
- Enable the extension again
