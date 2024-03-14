<%--
  Created by IntelliJ IDEA.
  User: chldm
  Date: 2024-03-13
  Time: 오전 11:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div align="center">
<hr width="30%" color="blue">
<h2>회원가입 페이지</h2>
<hr width="30%" color="blue">
<br></br>
<!-- 폼에서 받은 정보들을  action="LoginServlet" 로 넘겨줘라 라는 뜻 ==> 서블릿임 -->
<form action="signin-servlet">
    <table border="1">
        <tr>
            <th>아이디</th>
            <td>
                <input type="text" name="id">
            </td>
        </tr>
        <tr>
            <th>비밀번호</th>
            <td>
                <input type="text" name="pw">
            </td>
        </tr>
        <tr>
            <th>이 름</th>
            <td>
                <input type="text" name="name">
            </td>
        </tr>
        <tr>
            <th>회원 연락처</th>
            <td>
                <input type="text" name="ph">
            </td>
        </tr>
        <tr>
            <th>회원 주소</th>
            <td>
                <input type="text" name="addr">
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="회원가입">&nbsp;&nbsp;&nbsp;
                <input type="reset" value="다시작성">
            </td>
        </tr>
    </table>
</form>
</div>

</body>
</html>
