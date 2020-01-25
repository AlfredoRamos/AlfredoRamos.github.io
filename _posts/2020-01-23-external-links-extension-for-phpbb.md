---
title: External Links extension for phpBB
date: 2020-01-23 21:22:11 -0600
category: phpbb
tags: [phpbb-extension, external-links, rel-link, new-tab, nofollow, noreferrer, noopener, ugc]
stylesheets: [lightcase]
scripts: [lightcase]
thumbnail: https://i.imgur.com/nEsb1Idm.png
image: https://i.imgur.com/nEsb1Id.png
image_type: png
image_width: 602
image_height: 233
---
External Links extension for phpBB.

[![Build Status](https://img.shields.io/travis/com/AlfredoRamos/phpbb-ext-external-links.svg?style=flat-square)](https://travis-ci.com/AlfredoRamos/phpbb-ext-external-links)
[![Latest Stable Version](https://img.shields.io/github/tag/AlfredoRamos/phpbb-ext-external-links.svg?label=stable&style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-external-links/releases)
[![Code Quality](https://img.shields.io/codacy/grade/03ef9db9fa1d4f87a7d369f926e3b094.svg?style=flat-square)](https://app.codacy.com/app/AlfredoRamos/phpbb-ext-external-links)
[![License](https://img.shields.io/github/license/AlfredoRamos/phpbb-ext-external-links.svg?style=flat-square)](https://raw.githubusercontent.com/AlfredoRamos/phpbb-ext-external-links/master/license.txt)

It adds cosmetic, functionality and security configuration options for external links.

It also helps identify external links for both users and search engines by adding relationship identifiers to all external links.

<!-- more -->
### Features

- Open external links in a new tab
- Add visual indicator to external links
- Add link relationships
	- `rel=external`: To indicate the linked page does not belong to the current website [^1]
	- `rel=nofollow`: To indicate that search engines must not crawl the linked page [^2][^3]
	- `rel=noreferrer`: To prevent information leakage when following the link [^4]
	- `rel=noopener`: To prevent an attack surface when opening links in a new tab [^5][^6]
	- `rel=ugc`: To indicate user-generated content links [^3]

### Preview

[![Topic](https://i.imgur.com/R008Ifeb.png)](https://i.imgur.com/R008Ife.png){:data-rel="lightcase:preview"}
[![Topic source](https://i.imgur.com/nEsb1Idb.png)](https://i.imgur.com/nEsb1Id.png){:data-rel="lightcase:preview"}

*(Click to view in full size)*

### Requirements

- PHP 7.1.3 or greater
- phpBB 3.3 or greater

### Support

- [**Download page**](https://www.phpbb.com/community/viewtopic.php?t=2538091)
- [GitHub issues](https://github.com/AlfredoRamos/phpbb-ext-external-links/issues)

### Donate

If you like or found this extensions useful and want to show some appreciation, you can consider donating.

[![PayPal Donate](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)]({{ '/donate/' | relative_url }})

### Installation

- Download the [latest release](https://github.com/AlfredoRamos/phpbb-ext-external-links/releases)
- Decompress the `*.zip` or `*.tar.gz` file
- Copy the files and directories inside `{PHPBB_ROOT}/ext/alfredoramos/externallinks/`
- Go to your `Administration Control Panel` > `Customize` > `Manage extensions`
- Click on `Enable` and confirm

### Configuration

- Go to your `Administration Control Panel` > `Extensions` > `External Links`
- Enable or disable options as needed
- Click on `Submit`

To customize the look and feel:

- Move into `{PHPBB_ROOT}/ext/alfredoramos/externallinks/`
- Copy the `styles/prosilver/` directory to `styles/{STYLE}/`
- Edit the file `styles/{STYLE}/theme/css/external_links.css` as needed

**Note:** If your style doesn't inherit from `prosilver`, you should follow the steps above even if you don't want to change any file.

### Uninstallation

- Go to your `Administration Control Panel` > `Customize` > `Manage extensions`
- Click on `Disable` and confirm
- Go back to `Manage extensions` > `External Links` > `Delete data` and confirm

### Upgrade

- Uninstall the extension
- Delete all the files inside `{PHPBB_ROOT}/ext/alfredoramos/externallinks/`
- Download the new version
- Install the extension

___
[^1]: [Link type "external"](https://html.spec.whatwg.org/multipage/links.html#link-type-external)
[^2]: [Link type "nofollow"](https://html.spec.whatwg.org/multipage/links.html#link-type-nofollow)
[^3]: [Qualify your outbound links to Google](https://support.google.com/webmasters/answer/96569)
[^4]: [Link type "noreferrer"](https://html.spec.whatwg.org/multipage/links.html#link-type-noreferrer)
[^5]: [About rel=noopener](https://mathiasbynens.github.io/rel-noopener/)
[^6]: [Links to cross-origin destinations are unsafe](https://developers.google.com/web/tools/lighthouse/audits/noopener)
