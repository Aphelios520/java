<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: TiAmo
  Date: 2021/4/15
  Time: 17:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增书籍</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
        <input type="hidden" name="bookId" value="${book.getBookId()}"/>
        书籍名称 : <input type="text" name="bookName" id="bookName" value="${book.getBookName()}" /><span id="name"></span><br><br>
        书籍数量 : <input type="text" name="bookCounts" id="bookCounts"value="${book.getBookCounts()}"/><span id="count"></span> <br><br>
        书籍详情 : <input type="text" name="detail" id="bookDetail" value="${book.getDetail()}"/> <span id="detail"></span><br><br>
        <input type="submit" value="添加" id="submit"/>
    </form>



</div>
</body>
</html>
