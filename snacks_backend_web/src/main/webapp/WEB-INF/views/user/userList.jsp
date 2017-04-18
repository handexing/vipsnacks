<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户管理</title>

<link rel="stylesheet" type="text/css" href="../js/themes/bootstrap/easyui.css"/>
<link rel="stylesheet" type="text/css" href="../js/themes/icon.css"/>
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../js/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="../js/snacks/userConfig.js"></script>
<script type="text/javascript" src="../layer/layer.js"></script>

</head>
<body  style="width:100%;height:100%;padding:0px;margin: 0px;">

	<div style="padding: 10px;">
		<table id="userList" style="width:100%;height:500px">
		</table>
	</div>
	
</body>

<script type="text/javascript">
	$(function(){
		new userConfig();
	})
</script>

</html>