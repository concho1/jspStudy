<%--
  Created by IntelliJ IDEA.
  User: chldm
  Date: 2024-03-14
  Time: 오후 12:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <div align="center">
        <hr width="30%" color="red">
            <h2>페이지 이동 관련 내용</h2>
        <hr width="30%" color="red">
        <br><br>

        <h3>페이지 이동(forward)방식</h3>
        <form method="post" action="Ex06_01.jsp">
            <p>아이디 : <input type="text" name="id"></p>
            <p>비밀번호 : <input type="password" name="pw"></p>

            <input type="submit" value="로그인">
        </form>

        <h3>페이지 이동(redirect)방식</h3>
        <form method="post" action="Ex06_02.jsp">
            <p>아이디 : <input type="text" name="id"></p>
            <p>비밀번호 : <input type="password" name="pw"></p>

            <input type="submit" value="로그인">
        </form>
    </div>
</body>
</html>
