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
    <title>政策说明</title>
    <link rel="stylesheet" href="http://localhost/webjars/bootstrap/4.6.1/css/bootstrap.min.css">
</head>
<style>
    #btn{
        position: absolute;
        right: 5%;
        bottom: 5%;
    }
</style>
<body>
<embed src="http://localhost/static/policy.pdf" width="100%" height="100%" type="application/pdf">
<button type="button" onclick="window.location='http://localhost/welcome'" id="btn" class="btn btn-primary">
    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-return-left" viewBox="0 0 16 16">
        <path fill-rule="evenodd" d="M14.5 1.5a.5.5 0 0 1 .5.5v4.8a2.5 2.5 0 0 1-2.5 2.5H2.707l3.347 3.346a.5.5 0 0 1-.708.708l-4.2-4.2a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 8.3H12.5A1.5 1.5 0 0 0 14 6.8V2a.5.5 0 0 1 .5-.5z"/>
    </svg>
    返回
</button>

</body>
</html>

