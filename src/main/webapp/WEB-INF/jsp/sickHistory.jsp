<%--
  Created by IntelliJ IDEA.
  User: 陶大爷
  Date: 2023/6/18
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>患者电子病历</title>
  <script src="${pageContext.request.contextPath}/static/js/bootstrap-all.js"></script>

  <style>
    /* 样式可以根据需要进行修改和定制 */
    h1 {
      text-align: center;
    }
    .section {
      margin-bottom: 20px;
    }
    .section-header {
      font-weight: bold;
      margin-top: 0;
    }
    .subsection {
      margin-top: 10px;
      margin-bottom: 10px;
    }
    .grid-container {
      display: grid;
      grid-template-columns: repeat(2, 1fr);
      grid-gap: 20px;
    }
    .grid-item {
      border: 1px solid #ccc;
      padding: 10px;
      border-radius: 5px;
    }
    #return-btn{
      position: absolute;
      right: 5%;
      bottom: 5%;
    }
  </style>
</head>
<body id="bodyPrint">

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
<div id="printContent">
  <h1>患者电子病历</h1>

  <div class="grid-container">
    <div class="grid-item">
      <div class="section">
        <h2 class="section-header">个人信息</h2>
        <div class="subsection">
          <p><strong>姓名:</strong>${name}</p>
          <p><strong>性别:</strong>${data.getSex()}</p>
          <p><strong>年龄:</strong> ${data.getAge()}岁</p>
          <p><strong>联系电话:</strong> ${data.getPhone()}</p>
          <p><strong>地址:</strong> ${data.getAddress()}</p>
        </div>
      </div>

      <div class="section">
        <h2 class="section-header">病史</h2>
        <div class="subsection">
          <p><strong>既往病史:</strong> ${data.getSickHistory1()}</p>
          <p><strong>过敏史:</strong> ${data.getSickHistory2()}</p>
          <p><strong>家族史:</strong> ${data.getSickHistory3()}</p>
        </div>
      </div>
    </div>

    <div class="grid-item">
      <div class="section">
        <h2 class="section-header">主诉</h2>
        <div class="subsection">
          <p>${data.getSickStatus()}</p>
        </div>
      </div>

      <div class="section">
        <h2 class="section-header">病程记录</h2>
        <div class="subsection">
          ${data.getHistoryRecord()}
        </div>
      </div>
    </div>

    <div class="grid-item">
      <div class="section">
        <h2 class="section-header">检查结果</h2>
        <div class="subsection">
          <p>以下是患者的一些检查结果：</p>
          <ul>
            ${data.getCheckResult()}
          </ul>
        </div>
      </div>

      <div class="section">
        <h2 class="section-header">诊断和治疗计划</h2>
        <div class="subsection">
          <p><strong>初步诊断:</strong> ${data.getJudge()}</p>
          <p><strong>治疗计划:</strong> ${data.getPlan()}</p>
        </div>
      </div>
    </div>

    <div class="grid-item">
      <div class="section">
        <h2 class="section-header">随访</h2>
        <div class="subsection">
          <p>${data.getAfterVisit()}</p>
        </div>
      </div>
    </div>
  </div>
</div>
      </div>


    </div>
  </div>

</div>
<div id="return-btn">
  <button type="button" class="btn btn-primary" onclick="window.location='http://localhost/mapAndBody'">返回</button>
</div>
<script>
  // function printPage(){
  //   document.getElementById("btn-print").style.display='none'
  //   document.getElementById("bodyPrint").style.visibility='hidden';
  //   document.getElementById("printContent").style.visibility='visible';
  //   window.print()
  // }
  // document.write('<button type="button" class="btn btn-primary" id="btn-print" onclick="printPage()">打印</button>')
</script>
</body>
</html>
