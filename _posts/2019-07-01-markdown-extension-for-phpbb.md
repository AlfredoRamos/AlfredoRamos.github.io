---
title: Markdown extension for phpBB
date: 2019-05-24 14:29:05 -0500
last_modified_at: 2020-03-03 15:00:40 -0500
category: phpbb
tags: [phpbb-extension, markdown, textformatter, litedown, pipetables]
stylesheets: [lightcase]
scripts: [lightcase]
thumbnail: https://i.imgur.com/svBmgYXm.png
image: https://i.imgur.com/svBmgYX.png
image_type: png
image_width: 519
image_height: 381
---
Markdown extension for phpBB.

[![Build Status](https://img.shields.io/travis/com/AlfredoRamos/phpbb-ext-markdown.svg?style=flat-square)](https://travis-ci.com/AlfredoRamos/phpbb-ext-markdown)
[![Latest Stable Version](https://img.shields.io/github/tag/AlfredoRamos/phpbb-ext-markdown.svg?label=stable&style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-markdown/releases)
[![Code Quality](https://img.shields.io/codacy/grade/7c1665095088482e9f023c96ed569653.svg?style=flat-square)](https://app.codacy.com/app/AlfredoRamos/phpbb-ext-markdown)
[![License](https://img.shields.io/github/license/AlfredoRamos/phpbb-ext-markdown.svg?style=flat-square)](https://raw.githubusercontent.com/AlfredoRamos/phpbb-ext-markdown/master/license.txt)

Write Markdown text in posts, signature or private messages and it will be converted as HTML. It can be used instead of or alongside BBCodes.

It uses the plugins Litedown and PipeTables from [s9e/TextFormatter](https://github.com/s9e/TextFormatter). You can read more about the supported syntax in the official documentation:

- [Litedown: Syntax](https://s9etextformatter.readthedocs.io/Plugins/Litedown/Syntax/)
- [PipeTables: Syntax](https://s9etextformatter.readthedocs.io/Plugins/PipeTables/Syntax/)

<!-- more -->
### Features

- Use Markdown in posts, personal messages and signatures
- Can be used instead of or alongside text formatted with BBCode
- Configuration to enable/disable the use of Markdown globally in the ACP
- Configuration to enable/disable the use of Markdown per user in the UCP
- Set per user group permissions to use Markdown
- Set per forum permissions to use Markdown
- Posting option to disable Markdown only in the current message (see note below)
- Add help page to explain users how write messages in Markdown

### Preview

[![Board features](https://i.imgur.com/PSGGuM3b.png)](https://i.imgur.com/PSGGuM3.png){:data-rel="lightcase:preview"}
[![Post settings](https://i.imgur.com/qYZ7JBCb.png)](https://i.imgur.com/qYZ7JBC.png){:data-rel="lightcase:pewview"}
[![Private message settings](https://i.imgur.com/np1PqN6b.png)](https://i.imgur.com/np1PqN6.png){:data-rel="lightcase:preview"}
[![Signature settings](https://i.imgur.com/aEKJxWRb.png)](https://i.imgur.com/aEKJxWR.png){:data-rel="lightcase:preview"}
[![Post group permissions](https://i.imgur.com/eiJJvbMb.png)](https://i.imgur.com/eiJJvbM.png){:data-rel="lightcase:preview"}
[![Profile group permissions](https://i.imgur.com/spT9zXYb.png)](https://i.imgur.com/spT9zXY.png){:data-rel="lightcase:preview"}
[![Private messages group permissions](https://i.imgur.com/YXcNxXKb.png)](https://i.imgur.com/YXcNxXK.png){:data-rel="lightcase:preview"}
[![Forum permissions](https://i.imgur.com/5GIQpMVb.png)](https://i.imgur.com/5GIQpMV.png){:data-rel="lightcase:preview"}
[![User posting defaults](https://i.imgur.com/zWhjOfVb.png)](https://i.imgur.com/zWhjOfV.png){:data-rel="lightcase:preview"}
[![Markdown post](https://i.imgur.com/kba871fb.png)](https://i.imgur.com/kba871f.png){:data-rel="lightcase:preview"}
[![Markdown private message](https://i.imgur.com/HGvlwhIb.png)](https://i.imgur.com/HGvlwhI.png){:data-rel="lightcase:preview"}
[![Markdown signature](https://i.imgur.com/svBmgYXb.png)](https://i.imgur.com/svBmgYX.png){:data-rel="lightcase:preview"}
[![Posting editor option](https://i.imgur.com/1Z7CDDrb.png)](https://i.imgur.com/1Z7CDDr.png){:data-rel="lightcase:preview"}

*(Click to view in full size)*

### Requirements

- PHP 7.1.3 or greater
- phpBB 3.3 or greater

**Note:** You need phpBB 3.2.6 or greater ([PHPBB3-15949](https://tracker.phpbb.com/browse/PHPBB3-15949), [#5519](https://github.com/phpbb/phpbb/pull/5519)) to use the custom posting editor option to disable Markdown in the signature.

### Support

- [**Download page**](https://www.phpbb.com/customise/db/extension/markdown/)
- [Support area](https://www.phpbb.com/customise/db/extension/markdown/support)
- [GitHub issues](https://github.com/AlfredoRamos/phpbb-ext-markdown/issues)

### Donate

If you like or found this extensions useful and want to show some appreciation, you can consider donating.

[![PayPal Donate](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)]({{ '/donate/' | relative_url }})

### Installation

- Download the [latest release](https://github.com/AlfredoRamos/phpbb-ext-markdown/releases)
- Decompress the `*.zip` or `*.tar.gz` file
- Copy the files and directories inside `{PHPBB_ROOT}/ext/alfredoramos/markdown/`
- Go to your `Administration Control Panel` > `Customize` > `Manage extensions`
- Click on `Enable` and confirm

### Configuration

#### Administrator

To enable or disable globally:

- Go to your `Administration Control Panel` > `Board features` > `Allow Markdown`
- Change settings as needed
- Click on `Submit`

To change forum permissions:

- Go to your `Administration Control Panel` > `Permissions` > `Forum permissions`
- Select the forums and click on `Submit`
- Select the users or groups and click on `Edit permissions`
- Select the users or groups and click on `Advanced Permissions`
- Go to `Content` and change the settings as needed
- Click on `Apply all permissions`

To change user group permissions:

- Go to your `Administration Control Panel` > `Permissions` > `Group permissions`
- Select the group and click on `Submit`
- Click on `Advanced permissions`
- Go to `Post` or `Private messages` and change settings as needed
- Click on `Apply all permissions`

#### User

To change default posting settings:

- Go to your `User Control Panel` > `Board preferences` > `Posting defaults`
- Change the settings as needed
- Click on `Submit`

To disable Markdown only in the current message (post, signature or private message):

- Go down to the posting editor options
- Check the option `Disable Markdown`
- Click on `Preview` or `Submit`

### Uninstallation

- Go to your `Administration Control Panel` > `Customize` > `Manage extensions`
- Click on `Disable` and confirm
- Go back to `Manage extensions` > `Markdown` > `Delete data` and confirm

### Upgrade

- Uninstall the extension
- Delete all the files inside `{PHPBB_ROOT}/ext/alfredoramos/markdown/`
- Download the new version
- Install the extension
