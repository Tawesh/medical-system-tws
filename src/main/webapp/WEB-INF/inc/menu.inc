<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!--<p class="card-header bg-primary text-white">功能菜单</p>-->
<!--<div class="list-group list-group-flush">-->
<!--    <a href="StudentManageServlet" class="list-group-item list-group-item-action">学生管理</a>-->
<!--    <a href="CourseManageServlet" class="list-group-item list-group-item-action">课程管理</a>-->
<!--    <a href="ScoreManageServlet" class="list-group-item list-group-item-action">成绩管理</a>-->
<!--    <a href="" class="list-group-item list-group-item-action">用户管理</a>-->
<!--</div>-->

<div id="app">
    <el-row class="tac">
    <el-col :span="24">
        <h5>可选功能</h5>
        <el-menu
                default-active="2"
                class="el-menu-vertical-demo"
                @open="handleOpen"
                :default-openeds="openeds"
                @close="handleClose">
            <el-submenu index="1">
                <template slot="title">
                    <i class="el-icon-menu" ></i>
                    <span>信息管理</span>
                </template>
                <el-menu-item-group >
                        <el-menu-item index="1-1" collapse="true" @click="doctorEvent" >医生管理</el-menu-item>
                        <el-menu-item index="1-2" @click="patientEvent">患者管理</el-menu-item>
                        <el-menu-item index="1-3" @click="registrationEvent">挂号管理</el-menu-item>
                        <el-menu-item index="1-4" @click="drugEvent">开药管理</el-menu-item>
                </el-menu-item-group>
            </el-submenu>
            <el-menu-item index="2" @click="mapEvent">
                <i class="el-icon-location"></i>
                <span slot="title"  >地图</span>
            </el-menu-item>
            <el-menu-item index="3" @click="sickHistory">
                <i class="el-icon-document"></i>
                <span slot="title" >患者病史及内脏数据</span>
            </el-menu-item>
            <el-menu-item index="4" @click="policy">
                <i class="el-icon-setting"></i>
                <span slot="title">十四五规划</span>
            </el-menu-item>
        </el-menu>
    </el-col>
    </el-row>
</div>
<script>
    new Vue(
        {
            el:"#app",
            data() {
                return {
                    isCollapse: true,
                    openeds: ['1'],
                    uniqueOpened: false
                };
            },
            methods: {
                handleOpen(key, keyPath) {
                    console.log(key, keyPath);
                },
                handleClose(key, keyPath) {
                    console.log(key, keyPath);
                },
                doctorEvent(){
                  window.location = "http://localhost/doctorManage"
                },
                patientEvent(){
                    window.location = "http://localhost/patientManage"
                },
                registrationEvent(){
                    window.location = "http://localhost/registrationManage"
                },
                drugEvent(){
                    window.location = "http://localhost/drugManage"
                },
                mapEvent(){
                    window.location = "http://localhost/map"
                },
                sickHistory(){
                    window.location = "http://localhost/mapAndBody"
                },
                policy(){
                    window.location = "http://localhost/policy"
                }
            }
        }
    )
</script>