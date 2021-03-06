---
title: Mailrelay extension for phpBB
date: 2020-09-18T00:48:17-05:00
lastmod: 2021-06-14T12:46:50-05:00
categories: [phpbb]
tags: [phpbb-extension, mailrelay, email, marketing, cron]
archives: [2020]
image:
  url: https://i.imgur.com/mgFGzBe.jpg
  type: jpeg
  width: 1280
  height: 640
---
Mailrelay extension for phpBB.

[![Build Status](https://img.shields.io/github/workflow/status/AlfredoRamos/phpbb-ext-mailrelay/GitHub%20Actions%20CI?style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-mailrelay/actions)
[![Latest Stable Version](https://img.shields.io/github/tag/AlfredoRamos/phpbb-ext-mailrelay.svg?label=stable&style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-mailrelay/releases)
[![Code Quality](https://img.shields.io/codacy/grade/4f32454baf88449b864091d05c1a14c5.svg?style=flat-square)](https://app.codacy.com/gh/AlfredoRamos/phpbb-ext-mailrelay/dashboard)
[![Translation Progress](https://badges.crowdin.net/phpbb-ext-mailrelay/localized.svg)](https://crowdin.com/project/phpbb-ext-mailrelay)
[![License](https://img.shields.io/github/license/AlfredoRamos/phpbb-ext-mailrelay.svg?style=flat-square)](https://raw.githubusercontent.com/AlfredoRamos/phpbb-ext-mailrelay/master/license.txt)

Automatically synchronizes user emails to [Mailrelay](https://mailrelay.com/) to create, manage and send marketing campaigns.

<!--more-->
### Features

- Synchronizes user emails and names using a cron task
- Set the group ID where users will be added to
- Set the maximum number of users that will be synchronized on each execution
- Set frequency of synchronization tasks
- Exclude bots by default
- Exclude users that do not allow mass emails by default
- Exclude banned users by default

### Preview

{{<preview src="https://i.imgur.com/kkI1Z75.png" alt="Mailrelay ACP settings" imgclass="img-fluid d-block mx-auto mb-3">}}

### Requirements

- PHP 7.1.3 or greater
- phpBB 3.3 or greate
- Mailrelay API hostname and key

### Support

- [**Download page**](https://github.com/AlfredoRamos/phpbb-ext-mailrelay/releases)
- [GitHub issues](https://github.com/AlfredoRamos/phpbb-ext-mailrelay/issues)
- [Crowdin translations](https://crowdin.com/project/phpbb-ext-mailrelay)

### Donate

{{<donate>}}

### Installation

- Download the [latest release](https://github.com/AlfredoRamos/phpbb-ext-mailrelay/releases)
- Decompress the `*.zip` or `*.tar.gz` file
- Copy the files and directories inside `{PHPBB_ROOT}/ext/alfredoramos/mailrelay/`
- Go to your `Administration Control Panel` > `Customize` > `Manage extensions`
- Click on `Enable` and confirm

### Mailrelay API

- Login to your Mailrelay administration panel
- Go to `Settings` > `API keys`
- Generate a new API key if you don't have one already
- Copy the API key
- Optionally generate a new group in `Subscribers` > `Groups`
- Copy the group ID

### Configuration

- Login to your phpBB `Administration Control Panel`
- Go to `Extensions` > `Mailrelay`
- Paste the API key in `API key`
- Paste the group ID in `Group ID`
- Set the maximum number of users to synchronize on each cron task execution in `Sync packet size`
- Set the time between sync event in `Sync frequency`

### Uninstallation

- Go to your `Administration Control Panel` > `Customize` > `Manage extensions`
- Click on `Disable` and confirm
- Go back to `Manage extensions` > `Mailrelay` > `Delete data` and confirm

### Upgrade

- Go to your `Administration Control Panel` > `Customize` > `Manage extensions`
- Click on `Disable` and confirm
- Delete all the files inside `{PHPBB_ROOT}/ext/alfredoramos/mailrelay/`
- Download the new version
- Upload the new files inside `{PHPBB_ROOT}/ext/alfredoramos/mailrelay/`
- Enable the extension again
