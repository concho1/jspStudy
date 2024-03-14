<%--
  Created by IntelliJ IDEA.
  User: chldm
  Date: 2024-03-14
  Time: 오전 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // String user_id = request.getParameter("id");
    String user_pw = request.getParameter("pw");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <p>입력받은 아이디 <%=request.getParameter("id")%></p>
    <p>입력받은 아이디 <%=user_pw%></p>
</body>
</html>
