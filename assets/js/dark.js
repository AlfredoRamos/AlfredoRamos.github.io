(function() {
	'use strict';

	const config = {
		attributeName: 'dark-mode',
		triggerClass: '.dark-mode-switch',
		storeKey: 'dark_mode'
	};

	document.body.addEventListener('click', function(e) {
		const trigger = e.target.closest(config.triggerClass);

		if (!trigger) {
			return;
		}

		document.body.toggleAttribute(config.attributeName);
		const theme = document.body.hasAttribute(config.attributeName) ? 1 : 0;
		window.localStorage.setItem(config.storeKey, theme);
	});

	const triggerSwitch = document.body.querySelector(config.triggerClass + ' > .form-check-input');
	const currentTheme = parseInt(window.localStorage.getItem(config.storeKey), 10);

	if (isNaN(currentTheme)) {
		const prefersDarkScheme = window.matchMedia('(prefers-color-scheme: dark)');

		if (prefersDarkScheme.matches) {
			if (!document.body.hasAttribute(config.attributeName)) {
				document.body.setAttribute(config.attributeName, true);
			}

			if (triggerSwitch) {
				triggerSwitch.checked = true;
			}
		} else {
			if (document.body.hasAttribute(config.attributeName)) {
				document.body.removeAttribute(config.attributeName);
			}

			if (triggerSwitch) {
				triggerSwitch.checked = false;
			}
		}

	} else if (currentTheme === 1 && !document.body.hasAttribute(config.attributeName)) {
		document.body.setAttribute(config.attributeName, true);

		if (triggerSwitch) {
			triggerSwitch.checked = true;
		}
	} else if (currentTheme !== 1 && document.body.hasAttribute(config.attributeName)) {
		document.body.removeAttribute(config.attributeName);

		if (triggerSwitch) {
			triggerSwitch.checked = false;
		}
	}
})();
