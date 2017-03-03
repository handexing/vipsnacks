$(
	function(){
		$.showtip=function (event,tip){
			event=event||$.showEvent;
			if($('#tip_00').length<=0){
				$('<div id="tip_00" style="position:absolute;background-color: #D1D1D1;z-index:1000000"></div>').appendTo($(document.body));
			}
			$('#tip_00').stop(true).html(tip)
			.css('top',event.pageY+10).css('left',event.pageX)
			.css('font-size','large').css('color','red')
			.fadeIn(500).delay(2000).fadeOut(500);
		}
		$.showEvent=null;
		$(document).mousemove(function(e) {
			$.showEvent=e;
	    });

		
		 
	}
	
	 
)
