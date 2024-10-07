<%--
  Created by IntelliJ IDEA.
  User: 陶大爷
  Date: 2023/6/13
  Time: 9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>WELCOME</title>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap-all.js"></script>
<%--    <script src="https://webapi.amap.com/maps?v=2&key="></script>--%>


</head>
<style>
    /* CSS样式可以根据需要进行自定义 */


    h1 {
        color: #333;
        font-size: 24px;
    }

    p {
        color: #555;
        font-size: 16px;
        line-height: 1.5;
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

            <div class="jumbotron" style="overflow-y: scroll; max-height: 500vh" id="my-info">
                <img src="https://ts1.cn.mm.bing.net/th/id/R-C.b38bcfc5717b1796117e62fefdae6f86?rik=KhzuBxVGloK8nA&riu=http%3a%2f%2f5b0988e595225.cdn.sohucs.com%2fimages%2f20200118%2f54e8b93658d44207a66255b68b601e77.jpeg&ehk=g0OXR5VM3xpioCDjGA%2b7C%2bClXi%2fv6g39GUbOqN3lUvc%3d&risl=&pid=ImgRaw&r=0" alt="not-found">
            </div>
        </div>
    </div>
</div>



<style scoped>
    .mapDiv {
        width: 100%;
        height: 300px;
    }
</style>
</body>
</html>
