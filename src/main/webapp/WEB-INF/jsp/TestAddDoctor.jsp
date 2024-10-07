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
    <title>挂号信息管理</title>
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
            <form class="form-inline" action="findPatient" method="get">
                <label>
                    <input type="text" name="name" class="form-control" placeholder="请输入病人姓名" />
                </label>
                <button type="submit" class="btn btn-primary"><i class="bi bi-search">查询</i></button>
                <button onclick="add()" type="button" class="btn btn-success"><i class="bi bi-plus-lg">添加病人</i></button>
            </form>
            <div class="jumbotron" style="overflow-y: scroll; max-height: 70vh;">

                <form method="get" action="updateRegistration">
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="id">患者编号</span>
                        <input type="text" name="id" class="form-control" aria-label="Sizing example input"
                               aria-describedby="inputGroup-sizing-default" value="${registration.getId()}">
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="sickName">患者姓名</span>
                        <input type="text" name="sickName" class="form-control" aria-label="Sizing example input"
                               aria-describedby="inputGroup-sizing-default" value="${registration.getSickName()}">
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="sickPhone">患者手机</span>
                        <input type="text" name="sickPhone" class="form-control" aria-label="Sizing example input"
                               aria-describedby="inputGroup-sizing-default" value="${registration.getSickPhone()}">
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="doctorName">医生姓名</span>
                        <input type="text" name="doctorName" class="form-control" aria-label="Sizing example input"
                               aria-describedby="inputGroup-sizing-default" value="${registration.getDoctorName()}">
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="room">科室编号</span>
                        <input type="text" name="room" class="form-control" aria-label="Sizing example input"
                               aria-describedby="inputGroup-sizing-default" value="${registration.getRoom()}">
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="sickness">病情描述</span>
                        <input type="text" name="sickness" class="form-control" aria-label="Sizing example input"
                               aria-describedby="inputGroup-sizing-default" value="${registration.getSickness()}">
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="StartTime">挂号时间</span>
                        <input type="date" name="rst" class="form-control" aria-label="Sizing example input"
                               aria-describedby="inputGroup-sizing-default" value="${registration.getRegistrationStartTime()}">
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="workEndTime">结束时间</span>
                        <input type="date" name="ret" class="form-control" aria-label="Sizing example input"
                               aria-describedby="inputGroup-sizing-default" value="${registration.getRegistrationEndTime()}">
                    </div>
                    <button class="btn btn-primary">
                        提交
                    </button>
                    <button class="btn btn-primary" type="button" onclick="cancel()">
                        取消
                    </button>
                </form>
                <footer class="fixed-bottom bg-dark text-white">
                    <p class="text-center p-3 m-0">医疗信息管理系统</p>
                </footer>

            </div>
        </div>
    </div>
</div>


<script>
    window.onload = function () {
        var b = '${info}';
        if (b !== '') {
            alert(b);
            window.location = "registrationManage";
        }
    }
    function cancel(){
        window.location = "registrationManage";
    }
</script>

</body>
</html>

