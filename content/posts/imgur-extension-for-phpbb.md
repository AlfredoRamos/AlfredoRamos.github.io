---
title: Imgur extension for phpBB
date: 2017-05-13T18:29:16-05:00
lastmod: 2020-12-25T13:46:00-05:00
categories: [phpbb]
tags: [phpbb-extension, imgur, bbcode]
archives: [2017]
image:
  url: https://i.imgur.com/xxCEse7.png
  type: png
  width: 545
  height: 306
---
Imgur extension for phpBB.

[![Build Status](https://img.shields.io/github/workflow/status/AlfredoRamos/phpbb-ext-imgur/GitHub%20Actions%20CI?style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-imgur/actions)
[![Latest Stable Version](https://img.shields.io/github/tag/AlfredoRamos/phpbb-ext-imgur.svg?label=stable&style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-imgur/releases)
[![Code Quality](https://img.shields.io/codacy/grade/e45e4f83b6724dfe97c43b596ec61d3b.svg?style=flat-square)](https://app.codacy.com/manual/AlfredoRamos/phpbb-ext-imgur/dashboard)
[![Translation Progress](https://badges.crowdin.net/phpbb-ext-imgur/localized.svg)](https://crowdin.com/project/phpbb-ext-imgur)
[![License](https://img.shields.io/github/license/AlfredoRamos/phpbb-ext-imgur.svg?style=flat-square)](https://raw.githubusercontent.com/AlfredoRamos/phpbb-ext-imgur/master/license.txt)

With this extension you can click on the `Imgur` posting button and select the image(s) you want to upload.

If the upload is successful it will add the image in the topic, private message or signature content. You can choose in the `Administration Control Panel` to show the uploaded image as plan text or with BBCode as URL, image (default) or thumbnail.

<!--more-->
### Features

- Change Imgur API data though the ACP
- Optionally, set an album where all the images will be uploaded to
- Compatibility with ABBC3 extension
- CSRF protection
- Administrator log on configuration changes
- Insert BBCode/text at cursor position
- Album download link in the ACP for backup
- Upload progress bar
- Compatibility with QuickReply Reloaded extension
- Compatibility with mChat extension
- Drop-down menu in posting box button
- Imgur tab in posting box options
- Save some user preferences using `localStorage` and `sessionStorage`

### Preview

{{<preview src="https://i.imgur.com/FDKbWoqb.png" link="https://i.imgur.com/FDKbWoq.png" alt="ACP settings" imgclass="fslightbox">}}
{{<preview src="https://i.imgur.com/xxCEse7b.png" link="https://i.imgur.com/xxCEse7.png" alt="ACP settings API" imgclass="fslightbox">}}
{{<preview src="https://i.imgur.com/CKcYnY2b.png" link="https://i.imgur.com/CKcYnY2.png" alt="ACP output settings" imgclass="fslightbox">}}
{{<preview src="https://i.imgur.com/8C7sMR2b.png" link="https://i.imgur.com/8C7sMR2.png" alt="Topic" imgclass="fslightbox">}}
{{<preview src="https://i.imgur.com/YZNmOxeb.png" link="https://i.imgur.com/YZNmOxe.png" alt="Output menu" imgclass="fslightbox">}}
{{<preview src="https://i.imgur.com/a7UUoEYb.png" link="https://i.imgur.com/a7UUoEY.png" alt="Output tab" imgclass="fslightbox">}}

*(Click to view in full size)*

### Requirements

- PHP 7.1.3 or greater
- phpBB 3.3 or greater
- Composer (for development only)
- Imgur API data (`client_id` and `client_secret`)

### Support

- [**Download page**](https://www.phpbb.com/customise/db/extension/imgur/)
- [FAQ](https://www.phpbb.com/customise/db/extension/imgur/faq)
- [Support area](https://www.phpbb.com/customise/db/extension/imgur/support)
- [GitHub issues](https://github.com/AlfredoRamos/phpbb-ext-imgur/issues)
- [Crowdin translations](https://crowdin.com/project/phpbb-ext-imgur)

### Donate

{{<donate>}}

### Imgur API
- Create an Imgur account, if you don't have one already
- Register your application at https://api.imgur.com/oauth2/addclient
- Type an application name
- Select `OAuth 2 authorization with a callback URL`
- Set `Authorization callback URL` to `http://domain.tld/app.php/imgur/authorize`, use `https://` if you have an SSL certificate
- Verify that the previous URL works
- Type your email and a short description
- After clicking `Submit` you should get a `client_id` and `client_secret`

### Configuration

- Go to your `Administration Control Panel` > `Extensions` > `Imgur settings`
- Set the `Client ID`, `Client Secret` and optionally an `Album`
- Click on `Submit`
- Once you have the required API data, click on the authorization link shown above
- A new window will popup to authorize the application
- Login to your Imgur account and grant access
- The window will close itself when it's done, or show an error message

To customize the look and feel:

- Move into `{PHPBB_ROOT}/ext/alfredoramos/imgur/`
- Copy the `styles/prosilver/` directory to `styles/{STYLE}/`
- Edit the file `styles/{STYLE}/theme/css/imgur.css` as needed

**Note:** If your style doesn't inherit from `prosilver`, you should follow the steps above even if you don't want to change any file.

### Installation

- Download the [latest release](https://github.com/AlfredoRamos/phpbb-ext-imgur/releases)
- Decompress the `*.zip` or `*.tar.gz` file
- Copy the files and directories inside `{PHPBB_ROOT}/ext/alfredoramos/imgur/`
- Run `composer install --prefer-dist --no-dev` inside `{PHPBB_ROOT}/ext/alfredoramos/imgur/`
- Go to your `Administration Control Panel` > `Customize` > `Manage extensions`
- Click on `Enable` and confirm

### Uninstallation

- Go to your `Administration Control Panel` > `Customize` > `Manage extensions`
- Click on `Disable` and confirm
- Go back to `Manage extensions` > `Imgur` > `Delete data` and confirm

### Upgrade

- Uninstall the extension
- Delete all the files inside `{PHPBB_ROOT}/ext/alfredoramos/imgur/`
- Download the new version
- Install the extension
