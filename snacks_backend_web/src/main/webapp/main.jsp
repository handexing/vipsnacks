<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主页</title>
	<link rel="stylesheet" type="text/css" href="js/themes/bootstrap/easyui.css"/>
	<link rel="stylesheet" type="text/css" href="js/themes/icon.css"/>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="js/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="js/datagrid-dnd.js"></script>
	<script type="text/javascript" src="js/datagrid-cellEdit.js"></script>
	<script type="text/javascript" src="js/qrcode.min.js"></script>
	<script type="text/javascript" src="layer/layer.js"></script>
</head>

<body class="easyui-layout" style="overflow-y: hidden"  scroll="no">
    <div region="north" split="true" border="false" style="overflow: hidden; height: 30px;
        background: url(images/layout-browser-hd-bg.gif) #7f99be repeat-x center 50%;
        line-height: 20px;color: #fff; font-family: Verdana, 微软雅黑,黑体">
        <span style="float:right; padding-right:20px;" class="head">
        	欢迎 ${admin.nick} 
        	<a href="#" id="editpass" style="color: yellow;">修改密码</a> 
        	<a href="#" id="loginOut" onclick="logout()" style="color: yellow;">安全退出</a>
        </span>
        <span style="padding-left:10px; font-size: 18px; ">专享零食</span>
    </div>
    
    <div region="south" split="true" style="height: 30px; background: #D2E0F2; ">
	    <center>
        	<div class="footer">By handx Email:90871685@qq.com</div>
	    </center>
    </div>
    
    <div region="west" split="true" title="导航菜单" style="width:180px;" id="west">
		<div class="easyui-accordion" fit="true" border="false">
			<ul id="menu"></ul>
		</div>
    </div>
    
    <div id="mainPanle" region="center" style="background: #eee; overflow-y:hidden">
        <div id="tabs" class="easyui-tabs"  fit="true" border="false" >
			<div title="欢迎使用" style="padding:20px;overflow:hidden;" id="home">
			<h1>Welcome to jQuery UI!</h1>
			</div>
		</div>
    </div>

	<script type="text/javascript">
		function logout(){
			window.location.href='admin/logout';
		}
		
		function addSubPage(title,url){    
            var jq = top.jQuery;    
            if (jq("#tabs").tabs('exists', title)){    
                jq("#tabs").tabs('select', title);    
            } else {  
                  var content = '<iframe scrolling="auto" frameborder="0"  src="'+url+'" style="width:100%;height:100%;"></iframe>';     
                   jq("#tabs").tabs('add',{    
                                      title:title,    
                                      content:content,    
                                      closable:true    
                                    });    
             }    
        } 
		
		$(function() {
			
			$.post('menu/menuList',{},function(responseData){
				if(responseData.success){
					$('#menu').tree('loadData',responseData.data);
				}
			}).fail(function(){
				layer.msg('获取数据失败!');
			});
			
			$('#menu').tree({
				onClick: function(node){
					addSubPage(node.text,node.url);
				}
			});
			
		});
	</script>
</body>
</html>