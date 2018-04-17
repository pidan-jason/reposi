<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新闻列表</title>
<link rel="stylesheet" href="${ctx }/static/css/pagination.css">
<style type="text/css">
  body{font-size:84%; color:#333333; line-height:1.4;}
        a{color:#34538b;}
        /*#Searchresult{width:300px; height:300px; padding:20px; background:#f0f3f9;}*/
        th{
            width: 120px;
            text-align: left;
        }
        
        
/* 各行变色效果实现方案 */
table tr:nth-child(odd){background:#F4F4F4;}
table tr:nth-child(even){color:#C00;}


/* 边框效果实现 */
.table_border {
	border: solid 1px #B4B4B4;
	border-collapse: collapse;
}

.table_border tr th {
	padding-left: 4px;
	height: 27px;
	border: solid 1px #B4B4B4;
}

.table_border tr td {
	height: 25px;
	padding: 4px;
	border: solid 1px #B4B4B4;
}
</style>
</head>
<body>

<div id="formDiv">

      部门:<select name="dept"  >
			<option value="" selected="selected">请选择</option>
			<option value="1" >教学部</option>
			<option value="2">市场部</option>
		</select>
		岗位:<select name="position">
			<option value="">请选择</option>
			<option value="1">教员</option>
			<option value="2">班主任</option>
			
		</select>
		姓名:<input name="name"  >
		员工状态:<select name="leave">
				<option value="在职">在职</option>
				<option value="离职">离职</option>
			</select>
<!-- 		<input -->
<!-- 			type="submit" id="selectBtn" value="提交查询"> -->
		<button id="selectBtn" >提交查询</button>
</div>
	<div id="Searchresult">
    <%-- 初始化内容在这里展现.--%>
	</div>
	<div id="Pagination"></div>
	<!-- 分页元素将会在这里展示 -->
	<div id="hiddenresult" style="display:none;"> </div>
	<!-- 	引入jQuery -->
	<script type="text/javascript" src="${ctx }/static/js/jquery.js">
	
	</script>
	<!-- 引入jQuery的分页插件 -->
	<script type="text/javascript" src="${ctx }/static/js/jquery.pagination.js"></script>
	<script type="text/javascript">
		// 给部门下拉框添加事件
		$("select[name=dept]").change(function(){
			// 获取值
			var dept = $(this).val();
			// 发送请求到后台动态更新，职位
			$.ajax({
				url:'${ctx}/dept/'+dept,
                type:'post',
                contentType : "application/json;charset=UTF-8",
                dataType:'json',
                success:function(data){
                	var positions = data;
                	//遍历
                	var html = '<option value="">请选择</option>';
                	// 获取postions的select
                	var ePosition = $('select[name=position]');
                	for(var i = 0 ; i < positions.length ;i ++){
                		html += '<option value='+positions[i].id+'>' + positions[i].name + '</option>';
                	}
                	$(ePosition).empty();
                	$(ePosition).html(html);
                }
			})
		})
	
	 $('#selectBtn').click(function () {
        // 查询之后再次初始化页面
        initPagination();
    });
	 function pageselectCallback(page_index, jq){
            // 去除两端空格
            var pageSize = 2;
            // 获取所有填充的表单信息
            var dept = $('select[name=dept]').val();
            var position = $('select[name=position]').val();
            var name = $('input[name=name]').val();
            var leave = $('select[name=leave]').val();
            var teacher = {
                // 键值对 "key":"value","key2"....
                'dept':{
                	'id':dept
                },
                'position':{
                	'id':position
                } ,
                'name':name,
                'leave':leave
            };
            var page = {
            	'pageNum':page_index,
            	'pageSize':pageSize
            };
            
            $.ajax({
                url:'${ctx}/teacher/page',
                type:'post',
                contentType : "application/json;charset=UTF-8",
                dataType:'json',
                data:JSON.stringify(
                			{
	                        	teacher:teacher,
	                        	page:page
                        	}		
                ),
                success:function (data) {
                    var pageInfo = data;
                    var pages = pageInfo.pages;
                    var list = pageInfo.list;
                    var html = '<div>\n' +
                        '        <table>\n' +
                        '            <thead>\n' +
                        '                <tr>\n' +
                        '                    <th>用户编号</th>\n' +
                        '                    <th>姓名</th>\n' +
                        '                    <th>部门</th>\n' +
                        '                    <th>岗位</th>\n' +
                        '                    <th>性别</th>\n' +
                        '                    <th>出生日期</th>\n' +
                        '                    <th>入职日期</th>\n' +
                        '                    <th>电话</th>\n' +
                        '                    <th>学历</th>\n' +
                        '                    <th>籍贯</th>\n' +
                        '                    <th>操作</th>\n' +
                        '                </tr>\n' +
                        '            </thead>\n' +
                        '            <tbody>\n' ;
                        for(var i = 0 ; i < list.length; i ++) {
                            html += ' <tr>\n' +
                                '                        <td>'+list[i].id+'</span></td>\n' +
                                '                        <td>'+list[i].name+'</td>\n' +
                                '                        <td>'+list[i].dept.name+'</td>\n' +
                                '                        <td>'+list[i].position.name+'</td>\n' +
                                '                        <td>'+list[i].gender +'</td>\n' +
                                '                        <td>'+list[i].birthday +'</td>\n' +
                                '                        <td>'+list[i].hiredate +'</td>\n' +
                                '                        <td>'+list[i].phone+'</td>\n' +
                                '                        <td>'+list[i].study+'</td>\n' +
                                '                        <td>'+list[i].home+'</td>\n' +
                                '                        <td><a href="${ctx}/teacher/get/'+list[i].id+'">编辑</a><a href="${ctx}/teacher/delete/' + list[i].id + '"  >删除</a></td>\n' +
                                '\n' +
                                '</tr>';
                        }
            $('#Searchresult').empty().append(html);
            return false;  
          }
        })
        }
        /**
         * Initialisation function for pagination
         */
        function initPagination() {
            var pageSize = 2;
            var dept = $('select[name=dept]').val();
            var position = $('select[name=position]').val();
            var name = $('input[name=name]').val();
            var leave = $('select[name=leave]').val();
            var teacher = {
                    // 键值对 "key":"value","key2"....
                    'dept':{
                    	'id':dept
                    },
                    'position':{
                    	'id':position
                    } ,
                    'name':name,
                    'leave':leave
                };
                var page = {
                	'pageNum':0,
                	'pageSize':pageSize
                };
            $.ajax({
                url:'${ctx}/teacher/page',
                type:'post',
                contentType : "application/json;charset=UTF-8",
                dataType:'json',
                data:JSON.stringify({
                	teacher:teacher,
                	page:page
                	}),
                success:function (data) {
                    var pageInfo = data;
                    var pages = pageInfo.pages;
                    $("#Pagination").pagination(pages, {
                        callback: pageselectCallback,
                        prev_text:'上一页',// 默认为英文
                        next_text:'下一页',
                        link_to:'javascript:;', // 默认为#，这样URL会出现#,不优雅
                        num_display_entries:6,
                        items_per_page:1 // Show only one item per page
                    });
                    // 得到数据成功之后再添加事件
                }
            })


        }

        // When document is ready, initialize pagination
        $(document).ready(function(){
            initPagination();
        });
	</script>
</body>
</html>




















