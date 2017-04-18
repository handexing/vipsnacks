function userConfig(){
	
	var self=this;
	this.listMenuUrl="menuList";
	this.saveMenuUrl="saveMenu";
	this.delMenuUrl="delMenu";
	
	this.init=function(){
		$.parser.parse();
		
		$('#userList').datagrid({
			toolbar:[
			   {text:'修改',iconCls: 'icon-edit',
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
		
		self.listUser();
		
	}
	
	this.listUser=function(){

		var userName=$('#userName').val();
		var paginationObj = $('#userList').datagrid('getPager');
		var paginationOptions = paginationObj.pagination("options");
		paginationObj.pagination({
	        onSelectPage:function(pageNumber, pageSize){
	        	$(paginationObj).pagination('refresh',{
                   pageNumber:pageNumber,
                   pageSize:pageSize
               });
	        	self.listEmployee();
	        }
		});
		var pageNum=paginationOptions.pageNumber;

		if(pageNum==0){
			pageNum=1;
		}
		var param={pageNum:pageNum,rows:paginationOptions.pageSize};

		if(userName){
			param.pageNum=1;
			param.userName=userName;
		}

		$.post(self.listEmployeeUrl,param,function(responseData){
			if(responseData.success){
				$('#userList').datagrid('loadData',responseData.data.resultList);
				$('#userList').datagrid('getPager').pagination({
					total : responseData.data.total,
					pageNumber : responseData.data.pageNum,
				});
			}
		}).fail(function(){
			$.messager.alert("提示","出错了");
		});
	}
	
	
	self.init();
}