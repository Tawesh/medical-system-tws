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
    <title>编辑患者信息</title>
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
                <form action="updatePatient" method="get">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="id">病人ID</span>
                        </div>
                        <input name="id" value="${patient.getId()}" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="name">姓名</span>
                        </div>
                        <input name="name" value="${patient.getName()}" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="age">年龄</span>
                        </div>
                        <input name="age" value="${patient.getAge()}" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="gender">性别</span>
                        </div>
                        <input name="sex" value="${patient.getSex()}" type="text"  class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="phone">联系电话</span>
                        </div>
                        <input name="phone" value="${patient.getPhone()}" type="text"  class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="room">病人病房</span>
                        </div>
                        <input name="room" value="${patient.getRoom()}" type="text"  class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="rst">挂号开始时间</span>
                        </div>
                        <input name="rst" value="${patient.getRegistrationStartTime()}" type="text"  class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="ret">挂号结束时间</span>
                        </div>
                        <input name="ret" value="${patient.getRegistrationEndTime()}" type="text"  class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                    </div>
                    <button type="submit" class="btn btn-success">提交</button>
                    <button type="button" onclick="cancel()" class="btn btn-warning">取消</button>
                </form>

<%--                <footer class="fixed-bottom bg-dark text-white">--%>
<%--                    <p class="text-center p-3 m-0">医疗信息管理系统</p>--%>
<%--                </footer>--%>

            </div>
        </div>
    </div>
</div>

<script>
    window.onload=function (){
        var b = '${info}';
        if (b!=''){
            alert(b);
            window.location="patientManage";
        }
    }
    function cancel(){
        window.location = "patientManage";
    }
</script>

</body>
</html>

