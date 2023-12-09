(function () {
	'use strict';

	if(!0!==window.hasWebauthnInjectionHelperRun){window.hasWebauthnInjectionHelperRun=!0;const e=document.createElement("script");e.src=chrome.runtime.getURL("/inline/injected/webauthn-listeners.js"),document.documentElement.prepend(e),e.remove();}

})();
