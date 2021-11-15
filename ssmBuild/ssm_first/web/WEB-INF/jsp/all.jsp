<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-hander">
                <h1>
                    <small>书籍列表————所有书籍</small>
                </h1>
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/add">新增</a>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md=12 column">
        <table class="table table-hover table-striped">
            <thead>
            <tr>
                <th>书籍编号</th>
                <th>书籍名称</th>
                <th>书籍数量</th>
                <th>书籍描述</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="book" items="${requestScope.get('list')}">
                <tr>
                    <td>${book.getBookId()}</td>
                    <td>${book.getBookName()}</td>
                    <td>${book.getBookCounts()}</td>
                    <td>${book.getDetail()}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/book/update?id=${book.getBookId()}">更改</a>
                        <a href="${pageContext.request.contextPath}/book/delete?id=${book.getBookId()}">删除</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
          </table>
        </div>
    </div>
</div>
</body>
</html>
