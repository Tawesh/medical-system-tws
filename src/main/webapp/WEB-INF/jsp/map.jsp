<%--
  Created by IntelliJ IDEA.
  User: 陶大爷
  Date: 2023/6/14
  Time: 9:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!--常规地图,搜索跳转到对应坐标-->
<html lang="zh-CN">

<head>
    <!--    <base href="//webapi.amap.com/ui/1.1/ui/misc/PositionPicker/examples/"/>-->
    <meta charset="utf-8">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
    <title>医院查询</title>
    <style>
        /*html,*/
        /*body {*/
        /*    height: 100%;*/
        /*    margin: 0;*/
        /*    width: 100%;*/
        /*    padding: 0;*/
        /*    overflow: hidden;*/
        /*    font-size: 13px;*/
        /*}*/

        .map {
            height: 100%;
            width: 100%;
            float: left;
        }

        #right {
            display: none;
        }

        #footer {
            width: 40%;
            background: #fff;
            border-top: 1px solid #cccccc;
            z-index: 9999;
            padding: 10px 20px;
            box-sizing: border-box;
        }

        .addressBox {
            width: 100%;
            padding-left: 40px;
            box-sizing: border-box;
            position: relative;
            font-size: 16px;
            margin: 10px 0 15px;
        }

        .addressBox i {
            width: 24px;
            height: 28px;
            background: url("https://weixin.dzrlkj.com/image/location.png") no-repeat;
            background-size: 24px 28px;
            display: block;
            position: absolute;
            top: 50%;
            margin-top: -14px;
            left: 0;
        }

        .btnOk {
            line-height: 44px;
            text-align: center;
            background: #0091ff;
            font-size: 18px;
            color: #fff;
            border-radius: 5px;
        }

        .searchBox {
            width: 100%;
            z-index: 9999;
            height: auto;
            padding: 10px 20px;
            box-sizing: border-box;
            background: rgba(255, 255, 255, 0);
        }

        #search {
            width: 40%;
            height: 38px;
            border-radius: 20px;
            border: 1px solid #ccc;
            outline: none;
            background: rgba(255, 255, 255, .5);
            padding-left: 10px;
            box-sizing: border-box;
        }
    </style>
</head>
<script src="${pageContext.request.contextPath}/static/js/bootstrap-all.js"></script>

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

            <div class="searchBox">
                <input type="text" id="search" placeholder="搜索附近医院" autocomplete="off">

                <button class="btn btn-primary" type="button" onclick="searchLocationId()">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                        <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                    </svg>
                    搜索
                </button>
            </div>
<%--            <div class="btnOk" onclick="searchLocationId()">确定</div>--%>

            <div id="container" class="map" tabindex="0"></div>
            <div id="footer">
                <div class="addressBox">
                    <i></i>
                    <span id="address"></span>
                </div>

            </div>


        </div>
    </div>

</div>



<script type="text/javascript"
        src='//webapi.amap.com/maps?v=2.0&key=3d0a84d1892dbb9805300ea4edd5e57f&plugin=AMap.ToolBar'></script>
<!-- UI组件库 1.0 -->
<script src="//webapi.amap.com/ui/1.1/main.js?v=1.1.1"></script>


<script type="text/javascript">
    var center = '';
    const map = new AMap.Map('container', {
        zoom: 17,
        key: '7b2a4709ee67b4fb50fda894a218de01',
        resizeEnable: true,
        rotateEnable: true,
        pitchEnable: true,
        pitch: 80,
        rotation: -15,
        //viewMode: '3D',//开启3D视图,默认为关闭
        buildingAnimation: true,//楼块出现是否带动画
        enableHighAccuracy: true,//是否使用高精度定位，默认:true
        expandZoomRange: true,
        zooms: [3, 20],
    });
    var mapInfo = {
        latitude: 105.889362,
        longitude: 32.418315,
        address: ''
    };

    function searchLocationId() {
        const geocoder = new AMap.Geocoder({
            radius: 1000,
            extensions: "all"
        });
        console.log([mapInfo.longitude, mapInfo.latitude]);
        geocoder.getAddress([mapInfo.longitude, mapInfo.latitude], function (status, result) {
            console.log(status)
            console.log(result)
            if (status === 'complete' && result.info === 'OK') {
                if (result && result.regeocode) {
                    // 具体地址
                    mapInfo.address = result.regeocode.formattedAddress;
                    // 省
                    mapInfo.province = result.regeocode.addressComponent.province;
                    // 市
                    mapInfo.city = result.regeocode.addressComponent.city;
                    if (mapInfo.city == '') mapInfo.city = mapInfo.province;
                    // 区
                    mapInfo.district = result.regeocode.addressComponent.district;
                    openAddress();
                }
            } else {
                alert('获取省市区失败，请重新选择地址');
            }
        });
    }


    function openAddress() {
        // cityData 你的省市区地址库为了获取省市区id
        var province = mapInfo.province;
        var city = mapInfo.city;
        var district = mapInfo.district;
        for (var i = 0; i < cityData.length; i++) {
            if (province.indexOf(cityData[i].text) >= 0 && cityData[i].children) {
                for (var j = 0; j < cityData[i].children.length; j++) {
                    if (city.indexOf(cityData[i].children[j].text) >= 0 && cityData[i].children[j].children) {
                        for (var k = 0; k < cityData[i].children[j].children.length; k++) {
                            if (cityData[i].children[j].children[k].text == district) {
                                mapInfo.provinceId = cityData[i].value;
                                mapInfo.cityId = cityData[i].children[j].value;
                                mapInfo.districtId = cityData[i].children[j].children[k].value;
                            }
                        }
                    }
                }
            }
        }
        console.log(mapInfo);
    }


    // getQueryString  获取地址栏的参数，这方法自行解决，或者留言
    // if (getQueryString('center')) {
    //     center = getQueryString('center').split(',').map(t => +t);
    // }
    //地图开始
    AMap.plugin('AMap.Geolocation', function () {
        var geolocation = new AMap.Geolocation({
            enableHighAccuracy: true,//是否使用高精度定位，默认:true
            timeout: 10000,          //超过10秒后停止定位，默认：无穷大
            convert: true,           //自动偏移坐标，偏移后的坐标为高德坐标，默认：true
            showButton: true,        //显示定位按钮，默认：true
            showMarker: false,        //定位成功后在定位到的位置显示点标记，默认：true
            showCircle: false,        //定位成功后用圆圈表示定位精度范围，默认：true
            panToLocation: true,     //定位成功后将定位到的位置作为地图中心点，默认：true
            offset: [15, 150],//定位按钮与设置的停靠位置的偏移量，默认：Pixel(10, 20)
            position: 'LB',    //定位按钮停靠位置，默认：'LB'，左下角
        });
        map.addControl(geolocation);
        geolocation.getCurrentPosition(function (status, result) {
            if (status == 'complete') {
                console.log(result);
                mapInfo.longitude = result.position.lng;
                mapInfo.latitude = result.position.lat;
                mapInfo.address = result.formattedAddress;
                // console.log(center); // center [ll9.2323,39.89797]传入回显定位
                if (center != '') {
                    map.setCenter(center)
                } else {
                    map.setCenter([result.position.lng, result.position.lat]);
                }
                $('#address').html(result.formattedAddress);
            } else {
                if (center != '') {
                    map.setCenter(center)
                }
                console.log('失败原因排查信息:' + result.message);
            }
        });
    });
    AMapUI.loadUI(['misc/PositionPicker'], function (PositionPicker) {

        var positionPicker = new PositionPicker({
            mode: 'dragMap',//dragMap：拖拽地图，dragMarker：拖拽点
            map: map
        });

        positionPicker.on('success', function (positionResult) {
            console.log(positionResult);
            mapInfo = {
                latitude: positionResult.position.lat,
                longitude: positionResult.position.lng,
                address: positionResult.regeocode.formattedAddress
            };
            document.getElementById('address').innerHTML = positionResult.address;
        });
        positionPicker.on('fail', function (positionResult) {
            document.getElementById('address').innerHTML = ' ';
        });
        positionPicker.start();
    });
    AMapUI.loadUI(['misc/PoiPicker'], function (PoiPicker) {

        const poiPicker = new PoiPicker({
            input: 'search'
        });

        //初始化poiPicker
        poiPicker.on('poiPicked', function (poiResult) {
            console.log(poiResult);
            const item = poiResult.item;
            mapInfo = {
                latitude: item.location.lat,
                longitude: item.location.lng,
                address: item.district + ' ' + item.name + ' ' + item.address
            };
            map.setCenter([item.location.lng, item.location.lat]);
            $('#search').val('');
        });
    });
</script>
</body>

</html>
