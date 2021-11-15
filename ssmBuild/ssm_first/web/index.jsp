<%--
  Created by IntelliJ IDEA.
  User: TiAmo
  Date: 2021/4/13
  Time: 19:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>图书首页</title>
    <style type="text/css">
      h3{
        width: 180px;
        height: 38px;
        margin: 100px auto;
        text-align: center;
        line-height: 38px;
        background: deepskyblue;
        border-radius: 4px;
      }
      a{
        text-decoration: none;
        color: black;
        font-size: 18px;
      }
    </style>
  </head>
  <body>
  <h3>
    <a href="${pageContext.request.contextPath}/book/all">点击进入列表页</a>
  </h3>
  </body>
</html>
