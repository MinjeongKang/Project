(function(){
	var window = this,
		document = window.document,
		documentElement = document.documentElement,
		$ = window.jQuery,
		$document = $(document);//,
		//msie = $.browser.msie && parseFloat($.browser.version);

	$.fn.nav = function (options) {
		var config = $.extend({
				items: '> li',
				sub: '> ul',
				subItems: '> li',
				selectedClass: 'selected',
				hasSubSelectedClass: 'selected',
				eventType: 'click.nav',
				mainIndex: -1,
				subIndex: -1
			}, options);

		return this.each(function () {
			
			var self = this,
				$self = $(self),
				$items = $self.find(config.items),
				$selected = (config.mainIndex > -1) && $items.eq(config.mainIndex);
			
			$items
				.each(function (i) {
					var $this = $(this),
						$sub = $this.find(config.sub),
						$subItems = $sub.length && $sub.find(config.subItems);

					$sub.addClass('sub');
					if ($sub.length) {

						$.data(this, 'index.nav', i);
						$.data(this, 'sub.nav', $sub);
						$.data(this, 'subItems.nav', $subItems);
					}
				})
				.bind('open.nav', function () {
					var $item = $(this),
						$sub = $.data(this, 'sub.nav');
						selectedClass = ($sub && $sub.length) ? config.hasSubSelectedClass : config.selectedClass;

					if ($selected && $selected.trigger) {
						$selected.trigger('close.nav');
					}

					if ($sub && $sub.length) {
						$sub.slideDown(0, function () {
							$item
								.addClass(selectedClass)
								.data('isOpened.nav', true);
							$selected = $item;
						});
					} else {
						$item
							.addClass(selectedClass)
							.data('isOpened.nav', true);
						$selected = $item;
					}
				})
				.bind('close.nav', function () {
					var $item = $(this),
						$sub = $.data(this, 'sub.nav');
						selectedClass = ($sub && $sub.length) ? config.hasSubSelectedClass : config.selectedClass;

					if ($sub && $sub.length) {
						
						$sub.slideUp(0, function () {
							$item
								.removeClass(selectedClass)
								.data('isOpened.nav', false);
						});
						
					} else {
						$item
							.removeClass(selectedClass)
							.data('isOpened.nav', false);
					}
				})
				.bind(config.eventType, function (e) {
					if (!$.data(this, 'isOpened.nav')) {
						if (e.type === 'click') {
							e.preventDefault();
						}

						$(this).trigger('open.nav');
					}
				});

			if ($selected && $selected.length) {
				$selected.trigger('open.nav');
				if ($selected.data('subItems.nav') && config.subIndex > -1) {
					$selected.data('subItems.nav').eq(config.subIndex).addClass(config.selectedClass);
				}
			}
		});
	};

	$.fn.GNB = function(options) {
		var config = $.extend({
			menu : '.gnb',
			item : '> li',
			picturebox : '> div',
			sub : '> ul',
			subItem : '> li',
			selected : 'selected',
			selectedIndex : 0,
			subselectedIndex : 0,
			type : 'mouseenter',
			leave : 'mouseleave'
		}, options);

		return this.each(function(){
			var self = this,
				$self = $(this),
				$item = $self.find(config.item),
				$picturebox = $item.find(config.picturebox),
				$sub = $picturebox.find(config.sub),
				$subItem = $sub.find(config.subItem);

			$item.each(function(i){
				if($picturebox.length){
					$picturebox.addClass('sub');
				}
				if(config.selectedIndex > -1) {
					$item.eq(config.selectedIndex).addClass(config.selected);
					$(config.menu + '> li:eq('+ config.selectedIndex + ') > div > ul > li:eq('+ config.subselectedIndex  +')').addClass(config.selected);
				}

				$item.eq(i).bind(config.type, function(){
					$item.removeClass(config.selected)
					$item.eq(i).addClass(config.selected)
				})

				$self.bind(config.leave, function(){
					$item.removeClass(config.selected);
					if(config.selectedIndex > -1) {
						$item.eq(config.selectedIndex).addClass(config.selected);
					}
					
				});
			})
		});
	}

	$.fn.FrontGnb = function(opts) {
		var config = $.extend({
			menu : '.menus',
			item : '> li',
			sub : '> ul',
			hasSub : 'sub',
			selected : 'selected',
			selectedIndex : 1,
			subSelectedIndex : 0,
			type : 'mouseenter'
		}, opts);

		return this.each(function(){
			var self = this,
				$self = $(this),
				$item = $self.find(config.item),
				$sub = $item.find(config.sub);

			$item.each(function(idx){
				$sub.addClass(config.hasSub);
				
				if (config.selectedIndex > -1) {
					$item.eq(config.selectedIndex).addClass(config.selected);
					$( config.menu + '> li:eq('+ config.selectedIndex + ') > ul > li:eq('+ config.subSelectedIndex  +')').addClass(config.selected);
				}

				$item.eq(idx).bind(config.type, function(){
					$item.removeClass(config.selected);
					$item.eq(idx).addClass(config.selected);
				});

				$self.bind('mouseleave', function(){
					$item.removeClass(config.selected);
					if (config.selectedIndex > -1){
						$item.eq(config.selectedIndex).addClass(config.selected)
					}
				});
			})
		});
	}





	/* On Dom Ready */
	$(document).ready(function(){

			$("span.pic").hide();
			$(".menus, .gnbbox").hover(
				function() {
					$(".gnbbox,.gnb01,.gnb02,.gnb03,.gnb04, .gnb05, .gnb06").show();
				}, 
				function(){
					$(".gnbbox,.gnb01,.gnb02,.gnb03,.gnb04, .gnb05, .gnb06").hide();
				}
			);

			$("#menu01").hover(
				function() {
					$(".mg01").show();
				}, 
				function(){
					$(".mg01").hide();				
				}
			);
			$("#menu02").hover(
				function() {
					$(".mg02").show();
				}, 
				function(){
					$(".mg02").hide();				
				}
			);
			$("#menu03").hover(
				function() {
					$(".mg03").show();
				}, 
				function(){
					$(".mg03").hide();				
				}
			);
			$("#menu04").hover(
				function() {
					$(".mg04").show();
				}, 
				function(){
					$(".mg04").hide();				
				}
			);
			$("#menu05").hover(
				function() {
					$(".mg05").show();
				}, 
				function(){
					$(".mg05").hide();				
				}
			);
			$("#menu06").hover(
				function() {
					$(".mg06").show();
				}, 
				function(){
					$(".mg06").hide();				
				}
			);
			
			$('.qshow').click(function() {
				$('.quick2').show();
				$('.quick1').hide();
				
			});
			$('.qhide').click(function() {
				$('.quick1').show();
				$('.quick2').hide();
			});

		
		$(".flink").hover(
			function() {
				$(".flist").show();
				$(".flist").hover(
					function() {
						$(".flist").show();
					}
					,function(){
						$(".flist").hide();
					}
				);
			}
			,function(){
			$(".flist").hide();
			}
		);
		$(".language").hover(
			function() {
				$(".languages").show();
				$(".languages").hover(
					function() {
						$(".languages").show();
					}
					,function(){
						$(".languages").hide();
					}
				);
			}
			,function(){
			$(".languages").hide();
			}
		);


	}); 
}(jQuery));