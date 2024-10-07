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
    <title>添加患者信息</title>
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
                <form action="addPatient" method="get">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="id">患者编号</span>
                        </div>
                        <input name="id" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="name">患者姓名</span>
                        </div>
                        <input name="name" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="age">患者年龄</span>
                        </div>
                        <input name="age" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="gender">患者性别</span>
                        </div>
                        <input name="sex" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="phoneNumber">联系电话</span>
                        </div>
                        <input name="phone" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="room">科室编号</span>
                        </div>
                        <input name="room" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="rst">挂号开始时间</span>
                        </div>
                        <input name="rst" type="datetime-local" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="ret">挂号结束时间</span>
                        </div>
                        <input name="ret" type="datetime-local" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                    </div>
                    <button type="submit" class="btn btn-primary">提交</button>
                    <button type="button" onclick="cancel()" class="btn btn-primary">取消</button>
                </form>

            </div>
        </div>
    </div>
</div>

<script>
    window.onload = function () {
        var b = '${info}';
        if (b != '') {
            alert(b);
            window.location = "patientManage";
        }
    }

    function cancel(){
        window.location = "patientManage";
    }
</script>

</body>
</html>

