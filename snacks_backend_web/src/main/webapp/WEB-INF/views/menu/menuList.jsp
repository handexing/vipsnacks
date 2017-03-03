<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>菜单管理</title>

<link rel="stylesheet" type="text/css" href="../js/themes/bootstrap/easyui.css"/>
<link rel="stylesheet" type="text/css" href="../js/themes/icon.css"/>
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../js/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="../js/snacks/menuConfig.js"></script>
<script type="text/javascript" src="../layer/layer.js"></script>

</head>
<body  style="width:100%;height:100%;padding:0px;margin: 0px;">
	<div style="padding: 10px;">
		<table id="menuList" style="width:100%;height:500px">
		</table>
	</div>
	
	<div id="addMenuDlg" class="easyui-dialog" title="新增菜单信息"  style="width:300px;height:200px"
		        data-options="modal:true,closed:true,maximizable:false,minimizable:false">
		<form id="menuForm" style="margin-left: 10px;margin-top:20px;">
			<div style="margin-bottom:10px" class="fitem">
			    <font class="title">菜单名称：</font>	
			    <input type="hidden" id="pid">
			    <input class="easyui-textbox" id="name" name="name"  style="width:250px" data-options="label:'菜单名称:'">
		    </div>
			<div style="margin-bottom:10px" class="fitem" id="requestUrl">
			    <div style="display:inline-block;width:60px;">url地址：</div>
			    <input class="easyui-textbox" id="url" name="url"  style="width:250px" data-options="label:'url地址:'">
			</div>
			<center>
				<a id="saveMenuBtn" href="javascript:void(0)" class="easyui-linkbutton"  style="width:80px">保存</a>
		    </center>
		</form>
	</div>
</body>

<script type="text/javascript">
	$(function(){
		new menuConfig();
	})
</script>

</html>