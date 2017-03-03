/**
 *  author: leunpha
 *  date: 2014-5-1
 *  version 2.0
 *  dependency: jquery.js
 * 要求父元素 position: relative;
 */
$.fn.upload = function (options) {
	if(typeof options=="string"){
		if(options=='destroy'){
			$.fn.upload.methods.destroy(this);
			return;
		}
	}
    options = options || {};
    options.dom = this;
    $.upload(options);
}
$.fn.upload.methods={destroy:function(jq){
	var id = $(jq).attr('id');
	$('[ele-id='+id+']').remove();
}}
$.upload = function (options) {
    var settings = {
        dom: "",
        action: "",
        fileName: "file",
        params: {},
        accept: ".jpg,.png",
        ieSubmitBtnText: "上传",
		dataType:"JSON",
        complete: function (result) {
			alert(result);
        },
        beforeSubmit:function(){
        	return true;
        },
        submit: function () {

        },
        moveenter:function(){
        	
        }
    }
    settings = $.extend(settings, options);
    var ele = settings.dom;
    var eleId=$(ele).attr('id');
    var iframeName = "leunpha_iframe_v" + eleId;
    var width = ele.outerWidth();
    var height = ele.outerHeight();
    var iframe = $("<iframe name='"+iframeName+"' ele-id='"+eleId+"' style='display:none;' id='"+iframeName+"'></iframe>");
    var form = $("<form></form>");
    form.attr({
        target: iframeName,
        action: settings.action,
        'ele-id':eleId,
        method: "post",
        "class": "ajax_form",
        enctype: "multipart/form-data"
    }).css({
            width: width,
            height: height,
            position: "absolute",
            'z-index':100,
            top: ($(ele).css('top')=='auto'?0:$(ele).css('top')),
            left: ($(ele).css('left')=='auto'?0:$(ele).css('top'))
        }).bind('mouseenter',settings.moveenter);
    var input = $("<input type='file'/>");
    input.attr({
        accept: settings.accept,
        name: settings.fileName,
        'ele-id':eleId
    })
        .css({
            opacity: 0,
            position: "absolute",
            left:0,
            top:0,
            width: width+ "px",
           // 'z-index':100,
            //filter:alpha(Opacity=0),
            //-moz-opacity:0,
            height: height + "px",
            display:'none',
            cursor: "pointer"
        });
    input.change(function () {
        settings.submit.call(form);
        $(this).parent("form").submit();
        input.val(''); 
    });
    
    var button = $("<input type='button'/>");
    button.attr({
        'ele-id':eleId
    })
        .css({
            opacity: 0,
            position: "absolute",
            left:0,
            top:0,
            width: width+ "px",
            'z-index':100,
            //filter:alpha(Opacity=0),
            //-moz-opacity:0,
            height: height + "px",
            cursor: "pointer"
        });
    
    form.append(input);
    form.append(button);
    $(button).bind('click',function(e){
    	if(settings.beforeSubmit.call(this,e)){
    		return $(input).click();
    	}
    })
    
    $(ele).parent().append(iframe); 
    iframe.after(form);
    for (var param in settings.params) {
        var div = $('<input  type="hidden"/>').attr({name: param, value: settings.params[param]});
        input.after(div)
        div = null;
        delete div;
    }
    iframe.load(function () {
        var im = document.getElementById(iframeName);
        var text = $(im.contentWindow.document.body).text();
		if(text){
			var dataType = settings.dataType.toLocaleUpperCase();
			if( dataType == "JSON"){
				try{
					if(typeof text=="string")
						text = $.parseJSON(text);
				}catch(e){
					text = "error";
				}
			}else if(dataType == "xml"){
				//字符串转xml 需开发者个人手动转换
				//参考 http://www.baidu.com/#wd=js%E5%AD%97%E7%AC%A6%E4%B8%B2%E8%BD%ACxm
			}else{
				//默认就是text
			}
		}
		settings.complete.call(this, text);
		
    });
}