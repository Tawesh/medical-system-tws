<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<nav class="navbar navbar-expand-md navbar-light bg-light mb-4" >
    <img src="http://localhost/static/img/yy.jpg" width="50px" height="50px" alt="not-found">
    <a class="navbar-brand" href="/welcome"><h2><i class="bi-cart"></i>医疗信息管理系统</h2></a>
    <div class="collapse navbar-collapse flex-row-reverse" id="navbarCollapse">
<!--        <ul class="navbar-nav ">-->
<!--            <li class="nav-item active">-->
<!--                <a class="nav-link" href="#">欢迎 ${email}</a>-->
<!--            </li>-->
<!--            <li class="nav-item">-->
<!--                <a class="nav-link" href="http://localhost/logOut"><i class="bi-door-open-fill"></i>退出-->
<!--                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-right" viewBox="0 0 16 16">-->
<!--                        <path fill-rule="evenodd" d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0v2z"/>-->
<!--                        <path fill-rule="evenodd" d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>-->
<!--                    </svg>-->
<!--                </a>-->
<!--            </li>-->
<!--        </ul>-->
        <ul class="layui-nav" style="background: white">
            <li class="layui-nav-item" lay-unselect>
                <a href="javascript:;">
                    <img src="https://bpic.588ku.com/element_origin_min_pic/19/04/10/0455e3b4c0c3b9b6857f57afbb869852.jpg" class="layui-nav-img" alt="not">
                    <span style="color: #0c0c0c" id="userName"></span>
                    <script>
                        window.onload = function (){
                            const username = '${email}'
                            if (username!==''){
                                $("#userName").html(username)
                            }if (username===''){
                                window.location = "/errorPage"
                            }
                        }
                    </script>
                </a>
                <dl class="layui-nav-child">
                    <hr>
                    <dd style="text-align: center;"><a href="http://localhost/logOut">退出</a></dd>
                </dl>
            </li>
        </ul>
    </div>
</nav>

