<%--
  Created by IntelliJ IDEA.
  User: chldm
  Date: 2024-03-14
  Time: 오후 12:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 구구단을 웹 브라우저에 출력해 보자
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        for(int i=2; i<= 9; i++){
    %>
        <br>*** <%=i%> 단 *** <br>
        <%
            for(int j=1; j<=9; j++){
        %>
            <%=i%> x <%=j%> = <%=i*j%> <br>
        <%
            }
        %>
    <%
        }
    %>


</body>
</html>
