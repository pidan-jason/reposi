<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新闻列表</title>
<style type="text/css">

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
	<form action="${ctx }/teacher/update" method="post">
		<h3>员工管理/修改</h3>
		<table>
			<tbody>
				<tr>
					<td>员工编号</td>
					<td><input value="${teacher.id }" name="id"></td>
					<td>姓名</td>
					<td><input value="${teacher.name }" name="name"></td>
				</tr>
				<tr>
					<td>民族</td>
					<td><input value="${teacher.nation }" name="nation"></td>
					<td>籍贯</td>
					<td><input value="${teacher.address }" name="address"></td>
				</tr>
				<tr>
					<td>性别</td>
					<td>
						<select name="gender">
							<option value="男">男</option>
							<option value="女">女</option>
						</select>
					</td>
					<td>出生日期</td>
					<td><input value="${teacher.birthday }" name="birthday"></td>
				</tr>
				<tr>
					<td>身份证号码</td>
					<td><input value="${teacher.card }" name="card"></td>
					<td>户籍地址</td>
					<td><input value="${teacher.home }" name="home"></td>
				</tr>
				<tr>
					<td>婚姻状况</td>
					<td><input value="${teacher.marry }" name="marry"></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>最高学历</td>
					<td><input value="${teacher.study }" name="study"></td>
					<td>毕业院校</td>
					<td><input value="${teacher.school }" name="school"></td>
				</tr>
				<tr>
					<td>头像</td>
					<td><input type="file"  ></td>
					<td>所学专业</td>
					<td><input value="${teacher.major }" name="major"></td>
				</tr>
				<tr>
					<td>手机</td>
					<td><input value="${teacher.phone }" name="phone"></td>
					<td>电子邮件</td>
					<td><input value="${teacher.email }" name="email"></td>
				</tr>
				<tr>
					<td>家庭地址</td>
					<td><input value="${teacher.home }" name="home"></td>
					<td>家庭电话</td>
					<td><input value="${teacher.homephone }" name="homephone"></td>
				</tr>
<!-- 				<tr> -->
<!-- 					<td>部门</td> -->
<%-- 					<td><input value="${teacher.dept.id }" name="dept"></td> --%>
<!-- 					<td>岗位</td> -->
<%-- 					<td><input value="${teacher.position.id }" name="position"></td> --%>
<!-- 				</tr> -->
				<tr>
					<td>入职日期</td>
<%-- 					<td><input value="${teacher.hiredate }" name="hiredate"></td> --%>
					<td>办公电话</td>
					<td><input value="${teacher.officephone }" name="officephone"></td>
				</tr>
				<tr>
					<td>是否离职</td>
					<td><input value="${teacher.leave }" name="leave"></td>
					<td>离职日期</td>
<%-- 					<td><input value="${teacher.leavedate }" name="leavedate"></td> --%>
				</tr>
			</tbody>
		</table>
		 <input type="submit" value="修改">
		 <button>取消</button>
	</form>

	 
	
	<!-- 	引入jQuery -->
	<script type="text/javascript" src="${ctx }/static/js/jquery.js">
	</script>

	 
</body>
</html>




















