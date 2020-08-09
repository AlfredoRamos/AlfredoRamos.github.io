(function() {
	'use strict';

	const config = {
		attributeName: 'dark-mode',
		iconClass: '.dark-mode-icon',
		storeKey: 'dark_mode'
	};

	document.body.addEventListener('click', function(e) {
		const icon = e.target.closest(config.iconClass);

		if (!icon) {
			return;
		}

		document.body.toggleAttribute(config.attributeName);
		const theme = document.body.hasAttribute(config.attributeName) ? 1 : 0;

		window.localStorage.setItem(config.storeKey, theme);
	});

	const currentTheme = parseInt(window.localStorage.getItem(config.storeKey), 10);

	if (isNaN(currentTheme)) {
		const prefersDarkScheme = window.matchMedia('(prefers-color-scheme: dark)');

		if (prefersDarkScheme.matches) {
			if (!document.body.hasAttribute(config.attributeName)) {
				document.body.setAttribute(config.attributeName, true);
			}
		} else {
			if (document.body.hasAttribute(config.attributeName)) {
				document.body.removeAttribute(config.attributeName);
			}
		}

	} else if (currentTheme === 1 && !document.body.hasAttribute(config.attributeName)) {
		document.body.setAttribute(config.attributeName, true);
	} else if (currentTheme !== 1 && document.body.hasAttribute(config.attributeName)) {
		document.body.removeAttribute(config.attributeName);
	}
})();
