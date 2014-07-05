(function (ui) {
	var closePopup = ui.closePopup.bind(ui);
	document.getElementById('addElementPopup-cancel').addEventListener('click', closePopup, false);
	document.getElementById('timePickerPopup-cancel').addEventListener('click', closePopup, false);
})(window.tau);
