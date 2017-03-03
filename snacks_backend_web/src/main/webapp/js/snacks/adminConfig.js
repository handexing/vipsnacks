function adminConfig(){
	
	var self=this;
	this.listAdminUrl="adminList";
	this.listAuthorizationUrl="menuAllList";
	
	this.init=function(){
		$.parser.parse();
		
		$('#adminList').datagrid({
			toolbar:[
			   {text:'新增',iconCls: 'icon-add',
				   handler: function(){
					   var row = $('#menuList').datagrid('getSelected');
					   
				   }
			    },{text:'修改',iconCls: 'icon-edit',
				     handler: function(){
				     			
				     }
				},{text:'删除',iconCls: 'icon-cancel',
				     handler: function(){
				     			
				     }
				}
	        ],
		    rownumbers:true,
			pagination:true,
            pageSize:20,
            pageList:[20,40,60,80,100],
            singleSelect:true,
		    columns:[[
		        {field:'name',title:'姓名',width:100},
		        {field:'nick',title:'昵称',width:100},
		        {field:'role',title:'权限',width:100,formatter: function (value, row, index) {
					return row.role.name;
				}},
				{field:'view',title:'操作',width:100,formatter: function (value, row, index) {
					return "<a href='#' authorization id="+row.id+">授权菜单</a>";
			    }}
		    ]],onLoadSuccess:function(){
		    	$('[authorization][id]').each(function(){
   					$(this).linkbutton({
   					    iconCls: 'icon-edit',
   					    onClick:function(){
   					    	var id=$(this).attr('id');
   					    	$.post(self.listAuthorizationUrl,{},function(responseData){
   								if(responseData.success){
   									var arrs = responseData.data;
   									console.log(arrs);
   									$('#allMenu').tree('loadData',arrs);
   								}
   							}).fail(function(){
   								layer.msg('获取数据失败!');
   							});
   					    }
   					});
   				})
		    }
		});
		
		self.listAdmin();
		
		$('#searchAdmin').bind('click',function(){
			self.listAdmin();
		});
	}
	
	this.listAdmin=function(){

		var nick = $.trim($("#nick").val());
		
		var paginationObj = $('#adminList').datagrid('getPager');
		var paginationOptions = paginationObj.pagination("options");
		paginationObj.pagination({
	        onSelectPage:function(pageNumber, pageSize){
	        	$(paginationObj).pagination('refresh',{
                   pageNumber:pageNumber,
                   pageSize:pageSize
               });
	        	self.listAdmin();
	        }
		});
		var pageNum=paginationOptions.pageNumber;

		if(pageNum==0){
			pageNum=1;
		}
		
		if(nick){
			param.pageNum=1;
			param.nick=nick;
		}
		var param={pageNum:pageNum,rows:paginationOptions.pageSize};

		$.post(self.listAdminUrl,param,function(responseData){
			if(responseData.success){
				$('#adminList').datagrid('loadData',responseData.data.resultList);
				$('#adminList').datagrid('getPager').pagination({
					total : responseData.data.total,
					pageNumber : responseData.data.pageNum,
				});
			}
		}).fail(function(){
			layer.msg('获取数据失败!');
		});
	}
	
	self.init();
}