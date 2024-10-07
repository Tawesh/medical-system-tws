<%--
  Created by IntelliJ IDEA.
  User: 陶大爷
  Date: 2023/6/14
  Time: 9:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>添加医生信息</title>
    <style>
        #button-box-submit {
            position: fixed;
            right: 5%;
        }
    </style>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap-all.js"></script>

</head>
<body>
<div class="container-fluid">
    <div class="row">
        <!-- 头部导航栏 -->
        <div class="col-12">
            <%@include file="../inc/nav.inc" %>
        </div>
    </div>
    <div class="row">
        <!-- 侧边菜单栏 -->
        <div class="col-12 col-lg-2">
            <div class="sticky-top" style="top: 15%">
                <%@include file="../inc/menu.inc" %>
            </div>
        </div>
        <div class="col-12 col-lg-10">
            <div class="jumbotron" style="overflow-y: scroll; max-height: 70vh;">
                <form method="get" action="addDoctor">
                    <!-- 表单内容 -->
                    <!-- ... -->
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="id">医生编号</span>
                        <input type="text" name="id" class="form-control" aria-label="Sizing example input"
                               aria-describedby="inputGroup-sizing-default">
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="name">医生姓名</span>
                        <input type="text" name="name" class="form-control" aria-label="Sizing example input"
                               aria-describedby="inputGroup-sizing-default">
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="age">医生年龄</span>
                        <input type="text" name="age" class="form-control" aria-label="Sizing example input"
                               aria-describedby="inputGroup-sizing-default">
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="sex">医生性别</span>
                        <input type="text" name="sex" class="form-control" aria-label="Sizing example input"
                               aria-describedby="inputGroup-sizing-default">
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="phone">联系电话</span>
                        <input type="text" name="phone" class="form-control" aria-label="Sizing example input"
                               aria-describedby="inputGroup-sizing-default">
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="room">科室号</span>
                        <input type="text" name="room" class="form-control" aria-label="Sizing example input"
                               aria-describedby="inputGroup-sizing-default">
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="workStartTime">上班时间</span>
                        <input type="text" name="workStartTime" class="form-control" aria-label="Sizing example input"
                               aria-describedby="inputGroup-sizing-default">
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="workEndTime">下班时间</span>
                        <input type="text" name="workEndTime" class="form-control" aria-label="Sizing example input"
                               aria-describedby="inputGroup-sizing-default">
                    </div>
                    <button class="btn btn-primary">
                        提交
                    </button>
                    <button class="btn btn-primary" type="button" onclick="cancel()">
                        取消
                    </button>
                </form>
<%--                <footer class="fixed-bottom bg-dark text-white">--%>
<%--                    <p class="text-center p-3 m-0">医疗信息管理系统</p>--%>
<%--                </footer>--%>
            </div>
        </div>
    </div>
</div>

<script>
    window.onload = function () {
        var b = '${info}';
        if (b !== '') {
            alert(b);
            // window.location = "";
            history.pushState({}, null, '/doctorManage');
        }
    }
    function cancel(){
        window.location = "doctorManage";
    }
</script>
</body>
</html>

