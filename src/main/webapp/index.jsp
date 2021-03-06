<%@ page import="com.gym.ssm.entity.peng.Login" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/2/25
  Time: 20:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!--[if lte IE 8]>
    <link rel="stylesheet"
          href="http://yui.yahooapis.com/combo?pure/0.6.0/base-min.css&pure/0.6.0/grids-min.css&pure/0.6.0/grids-responsive-old-ie-min.css">
    <![endif]-->
    <!--[if gt IE 8]><!-->
    <link rel="stylesheet"
          href="http://yui.yahooapis.com/combo?pure/0.6.0/base-min.css&pure/0.6.0/grids-min.css&pure/0.6.0/grids-responsive-min.css">
    <!--<![endif]-->

    <link rel="stylesheet" href="layui/css/layui.css">
    <style type="text/css">
        .layui-table-page {
            position: fixed;
        }
    </style>
    <style>
        tr {
            font-family: 华文行楷;
        }

        span {
            font-family: 华文行楷;
        }

        li {
            font-size: 28px;
        }
    </style>
    <script type="text/javascript" src="js/jquery-3.3.1.js"></script>
</head>
<body>

<span id="app">

<div class="layui-layout layui-layout-admin ">
    <div class="layui-header">
        <div class="layui-logo" style="font-size: 28px">健身房</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a style="font-size: 28px" id="name">${login.name}</a>
                <input type="hidden" id="aid" value="${login.aid}">
                <input type="hidden" id="memu" value="${login.mid}">
                <%
                    if (session.getAttribute("login") == null) {
                        String site = new String("login.jsp");
                        response.sendRedirect(site);
                    }
                %>
            </li>
            <%--<li class="layui-nav-item">--%>
                <%--<a href="javascript:lockScreen();" style="font-size: 28px"><i class="fa fa-lock"></i>锁屏</a>--%>
            <%--</li>--%>
            <li class="layui-nav-item"><a href="/out.jsp" style="font-size: 28px">退出系统</a></li>
        </ul>
    </div>

    <!-- 左边tree页面 -->
    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll ">
            <div id="sidemenubar" lay-filter="test"></div>
        </div>
    </div>

    <!-- 选项卡要显示的地方 -->
    <div class="layui-body" style="margin-top: -10px">
        <div class="layui-tab layui-tab-card" lay-filter="tabs" lay-allowClose="true">
          <ul class="layui-tab-title">
            <li class="layui-this"> 首页</li>

            </ul>
            <div class="layui-tab-content">
                 <div class="layui-tab-item layui-show">
                  <img src="jpg/324305.jpg" width="95%" height="95%">
                 </div>

            </div>
        </div>
    </div>

</div>
</span>
<script type="text/javascript" src="layui/layui.all.js"></script>
<script type="text/javascript" src="js/vue.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<link rel="stylesheet" href="css/index.css" media="all">
<script type="text/javascript">
    $(function () {
        getTreeNode();
    });


</script>
</body>
</html>
