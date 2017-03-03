<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台用户管理</title>

<link rel="stylesheet" type="text/css" href="../js/themes/bootstrap/easyui.css"/>
<link rel="stylesheet" type="text/css" href="../js/themes/icon.css"/>
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../js/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="../js/snacks/adminConfig.js"></script>
<script type="text/javascript" src="../layer/layer.js"></script>

</head>
<body  style="width:100%;height:100%;padding:0px;margin: 0px;">
	<div style="padding: 10px;">
		<div style="width: 600px;float: left;">
			昵称：<input type="text" id="nick"/>
			<a id="searchAdmin" class='easyui-linkbutton' data-options="iconCls:'icon-search'" style="width:90px;">查询</a>
			<table id="adminList" style="width:100%;height:500px">
			</table>
		</div>
		<div style="width: 300px;height:500px;float: left;border: 1px dashed gray;margin-top:20px;margin-left:20px;">
			<ul id="allMenu" class="easyui-tree"></ul>
		</div>
	</div>
</body>

<script type="text/javascript">
	$(function(){
		new adminConfig();
	})
</script>

</html>