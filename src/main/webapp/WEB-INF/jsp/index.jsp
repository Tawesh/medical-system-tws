<%--
  Created by IntelliJ IDEA.
  User: 陶大爷
  Date: 2023/3/27
  Time: 8:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>LOGIN</title>
    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        .msg-box {
            position: fixed;
            top: 20%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
        .my-box{
            width: 500px;
            height: 300px;
            position: absolute;
            right: 8%;
            bottom:40%;
        }
    </style>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap-all.js"></script>
    <link href="static/css/signin.css" rel="stylesheet">
</head>


<body class="text center" style="background: url('http://localhost/static/img/welcome.jpg') no-repeat;background-size: cover;image-rendering: -webkit-optimize-contrast; ">
<div class="my-box">

    <form class="form-signin" method="get" action="bs/api/login">
        <img class="mb-4" src="static/img/yy.jpg" alt="" width="100" height="100">
        <h1 class="h3 mb-3 font-weight-normal">医疗信息管理系统</h1>
        <label for="inputEmail" class="sr-only">UserName</label>
        <input type="text" id="inputEmail" class="form-control" name="email" placeholder="UserName" required
               autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" class="form-control" name="password" placeholder="Password" required>
        <div class="checkbox mb-3">
            <label>
                <input type="checkbox" value="remember-me"> 记住我
            </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">LogIn</button>
    </form>
</div>
<script>

    window.onload=function (){
        var vm =  new Vue({
            methods:{
                msgPrintErr(msg){
                    this.$message.error(msg)
                },
                msgPrintSucc(msg){
                    this.$message.success(msg)
                }
            }
        })
        const msg = '${msg}'
        if(msg==='用户名或密码输入错误，请联系开发人员解决'){
            vm.msgPrintErr(msg)
        }else if(msg==="登录成功"){
            vm.msgPrintSucc(msg)
            window.setInterval(function (){
                window.location = '/welcome'
            },2000)
    }
    }
</script>
</body>
</html>
