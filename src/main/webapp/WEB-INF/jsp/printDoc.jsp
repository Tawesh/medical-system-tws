<%--
  Created by IntelliJ IDEA.
  User: 陶大爷
  Date: 2023/6/16
  Time: 10:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>

<html>
<head>
    <title>打印医生信息</title>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap-all.js"></script>
    <link href="${pageContext.request.contextPath}/static/layui/css/layui.css" rel="stylesheet">

</head>
<style>
    .print-box{
        width:100% ;
        height: 100%;
        margin: 0 auto;
        text-align: center;
    }
    /*#btn{*/
    /*    position: fixed;*/
    /*    float: right;*/
    /*}*/
</style>
<body>

<div class="print-box">
    <div class="layui-inline">
        <table class="table-info" id="doctorTable" lay-filter="test"></table>
        <button id="printTable" type="button" class="btn btn-primary ">打印</button>
        <button type="button" class="btn btn-primary" id="btn" onclick="window.location='/doctorManage'">返回</button>
    </div>

</div>



<script>

    //表格使用+打印

    layui.use(function(){
        //得到各种内置组件
        var table = layui.table; //表格
        //执行一个 table 实例
        table.render({
            elem: '#doctorTable'
            ,height: 420
            ,url: 'http://localhost/api/print/doctor' //换成自己的的数据接口
            ,title: '医生信息表'
            ,toolbar: '#toolbarDemo' //开启头部工具栏，并为其绑定左侧模板
            ,page: false//开启分页
            //toolbar: 'default' //开启工具栏，此处显示默认图标，可以自定义模板，详见文档
            ,totalRow: false//开启合计行
            ,cols: [ //在spring boot环境下必须是这种层次结构，
                [ //表头
                    {type: 'checkbox', fixed: 'left'}
                    ,{field: 'id', title: 'ID', width:80, sort: true,fixed: 'left'}
                    ,{field: 'name', title: '医生名称', width:80, sort: true}
                    ,{field: 'age', title: '年龄', width: 200 }
                    ,{field: 'sex', title: '性别', width: 80, sort: true}
                    ,{field: 'phone', title: '手机号', width:80, sort: true}
                    ,{field: 'room', title: '诊所编号', width: 200}
                    ,{field: 'workStartTime', title: '上班时间', width: 170, sort: true}
                    ,{field: 'workEndTime', title: '下班时间', width:170, sort: true}

                ]
            ]
        });
    });
</script>
<script>
$("#printTable").click(function(){
    $(".layui-icon-print").click()
})

</script>
</body>
</html>
