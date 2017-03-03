<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<title>login</title>
		<link rel="stylesheet" type="text/css" href="js/themes/bootstrap/easyui.css"/>
		<link rel="stylesheet" type="text/css" href="js/themes/icon.css"/>
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
		<script type="text/javascript" src="js/locale/easyui-lang-zh_CN.js"></script>
		<script type="text/javascript" src="layer/layer.js"></script>
	</head>
	
	<body>
			<form onsubmit="login();return false;">
				<div><span style="display:inline-block;width:100px;">用户名:</span><input type="text" id="name"/></div>
				<div><span style="display:inline-block;width:100px;">密码: </span><input type="password" id="psw"/></div>
				<div>
					<a class='easyui-linkbutton editBtn' data-options="onClick:login,iconCls:'icon-ok'" style="margin-left:100px;margin-top:10px">登陆</a>
					<input type="submit" value="登陆" style="display:none;"/>
				</div>
			</form>
	</body>
	<script>
		function login(){
			var parms={"name":$("#name").val(),"psw":$("#psw").val()};
			$.post("admin/login",parms,function(data){
				if(data.success){
					window.location.href = "main.jsp";
				} else {
					layer.msg('登陆失败，请检查用户名与密码!');
				}
			}).fail(function(data){
					layer.msg('系统异常，请联系系统管理员!');
			});
		}
	</script>
</html>