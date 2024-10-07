<%--
  Created by IntelliJ IDEA.
  User: 86153
  Date: 2023/6/10
  Time: 21:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册界面</title>
</head>
<body>
<form class="form-signin" method="post" action="regist">
    <input type="hidden" name="method" value="#">
    <h2 class="form-signin-heading">管理员界面</h2><span style="color: red">${msg }</span>
                    邮       箱:
    <input type="text" name="email" class="input-block-level" placeholder="邮箱">
    <span id="email_msg"></span><br/>
                    密       码:
    <input id="password" type="password" name="password" class="input-block-level" placeholder="密码">
    <br/>
                    确认密码:<input type="password" name="password2" class="input-block-level" placeholder="确认密码">
    <br>
    <p style="text-align: center;">
        <input id="regist" type="button" value="注册" name="regist" class="btn btn-large btn-info" style="width: 100px;">
    </p>

</form>
<script type="text/javascript">
    //给注册按钮绑定点击提交事件
    $("#regist").click(function () {
        $("form").submint();
    });
    $("form").validate({
        rules:{
            "email":{"required":true},
            "password":{"required":true,"rangelength":[4,12]},
            "password2":{"equalTo":"#password"},
        },
        messages:{
            "email":{"required":"邮箱不能为空"},
            "password":{"required":"密码不能为空","rangelength":"请输入4~12位密码"},
            "password2":{"equalTo":"密码输入不一致"}
        },
        //指定错误信息的位置
        errorElement:"error"
    });
    $("#email").change(function () {
        //获取表单中的email
        var email = $(this).val().trim();
        //清楚错误信息
        $("#email_msg").empty();
        //定义邮箱的规则
        var reg = /^\w+@[0-9A-Za-z]+(\.[0-9A-Za-z]+)+$/;

        //规则判断
        if(email==null || email==""){
            return ;
        }else if(!(reg.test(email))){
            $("#email_msg").html("邮箱格式不合法").css("color","red");
            return ;
        }

        //通过 ajax 进行判断
        $.get("user",{"method":"checkEmail","email":email},function (rel) {
            //判断
            if (rel){
                $("#email_msg").html("邮箱已被使用!").css("color","red");
            }else {
                $("#email_msg").html("邮箱可用!").css("color","blue");
            }
        },"json");
    });
</script>
</body>
</html>
