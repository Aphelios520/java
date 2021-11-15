<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加书籍</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" src="../../script/jquery-1.7.2.js"></script>
    <script type="text/javascript">

    </script>
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

    <form action="${pageContext.request.contextPath}/book/addBook" method="post">
        书籍名称 : <input type="text" name="bookName" id="bookName" /><span id="name"></span><br><br>
        书籍数量 : <input type="text" name="bookCounts" id="bookCounts"/><span id="count"></span> <br><br>
        书籍详情 : <input type="text" name="detail" id="bookDetail" /> <span id="detail"></span><br><br>
        <input type="submit" value="添加" id="submit"/>
    </form>



</div>

</body>
</html>
