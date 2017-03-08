function mainConfig(){
	
	var self=this;
	
	this.init=function(){
		
		
		//打开登录对话框
		$('#loginBtn').bind('click',function(){
			$('#loginModal').modal('show')
		})
		
		//微博登录
		$("#weiboLogin").bind('click',function(){
			console.log('微博登录。。。');
		});
		
		//微信登录
		$('#weixinLogin').bind('click',function(){
			console.log('微信登录。。。');
		});
		
		//qq登录
		$('#qqLogin').bind('click',function(){
			console.log('qq登录。。。');
		});
	}
	
	this.login=function(){
		alert("login");
	}

	self.init();
	
}