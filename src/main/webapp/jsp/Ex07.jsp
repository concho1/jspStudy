<%--
  Created by IntelliJ IDEA.
  User: chldm
  Date: 2024-03-14
  Time: 오후 1:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div align="center">
    <hr width="40%" color="marmoon">
    <h3>메인 페이지</h3>
    <hr width="40%" color="marmoon">
    <br><br>

    <h3>
        <%=request.getAttribute("name")%> 님 환영합니다. <br>
        <br>
        연락처 : <%=request.getAttribute("ph")%>
    </h3>
</div>
</body>
</html>
