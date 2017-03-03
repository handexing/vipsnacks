function menuConfig(){
	
	var self=this;
	this.listMenuUrl="menuList";
	this.saveMenuUrl="saveMenu";
	this.delMenuUrl="delMenu";
	
	this.init=function(){
		$.parser.parse();
		
		$('#menuList').treegrid({
			toolbar:[
			   {text:'新增',iconCls: 'icon-add',
				   handler: function(){
					   var row = $('#menuList').datagrid('getSelected');
					   console.log(row);
					   if(row){
						   console.log("增加子菜单");
						   $("#requestUrl").show();
						   $('#menuForm').form('clear');
						   $("#addMenuDlg").dialog("open");
						   var pid = row.pid;
						   if(pid == 0){
							   $("#pid").val(row.id);
						   }else{
							   $("#pid").val(pid);
						   }
					   }else{
						   $('#menuForm').form('clear');
						   $("#addMenuDlg").dialog("open");
						   $("#requestUrl").hide();
					   }
				   }
			    },{text:'修改',iconCls: 'icon-edit',
				     handler: function(){
				     			
				     }
				},{text:'删除',iconCls: 'icon-cancel',
				     handler: function(){
				    	 var row = $('#menuList').datagrid('getSelected');
				    	 if(row){
				    		 $.messager.confirm('删除菜单', '确认删除此菜单?', function(r){
	   							if (r){
	   	   							$.post(self.delMenuUrl,{"id":row.id},function(responseData){
	   	   									self.listMenu();
	   	   									layer.msg('删除完成!');
		   	   		                });
	   							}
	   						});
				    	 }else{
				    		 layer.msg('请选择要删除的数据!');
				    	 }
				     }
				}
	        ],
			rownumbers:true,
			singleSelect:true,
		    idField:'id',
		    treeField:'name',
		    columns:[[
		        {title:'菜单名称',field:'name',width:200},
		        {title:'请求路径',field:'url',width:200},
		        {title:'创建时间',field:'createTime',width:140},
		        {title:'状态',field:'status',width:50,formatter: function (value, row, index) {
					if (row.status==1) {
						return "<span style='color:red'>冻结</span>";
					} else {
						return "<span>正常</span>";
					}
				}}
		    ]]
		});
		
		self.listMenu();
		
		$('#saveMenuBtn').bind('click',function(){
			self.saveMenu();
		});
		
	}
	
	this.listMenu=function(){
		$.post(self.listMenuUrl,{},function(responseData){
			if(responseData.success){
				$('#menuList').treegrid('loadData',responseData.data);
			}
		}).fail(function(){
			layer.msg('获取数据失败!');
		});
	}
	
	this.saveMenu=function(){

		var parm = {};
		var pid = $('#pid').val();
		var name = $.trim($('#name').textbox('getValue'));
		var url = $.trim($('#url').textbox('getValue'));

		if(name==null || name==" "){
			layer.msg('请填写菜单名称！');
			return;
		}
		
		if(!pid){pid=0;}

		parm.name = name;
		parm.url = url;
		parm.pid = pid;
		
		$.ajax({
			url:self.saveMenuUrl,
            type: "POST",
            dataType: "json",//跨域ajax请求,返回数据格式为json
            cache: false,
            timeout: 10000,//请求超时时间,单位为毫秒
            async: true,
            global: false,//禁用Jquery全局事件
            scriptCharset: 'UTF-8',
            contentType: 'application/json;charset=UTF-8',//请求内容的MIMEType
			data:JSON.stringify(parm),
			success:function(responseData, status){
				if(responseData.success){
					$("#addMenuDlg").dialog("close");
					self.listMenu();
				}else{
					layer.msg('操作失败！');
				}
			}
		});
	}
	
	self.init();
}