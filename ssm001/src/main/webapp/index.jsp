<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 
	<div  >
        <form action="${ctx}/user/login" method="post">
            <table>
                <tr><td colspan="2"><input placeholder="请输入账号" name="username"></td></tr>
                <tr><td><input placeholder="请输入密码"  name="password"></td></tr>
                <tr><td><input type="text" id="check" placeholder="请输入验证码"></td><td><span id="checkSpan"></span></td></tr>
                <tr><td><input id="submitBtn" type="button" value="管理员登录"></td></tr>
            </table>
        </form>
    </div>
 
 <script type="text/javascript" src="${ctx }/static/js/jquery.js"></script>
 <script type="text/javascript">
 	$(function () {
        var str = getStr();
        $("#checkSpan").html(str);
        $("#checkSpan").click(function () {
          $(this).html(getStr());
        })
    })

    /**
     * 获取随机验证码
     * @returns {string}
     */
    function  getStr() {
        var s = "abcdeefghijklmnopqrstuvwxyzABCDEEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        var result = "";
        for(var i = 0 ; i < 4 ; i++){
            result += s[parseInt((Math.random()*s.length)-1)];
        }
        return result;
    }

    $("#submitBtn").click(function () {
//       验证
        var username = $("input[name=username]").val();
        var password = $("input[name=password]").val();
        var checkSpan = $("#checkSpan").html();
        var check = $("#check").val();
        // 去除空格之后比较
        if(username.trim() == '') {
            alert('用户名不能为空');
            return;
        }

        if(password.trim() == '') {
            alert('密码不能为空');
            return;
        }
        // 忽略大小写比较
        if(check != checkSpan & check.toLowerCase() != checkSpan.toLowerCase()) {
            alert('验证码输入不正确');
            return;
        }

        // 提交
        $("form").submit();


    })
 </script>
</body>
</html>