---
title: Auto-lock topics extension for phpBB
date: 2017-05-11 18:52:54 -0500
last_modified_at: 2020-12-25 13:45:00 -0500
category: phpbb
tags: [phpbb-extension, auto-lock, cron]
scripts: [fslightbox]
image: https://i.imgur.com/mBCEbSf.png
image_type: png
image_width: 660
image_height: 263
---
Auto-lock Topics extension for phpBB

[![Build Status](https://img.shields.io/github/workflow/status/AlfredoRamos/phpbb-ext-auto-lock-topics/GitHub%20Actions%20CI?style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-auto-lock-topics/actions)
[![Latest Stable Version](https://img.shields.io/github/tag/AlfredoRamos/phpbb-ext-auto-lock-topics.svg?label=stable&style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-auto-lock-topics/releases)
[![Code Quality](https://img.shields.io/codacy/grade/1b2cb6aeb1214d80afbc800e31de36a0.svg?style=flat-square)](https://app.codacy.com/manual/AlfredoRamos/phpbb-ext-auto-lock-topics/dashboard)
[![Translation Progress](https://badges.crowdin.net/phpbb-ext-auto-lock-topics/localized.svg)](https://crowdin.com/project/phpbb-ext-auto-lock-topics)
[![License](https://img.shields.io/github/license/AlfredoRamos/phpbb-ext-auto-lock-topics.svg?style=flat-square)](https://raw.githubusercontent.com/AlfredoRamos/phpbb-ext-auto-lock-topics/master/license.txt)

It will automatically lock old topics using phpBB's cron functionality.

<!-- more -->
### Features

- Run the auto-lock cron task only in the selected forums
- Enable/disable announcements auto-lock
- Enable/disable polls auto-lock
- Enable/disable stickies auto-lock
- Set the number of days of post inactivity to trigger the auto-lock
- Set the frequency between auto-lock events
- Support for [Move Topics When Locked](https://www.phpbb.com/customise/db/extension/move_topics_when_locked/) extension

### Preview

[![Forums](https://i.imgur.com/aBjwVBpb.png)](https://i.imgur.com/aBjwVBp.png){:data-fslightbox="preview"}
[![Forum settings](https://i.imgur.com/mBCEbSfb.png)](https://i.imgur.com/mBCEbSf.png){:data-fslightbox="preview"}
[![Topics loked](https://i.imgur.com/uM7dkoGb.png)](https://i.imgur.com/uM7dkoG.png){:data-fslightbox="preview"}
[![Admin log](https://i.imgur.com/PIOhYf7b.png)](https://i.imgur.com/PIOhYf7.png){:data-fslightbox="preview"}

*(Click to view in full size)*

### Requirements

- PHP 7.1.3 or greater
- phpBB 3.3 or greater

### Support

- [**Download page**](https://www.phpbb.com/customise/db/extension/auto_lock_topics/)
- [Support area](https://www.phpbb.com/customise/db/extension/auto_lock_topics/support)
- [GitHub issues](https://github.com/AlfredoRamos/phpbb-ext-auto-lock-topics/issues)
- [Crowdin translations](https://crowdin.com/project/phpbb-ext-auto-lock-topics)

### Donate

{% include donation.html %}

### Configuration

- Go to your `Administration Control Panel` > `Forums` > `Manage Forums`
- Select a category and then a forum
- Click on the `Edit` button (green gear)
- Scroll down to `Auto-lock settings`
- Edit the settings as you like
- Click on `Submit`

### Installation

- Download the [latest release](https://github.com/AlfredoRamos/phpbb-ext-auto-lock-topics/releases)
- Decompress the `*.zip` or `*.tar.gz` file
- Copy the files and directories inside `{PHPBB_ROOT}/ext/alfredoramos/autolocktopics/`
- Go to your `Administration Control Panel` > `Customize` > `Manage extensions`
- Click on `Enable` and confirm

### Uninstallation

- Go to your `Administration Control Panel` > `Customize` > `Manage extensions`
- Click on `Disable` and confirm
- Go back to `Manage extensions` > `Auto-lock Topics` > `Delete data` and confirm

### Upgrade

- Uninstall the extension
- Delete all the files inside `{PHPBB_ROOT}/ext/alfredoramos/autolocktopics/`
- Download the new version
- Install the extension
