<%--
  Created by IntelliJ IDEA.
  User: 陶大爷
  Date: 2023/6/13
  Time: 21:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>患者内脏数据图</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%--    <link href="${pageContext.request.contextPath}/static/layui/css/layui.css" rel="stylesheet">--%>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap-all.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/echarts.min.js"></script>
    <style>
        #btn{
            position: absolute;
            right: 20%;
            bottom: 2px;
        }
    </style>
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
        <div class="col-12 col-lg-10" style="height: 500px">
                <h3 style="color: #8cc5ff">当前用户:${patientName}</h3>

                <div id="main" style="height: 100%; user-select: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"
                     _echarts_instance_="ec_1686963317755">
                    <div style="position: relative; width: 350px; height: 746px; padding: 0px; margin: 0px; border-width: 0px; cursor: default;">
                    </div>
                </div>
            <button type="button" class="btn btn-primary" id="btn" onclick="window.location='http://localhost/mapAndBody'">返回</button>
        </div>
    </div>

</div>

<script>
    var ROOT_PATH = 'http://localhost/static';
    var chartDom = document.getElementById('main');
    var myChart = echarts.init(chartDom);
    var option;

    $.get(
        ROOT_PATH + '/img/people.svg',
        function (svg) {
            $.get("http://localhost/api/bodyData/sickId?id="+"${id}",function (response){
                console.log(response.data)
                var dataList;
                if(response.data.length!==0){
                    dataList = [response.data[0].heart,response.data[0].largeIntestine,response.data[0].smallIntestine,response.data[0].spleen,response.data[0].kidney,response.data[0].lung,response.data[0].liver]
                }
                else if(response.data.length===0){
                    dataList = [121,321,141,52,198,289,139,1]
                }
                echarts.registerMap('organ_diagram', {svg: svg});
                option = {
                    tooltip: {},
                    geo: {
                        left: 10,
                        right: '50%',
                        map: 'organ_diagram',
                        selectedMode: 'multiple',
                        emphasis: {
                            focus: 'self',
                            itemStyle: {
                                color: null
                            },
                            label: {
                                position: 'bottom',
                                distance: 0,
                                textBorderColor: '#fff',
                                textBorderWidth: 2
                            }
                        },
                        blur: {},
                        select: {
                            itemStyle: {
                                color: '#b50205'
                            },
                            label: {
                                show: false,
                                textBorderColor: '#fff',
                                textBorderWidth: 2
                            }
                        }
                    },
                    grid: {
                        left: '60%',
                        top: '20%',
                        bottom: '20%'
                    },
                    xAxis: {},
                    yAxis: {
                        data: [
                            'heart（心脏）',
                            'large-intestine（大肠）',
                            'small-intestine（小肠）',
                            'spleen（脾脏）',
                            'kidney（肾脏）',
                            'lung（肺）',
                            'liver（肝脏）'
                        ]
                    },
                    series: [
                        {
                            type: 'bar',
                            emphasis: {
                                focus: 'self'
                            },
                            data: dataList
                        }
                    ]
                };
                myChart.setOption(option);
                myChart.on('mouseover', {seriesIndex: 0}, function (event) {
                    myChart.dispatchAction({
                        type: 'highlight',
                        geoIndex: 0,
                        name: event.name
                    });
                });
                myChart.on('mouseout', {seriesIndex: 0}, function (event) {
                    myChart.dispatchAction({
                        type: 'downplay',
                        geoIndex: 0,
                        name: event.name
                    });
                });
            })
        }
    );

    option && myChart.setOption(option);
</script>
</body>
</html>
