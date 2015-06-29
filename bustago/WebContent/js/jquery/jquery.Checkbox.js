jQuery.fn.Checkbox = function (options) {
	var settings = jQuery.extend({
			wrapper: 'checkbox-wrap',
			hover: 'checkbox-hover',
			focus: 'checkbox-focus',
			checked: 'checkbox-checked',
			disabled: 'checkbox-disabled'
		}, options);

	return this.each(function () {
		var self = this,
			$checkbox = jQuery(self),
			wrapper,
			$label;

		init();

		self.check = function () {
			this.checked = true;
			wrapper.addClass(settings.checked);
		};
		self.uncheck = function () {
			this.checked = false;
			wrapper.removeClass(settings.checked);
		};
		self.disable = function () {
			this.disabled = true;
			wrapper.addClass(settings.disabled);
		};
		self.enable = function () {
			this.disabled = false;
			wrapper.removeClass(settings.disabled);
		};

		function init() {
			$checkbox.wrap('<span>');
			wrapper = jQuery(self.parentNode);
			wrapper.addClass(settings.wrapper);
			if (self.checked) {
				wrapper.addClass(settings.checked);
			}
			if (self.disabled) {
				wrapper.addClass(settings.disabled);
			}
			getLabel();
			bind();
		}

		function getLabel() {
			$label = wrapper.parent('label');
			if (!$label.length && self.id) {
				$label = jQuery('label[for=' + self.id + ']');
			}
		}

		function bind() {
			$checkbox
				.bind('mouseover', function () {
					wrapper.addClass(settings.hover);
				})
				.bind('mouseout', function () {
					wrapper.removeClass(settings.hover);
				});
			$checkbox
				.bind('focus', function () {
					wrapper.addClass(settings.focus);
				})
				.bind('blur', function () {
					wrapper.removeClass(settings.focus);
				});
			$checkbox.bind('change', function () {
				if (self.checked) {
					wrapper.addClass(settings.checked);
				} else {
					wrapper.removeClass(settings.checked);
				}
				if (self.disabled) {
					wrapper.addClass(settings.disabled);
				} else {
					wrapper.removeClass(settings.disabled);
				}
			});
			var browser = (function() {
			  var s = navigator.userAgent.toLowerCase();
			  var match = /(webkit)[ \/](\w.]+)/.exec(s) ||
			              /(opera)(?:.*version)?[ \/](\w.]+)/.exec(s) ||
			              /(msie) ([\w.]+)/.exec(s) ||               
			              /(mozilla)(?:.*? rv:([\w.]+))?/.exec(s) ||
			             [];
			  return { name: match[1] || "", version: match[2] || "0" };
			});
			
			if (browser.name = 'msie') {
				wrapper.bind('click', function (e) {
					e.stopPropagation();
					if (!self.disabled) {
						if (self.checked) {
							wrapper.addClass(settings.checked);
						} else {
							wrapper.removeClass(settings.checked);
						}
					}
				});
				$label.bind('click', function (e) {
					e.preventDefault();
					$checkbox.focus();
					if (!self.disabled) {
						if (self.checked) {
							self.uncheck();
						} else {
							self.check();
						}
					}
				});
			}
		}
	});
};