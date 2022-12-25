/* global QUnit */
QUnit.config.autostart = false;

sap.ui.getCore().attachInit(function () {
	"use strict";

	sap.ui.require([
		"comzgaurfiori/mainui/test/unit/AllTests"
	], function () {
		QUnit.start();
	});
});
