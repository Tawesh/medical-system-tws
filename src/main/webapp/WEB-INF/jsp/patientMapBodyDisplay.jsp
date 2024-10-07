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
    <title>患者身体信息</title>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap-all.js"></script>

</head>
<style>
    #my-table thead tr th {
        white-space: nowrap; /* 防止文字换行 */
        overflow: hidden; /* 隐藏溢出的内容 */
        text-overflow: ellipsis; /* 在溢出的位置显示省略号 */
    }
    #my-table tbody tr td{
        white-space: nowrap; /* 防止文字换行 */
    }
</style>
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

                <table class="table table-borderless" id="my-table" >
                    <thead class="table-light">
                    <tr>
                        <th scope="col">患者编号</th>
                        <th scope="col">姓名</th>
                        <th scope="col">身&nbsp;&nbsp;体&nbsp;&nbsp;数&nbsp;&nbsp;据</th>
                        <th scope="col">电子病历</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${patient}" var="p" varStatus="num">
                        <tr>
                            <td>${p.getId()}</td>
                            <td>${p.getName()}</td>
                            <td>血糖 ${bloodGlucose} mmol/L &nbsp;&nbsp;&nbsp;&nbsp;<button type="button" onclick="qiGuan('${p.getId()}')" class="btn btn-light">查看详细数据</button></td>
                            <td><button type="button" onclick="historyData('${p.getId()}')" class="btn btn-light">查看病历</button></td>
                            <td>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>


<script>



    function add() {
        window.location = "addPatientPage";
    }

    function edit(id) {
        window.location = "editPatient?id=" + id;
    }

    function printDoc(){
        window.location = "printPatientPage"
    }
    function qiGuan(id){
        // history.pushState({},"","/test")
        window.location = "bodyData/user?id="+id
    }

    function historyData(id){
        window.location = "/api/patient/history?id="+id
    }

</script>