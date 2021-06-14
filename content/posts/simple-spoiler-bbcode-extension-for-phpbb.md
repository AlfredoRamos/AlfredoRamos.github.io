---
title: Simple Spoiler BBCode extension for phpBB
date: 2017-01-14T23:53:37-05:00
lastmod: 2021-06-14T12:46:25-05:00
categories: [phpbb]
tags: [phpbb-extension, spoiler, bbcode]
archives: [2017]
image:
  url: https://i.imgur.com/5NrtAoS.png
  type: png
  width: 423
  height: 117
---
Simple Spoiler BBCode extension for phpBB.

[![Build Status](https://img.shields.io/github/workflow/status/AlfredoRamos/phpbb-ext-simple-spoiler/GitHub%20Actions%20CI?style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-simple-spoiler/actions)
[![Latest Stable Version](https://img.shields.io/github/tag/AlfredoRamos/phpbb-ext-simple-spoiler.svg?label=stable&style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-simple-spoiler/releases)
[![Code Quality](https://img.shields.io/codacy/grade/d999d79cca134f189502ad84cee17a33.svg?style=flat-square)](https://app.codacy.com/gh/AlfredoRamos/phpbb-ext-simple-spoiler/dashboard)
[![Translation Progress](https://badges.crowdin.net/phpbb-ext-simple-spoiler/localized.svg)](https://crowdin.com/project/phpbb-ext-simple-spoiler)
[![License](https://img.shields.io/github/license/AlfredoRamos/phpbb-ext-simple-spoiler.svg?style=flat-square)](https://raw.githubusercontent.com/AlfredoRamos/phpbb-ext-simple-spoiler/master/license.txt)

Allows you to write `[spoiler]text[/spoiler]` or `[spoiler title=title]text[/spoiler]` and it will hide the content on anywhere that you can render BBCodes.

You can nest `[spoiler]` and write unicode titles in `[spoiler title=title]`.

<!--more-->
### Features

- BBCodes can be nested
- Full Unicode support in title for the `[spoiler title=]` BBCode
- It's easily extensible and customizable for new styles
- HTML5 markup

### Preview

{{<preview src="https://i.imgur.com/5NrtAoS.png" alt="Nested spoilers" imgclass="img-fluid d-block mx-auto mb-3">}}

```plaintext
[spoiler title=Nested spoilers]First level
[spoiler title=«µǹï¢øð€»]Second level[/spoiler][/spoiler]
```

{{<preview src="https://i.imgur.com/5NrtAoS.png" alt="Spoiler title with emojis" imgclass="img-fluid d-block mx-auto mb-3">}}

```plaintext
[spoiler title=🇩🇪 🇲🇽 🇺🇸 Title with emojis 😁 🤗 🔱]Some text 🦏[/spoiler]
```

### Requirements

- PHP 7.1.3 or greater
- phpBB 3.3 or greater

### Support

- [**Download page**](https://www.phpbb.com/customise/db/extension/simple_spoiler_bbcode/)
- [FAQ](https://www.phpbb.com/customise/db/extension/simple_spoiler_bbcode/faq)
- [Support area](https://www.phpbb.com/customise/db/extension/simple_spoiler_bbcode/support)
- [GitHub issues](https://github.com/AlfredoRamos/phpbb-ext-simple-spoiler/issues)
- [Crowdin translations](https://crowdin.com/project/phpbb-ext-simple-spoiler)

### Donate

{{<donate>}}

### Configuration

To customize the look and feel:

- Move into `{PHPBB_ROOT}/ext/alfredoramos/simplespoiler/`
- Copy the `styles/prosilver/` directory to `styles/{STYLE}/`
- Edit the following files as needed
	- `styles/{STYLE}/theme/css/style.css`
	- `styles/{STYLE}/theme/css/colors.css`

**Note:** If your style doesn't inherit from `prosilver`, you should follow the steps above even if you don't want to change any file.

### Installation

- Download the [latest release](https://github.com/AlfredoRamos/phpbb-ext-simple-spoiler/releases)
- Decompress the `*.zip` or `*.tar.gz` file
- Copy the files and directories inside `{PHPBB_ROOT}/ext/alfredoramos/simplespoiler/`
- Go to your `Administration Control Panel` > `Customize` > `Manage extensions`
- Click on `Enable` and confirm

### Uninstallation

- Go to your `Administration Control Panel` > `Customize` > `Manage extensions`
- Click on `Disable` and confirm
- Go back to `Manage extensions` > `Simple Spoiler BBCode` > `Delete data` and confirm

### Upgrade

- Go to your `Administration Control Panel` > `Customize` > `Manage extensions`
- Click on `Disable` and confirm
- Delete all the files inside `{PHPBB_ROOT}/ext/alfredoramos/simplespoiler/`
- Download the new version
- Upload the new files inside `{PHPBB_ROOT}/ext/alfredoramos/simplespoiler/`
- Enable the extension again
