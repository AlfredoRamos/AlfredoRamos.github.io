---
title: Auto-lock topics extension for phpBB
date: 2017-05-11 18:52:54 -0500
last_modified_at: 2019-10-13 20:32:51 -0500
category: phpbb
tags: [phpbb-extension, auto-lock, cron]
stylesheets: [lightcase]
scripts: [lightcase]
---
Auto-lock Topics extension for phpBB

[![Build Status](https://img.shields.io/travis/AlfredoRamos/phpbb-ext-auto-lock-topics.svg?style=flat-square)](https://travis-ci.org/AlfredoRamos/phpbb-ext-auto-lock-topics)
[![Latest Stable Version](https://img.shields.io/github/tag/AlfredoRamos/phpbb-ext-auto-lock-topics.svg?label=stable&style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-auto-lock-topics/releases)
[![Code Quality](https://img.shields.io/codacy/grade/68d61a08cf0541f595194fbf54ed4bd7.svg?style=flat-square)](https://app.codacy.com/app/AlfredoRamos/phpbb-ext-auto-lock-topics)
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

[![Forums](https://i.imgur.com/aBjwVBpb.png)](https://i.imgur.com/aBjwVBp.png){:data-rel="lightcase:preview"}
[![Forum settings](https://i.imgur.com/mBCEbSfb.png)](https://i.imgur.com/mBCEbSf.png){:data-rel="lightcase:preview"}
[![Topics loked](https://i.imgur.com/uM7dkoGb.png)](https://i.imgur.com/uM7dkoG.png){:data-rel="lightcase:preview"}
[![Admin log](https://i.imgur.com/PIOhYf7b.png)](https://i.imgur.com/PIOhYf7.png){:data-rel="lightcase:preview"}

*(Click to view in full size)*

### Requirements

- PHP 5.6 or greater
- phpBB 3.2 or greater

### Support

- [**Download page**](https://www.phpbb.com/customise/db/extension/auto_lock_topics/)
- [Support area](https://www.phpbb.com/customise/db/extension/auto_lock_topics/support)
- [GitHub issues](https://github.com/AlfredoRamos/phpbb-ext-auto-lock-topics/issues)

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
