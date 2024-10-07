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
    <title>添加开药信息</title>
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
                <form method="get" action="addDrug">
                    <!-- 表单内容 -->
                    <!-- ... -->
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="id">开药编号</span>
                        <input type="text" name="id" class="form-control" aria-label="Sizing example input"
                               aria-describedby="inputGroup-sizing-default">
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="name">药品名称</span>
                        <input type="text" name="yName" class="form-control" aria-label="Sizing example input"
                               aria-describedby="inputGroup-sizing-default" >
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="age">药品价格</span>
                        <input type="text" name="price" class="form-control" aria-label="Sizing example input"
                               aria-describedby="inputGroup-sizing-default">
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="sex">患者姓名</span>
                        <input type="text" name="uName" class="form-control" aria-label="Sizing example input"
                               aria-describedby="inputGroup-sizing-default">
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="phone">药师姓名</span>
                        <input type="text" name="dName" class="form-control" aria-label="Sizing example input"
                               aria-describedby="inputGroup-sizing-default">
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="room">药师电话</span>
                        <input type="text" name="dpd" class="form-control" aria-label="Sizing example input"
                               aria-describedby="inputGroup-sizing-default">
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="workStartTime">开药时间</span>
                        <input type="datetime-local" name="drugTime" class="form-control" aria-label="Sizing example input"
                               aria-describedby="inputGroup-sizing-default">
                    </div>
                    <button class="btn btn-primary">
                        提交
                    </button>
                    <button class="btn btn-primary" type="button" onclick="cancel()">
                        取消
                    </button>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
    window.onload = function () {
        var b = '${info}';
        if (b !== '') {
            alert(b);
            window.location = "drugManage";
        }
    }
    function cancel(){
        window.location = "drugManage";
    }
</script>
</body>
</html>

