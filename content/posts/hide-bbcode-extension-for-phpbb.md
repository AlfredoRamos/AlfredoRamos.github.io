---
title: Hide BBCode extension for phpBB
date: 2019-09-02T16:26:38-05:00
lastmod: 2020-12-25T13:51:00-05:00
category: phpbb
tags: [phpbb-extension, hide, bbcode]
archives: [2019]
image:
  url: https://i.imgur.com/OajNWkc.png
  type: png
  width: 480
  height: 80
---
Hide BBCode extension for phpBB.

[![Build Status](https://img.shields.io/github/workflow/status/AlfredoRamos/phpbb-ext-hide/GitHub%20Actions%20CI?style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-hide/actions)
[![Latest Stable Version](https://img.shields.io/github/tag/AlfredoRamos/phpbb-ext-hide.svg?label=stable&style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-hide/releases)
[![Code Quality](https://img.shields.io/codacy/grade/5de75f922b4f4eae90615728e908c1c7.svg?style=flat-square)](https://app.codacy.com/gh/AlfredoRamos/phpbb-ext-hide/dashboard)
[![Translation Progress](https://badges.crowdin.net/phpbb-ext-hide/localized.svg)](https://crowdin.com/project/phpbb-ext-hide)
[![License](https://img.shields.io/github/license/AlfredoRamos/phpbb-ext-hide.svg?style=flat-square)](https://raw.githubusercontent.com/AlfredoRamos/phpbb-ext-hide/master/license.txt)

Allows you to write `[hide]text[/hide]` or `[hide inline=1]text[/hide]` and it will hide the content to guests.

You can nest `[hide]` and use other BBCodes inside it.

<!--more-->
### Features

- BBCodes can be nested
- It adds visual help to recognize content that will be hidden
- It can hide inline content
- It doesn't require extra configuration

### Preview

{{<preview src="https://i.imgur.com/OajNWkc.png" alt="Content as logged-in user" caption="Content as logged-in user" imgclass="img-fluid d-block mx-auto mb-3">}}

{{<preview src="https://i.imgur.com/xDbK3oU.png" alt="Content as guest" caption="Content as guest" imgclass="img-fluid d-block mx-auto mb-3">}}

### Requirements

- PHP 7.1.3 or greater
- phpBB 3.3 or greater

### Support

- [Development topic](https://www.phpbb-es.com/foro/viewtopic.php?t=42374)
- [GitHub issues](https://github.com/AlfredoRamos/phpbb-ext-hide/issues)
- [Crowdin translations](https://crowdin.com/project/phpbb-ext-hide)

### Donate

{{<donate>}}

### Configuration

To customize the look and feel:

- Move into `{PHPBB_ROOT}/ext/alfredoramos/hide/`
- Copy the `styles/prosilver/` directory to `styles/{STYLE}/`
- Edit the following files as needed
	- `styles/{STYLE}/theme/css/style.css`
	- `styles/{STYLE}/theme/css/colors.css`

**Note:** If your style doesn't inherit from `prosilver`, you should follow the steps above even if you don't want to change any file.

### Installation

- Download the [latest release](https://github.com/AlfredoRamos/phpbb-ext-hide/releases)
- Decompress the `*.zip` or `*.tar.gz` file
- Copy the files and directories inside `{PHPBB_ROOT}/ext/alfredoramos/hide/`
- Go to your `Administration Control Panel` > `Customize` > `Manage extensions`
- Click on `Enable` and confirm

### Uninstallation

- Go to your `Administration Control Panel` > `Customize` > `Manage extensions`
- Click on `Disable` and confirm
- Go back to `Manage extensions` > `Hide` > `Delete data` and confirm

### Upgrade

- Uninstall the extension
- Delete all the files inside `{PHPBB_ROOT}/ext/alfredoramos/hide/`
- Download the new version
- Install the extension
