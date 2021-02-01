---
title: "Markdown extension for phpBB"
date: 2021-01-31T17:32:04-06:00
---
Markdown extension for phpBB.

[![Build Status](https://img.shields.io/github/workflow/status/AlfredoRamos/phpbb-ext-markdown/GitHub%20Actions%20CI?style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-markdown/actions)
[![Latest Stable Version](https://img.shields.io/github/tag/AlfredoRamos/phpbb-ext-markdown.svg?label=stable&style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-markdown/releases)
[![Code Quality](https://img.shields.io/codacy/grade/7c8dbf2b5e6c4a68b7e0ceb04e9790f3.svg?style=flat-square)](https://app.codacy.com/manual/AlfredoRamos/phpbb-ext-markdown/dashboard)
 [![Translation Progress](https://badges.crowdin.net/phpbb-ext-markdown/localized.svg)](https://crowdin.com/project/phpbb-ext-markdown)
[![License](https://img.shields.io/github/license/AlfredoRamos/phpbb-ext-markdown.svg?style=flat-square)](https://raw.githubusercontent.com/AlfredoRamos/phpbb-ext-markdown/master/license.txt)

Allows you to write Markdown text in posts, signature or private messages and it will be converted as HTML. It can be used instead of or alongside BBCodes.

It uses the plugins [Litedown](https://s9etextformatter.readthedocs.io/Plugins/Litedown/Syntax/), [PipeTables](https://s9etextformatter.readthedocs.io/Plugins/PipeTables/Syntax/) and [TaskLists](https://s9etextformatter.readthedocs.io/Plugins/TaskLists/Synopsis/) from the [s9e/TextFormatter](https://github.com/s9e/TextFormatter) library.

<!--more-->
### Features

- Use Markdown in posts, personal messages and signatures
- Can be used instead of or alongside text formatted with BBCode
- Configuration to enable/disable the use of Markdown globally in the ACP
- Configuration to enable/disable the use of Markdown per user in the UCP
- Set per user group permissions to use Markdown
- Set per forum permissions to use Markdown
- Posting option to disable Markdown only in the current message
- Add help page to explain users how write messages in Markdown
- Add indentation when pressing the tab key inside Markdown code blocks

### Preview

{{<figure src="https://i.imgur.com/PSGGuM3b.png" link="https://i.imgur.com/PSGGuM3.png" alt="Board features" class="fslightbox">}}
{{<figure src="https://i.imgur.com/qYZ7JBCb.png" link="https://i.imgur.com/qYZ7JBC.png" alt="Post settings" class="fslightbox">}}
{{<figure src="https://i.imgur.com/np1PqN6b.png" link="https://i.imgur.com/np1PqN6.png" alt="Private message settings" class="fslightbox">}}
{{<figure src="https://i.imgur.com/aEKJxWRb.png" link="https://i.imgur.com/aEKJxWR.png" alt="Signature settings" class="fslightbox">}}
{{<figure src="https://i.imgur.com/eiJJvbMb.png" link="https://i.imgur.com/eiJJvbM.png" alt="Post group permissions" class="fslightbox">}}
{{<figure src="https://i.imgur.com/spT9zXYb.png" link="https://i.imgur.com/spT9zXY.png" alt="Profile group permissions" class="fslightbox">}}
{{<figure src="https://i.imgur.com/YXcNxXKb.png" link="https://i.imgur.com/YXcNxXK.png" alt="Private messages group permissions" class="fslightbox">}}
{{<figure src="https://i.imgur.com/5GIQpMVb.png" link="https://i.imgur.com/5GIQpMV.png" alt="Forum permissions" class="fslightbox">}}
{{<figure src="https://i.imgur.com/zWhjOfVb.png" link="https://i.imgur.com/zWhjOfV.png" alt="User posting defaults" class="fslightbox">}}
{{<figure src="https://i.imgur.com/kba871fb.png" link="https://i.imgur.com/kba871f.png" alt="Markdown post" class="fslightbox">}}
{{<figure src="https://i.imgur.com/HGvlwhIb.png" link="https://i.imgur.com/HGvlwhI.png" alt="Markdown private message" class="fslightbox">}}
{{<figure src="https://i.imgur.com/svBmgYXb.png" link="https://i.imgur.com/svBmgYX.png" alt="Markdown signature" class="fslightbox">}}
{{<figure src="https://i.imgur.com/1Z7CDDrb.png" link="https://i.imgur.com/1Z7CDDr.png" alt="Posting editor option" class="fslightbox">}}
{{<figure src="https://i.imgur.com/slz1Z9Yb.png" link="https://i.imgur.com/slz1Z9Y.png" alt="Task list" class="fslightbox">}}

*(Click to view in full size)*

### Requirements

- PHP 7.1.3 or greater
- phpBB 3.3 or greater

**Note:** You need phpBB 3.2.6 or greater ([PHPBB3-15949](https://tracker.phpbb.com/browse/PHPBB3-15949), [#5519](https://github.com/phpbb/phpbb/pull/5519)) to use the custom posting editor option to disable Markdown in the signature.

### Support

- [**Download page**](https://www.phpbb.com/customise/db/extension/markdown/)
- [Support area](https://www.phpbb.com/customise/db/extension/markdown/support)
- [GitHub issues](https://github.com/AlfredoRamos/phpbb-ext-markdown/issues)
- [Crowdin translations](https://crowdin.com/project/phpbb-ext-markdown)

### Donate

{{<donate>}}

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
