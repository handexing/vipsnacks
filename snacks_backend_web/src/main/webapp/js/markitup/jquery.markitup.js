// ----------------------------------------------------------------------------
// markItUp! Universal MarkUp Engine, JQuery plugin
// v 1.1.x
// Dual licensed under the MIT and GPL licenses.
// ----------------------------------------------------------------------------
// Copyright (C) 2007-2012 Jay Salvat
// http://markitup.jaysalvat.com/
// ----------------------------------------------------------------------------
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
// ----------------------------------------------------------------------------
(function($) {
	$.fn.markItUp = function(settings, extraSettings) {
		var method, params, options; 

		if (typeof settings == 'string') {
			method = settings;
			params = extraSettings;
		} 

		options = {	id:						'',
					roles:[]
				};
		$.extend(options, settings, extraSettings);

		// compute markItUp! path
		


		return this.each(function() {
			var $$, editableDiv;
			$$ = $(this);
			editableDiv = this;
			levels = [];
			abort = false;

			//options.previewParserPath = localize(options.previewParserPath);
			//options.previewTemplatePath = localize(options.previewTemplatePath);

			if (method) {
				switch(method) {
					case 'getContent':
						return getContent();
					break;
					default: 
						$.error('Method ' +  method + ' does not exist on jQuery.markItUp');
				}
				return;
			}

			function getContent(){
				return $$.html();
			}

			// init and build editor
			function init() {
				id = ''; nameSpace = '';
				if (options.id) {
					id = 'id="'+options.id+'"';
				} else if ($$.attr("id")) {
					id = 'id="markItUp'+($$.attr("id").substr(0, 1).toUpperCase())+($$.attr("id").substr(1))+'"';

				}
				if (options.nameSpace) {
					nameSpace = 'class="'+options.nameSpace+'"';
				}
				$$.wrap('<div '+nameSpace+'></div>');
				$$.wrap('<div '+id+' class="markItUp"></div>');
				$$.wrap('<div class="markItUpContainer"></div>');
				$$.addClass("markItUpEditor");

				// add the header before the textarea
				header = $('<div class="markItUpHeader"></div>').insertBefore($$);
				var ul = $('<ul></ul>')
				for(var i=0;i<options.roles.length;i++){
					$('<li class="markItUpButton '+options.roles[i].className+'"><a href="#" data-role="'+options.roles[i].role+'" title="'+options.roles[i].name+'">'+(options.roles[i].name||'')+'</a></li>')
					.appendTo(ul);
				}
				ul.appendTo(header);
				// add the footer after the textarea
				footer = $('<div class="markItUpFooter"></div>').insertAfter($$);
				  $('[data-role]').click(function(e) {
					  console.log($(this).data('role'));
	                    switch($(this).data('role')) {
	                        case 'h1':
	                        case 'h2':
	                        case 'p':
	                            document.execCommand('formatBlock', false, '<' + $(this).data('role') + '>');
	                            break;
	                        default:
	                            document.execCommand($(this).data('role'), false, null);
	                            break;
	                    }
	                     
	                })
			}
			init();
		});
	};
})(jQuery);
