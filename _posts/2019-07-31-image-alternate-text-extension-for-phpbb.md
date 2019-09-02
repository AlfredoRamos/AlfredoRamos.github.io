---
title: Image Alternate Text extension for phpBB
date: 2019-07-31 19:18:13 -0500
last_modified_at: 2019-08-09 13:28:35 -0500
category: phpbb
tags: [phpbb-extension, image-alt, bbcode, textformatter, markdown, litedown]
---
Image Alternate Text extension for phpBB.

[![Build Status](https://img.shields.io/travis/com/AlfredoRamos/phpbb-ext-image-alt.svg?style=flat-square)](https://travis-ci.com/AlfredoRamos/phpbb-ext-image-alt)
[![Latest Stable Version](https://img.shields.io/github/tag/AlfredoRamos/phpbb-ext-image-alt.svg?label=stable&style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-image-alt/releases)
[![Code Quality](https://img.shields.io/codacy/grade/0ef34fce1e3f4c32990fcb495efe98d8.svg?style=flat-square)](https://app.codacy.com/app/AlfredoRamos/phpbb-ext-image-alt)
[![License](https://img.shields.io/github/license/AlfredoRamos/phpbb-ext-image-alt.svg?style=flat-square)](https://raw.githubusercontent.com/AlfredoRamos/phpbb-ext-image-alt/master/license.txt)

Allows you to set alternate text to image tags. Example:

**BBCode input**
```
[img alt="text"]url[/img]
```

**Markdown input** (requires the [Markdown phpBB extension](https://github.com/AlfredoRamos/phpbb-ext-image-alt))
```markdown
![text](url)
```

___
**HTML output**

```html
<img src="url" class="postimage" alt="text">
```

<!-- more -->
### Support

- [GitHub issues](https://github.com/AlfredoRamos/phpbb-ext-image-alt/issues)
- [Development topic](https://www.phpbb.com/community/viewtopic.php?t=2518201) at phpbb.com

### Dependencies

- PHP 5.6 or greater
- phpBB 3.2 or greater

### Installation

- Download the [latest release](https://github.com/AlfredoRamos/phpbb-ext-image-alt/releases)
- Decompress the `*.zip` or `*.tar.gz` file
- Copy the files and directories inside `{PHPBB_ROOT}/ext/alfredoramos/imagealt/`
- Go to your `Administration Control Panel` > `Customize` > `Manage extensions`
- Click on `Enable` and confirm

### Configuration

It doesn't require any configuration.

### Uninstallation

- Go to your `Administration Control Panel` > `Customize` > `Manage extensions`
- Click on `Disable` and confirm
- Go back to `Manage extensions` > `Image Alternate Text` > `Delete data` and confirm

### Upgrade

- Uninstall the extension
- Delete all the files inside `{PHPBB_ROOT}/ext/alfredoramos/imagealt/`
- Download the new version
- Install the extension
