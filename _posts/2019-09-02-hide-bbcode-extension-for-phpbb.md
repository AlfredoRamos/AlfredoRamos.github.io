---
title: Hide BBCode extension for phpBB
date: 2019-09-02 16:26:38 -0500
category: phpbb
tags: [phpbb-extension, hide, bbcode]
---
Hide BBCode extension for phpBB.

[![Build Status](https://img.shields.io/travis/AlfredoRamos/phpbb-ext-hide.svg?style=flat-square)](https://travis-ci.org/AlfredoRamos/phpbb-ext-hide)
[![Latest Stable Version](https://img.shields.io/github/tag/AlfredoRamos/phpbb-ext-hide.svg?label=stable&style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-hide/releases)
[![Code Quality](https://img.shields.io/codacy/grade/c2388e8b347f41ab87213a0d9b72f2a9.svg?style=flat-square)](https://app.codacy.com/app/AlfredoRamos/phpbb-ext-hide)
[![License](https://img.shields.io/github/license/AlfredoRamos/phpbb-ext-hide.svg?style=flat-square)](https://raw.githubusercontent.com/AlfredoRamos/phpbb-ext-hide/master/license.txt)

Write `[hide]text[/hide]` or `[hide inline=1]text[/hide]` and it will hide the content to guests.

You can nest `[hide]` and use other BBCodes inside it.<!-- more -->

### Support

- [GitHub issues](https://github.com/AlfredoRamos/phpbb-ext-hide/issues) GitHub issues
- [Development topic](https://www.phpbb-es.com/foro/viewtopic.php?t=42374) at phpbb-es.com

### Dependencies

- PHP 5.6 or greater
- phpBB 3.2 or greater

### Preview

![Content as logged-in user](https://i.imgur.com/OajNWkc.png)

![Content as guest](https://i.imgur.com/xDbK3oU.png)

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
