<%--
  Created by IntelliJ IDEA.
  User: chldm
  Date: 2024-03-14
  Time: 오전 10:53
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
        <h2>로그인 페이지</h2>
        <hr width="30%" color="blue">
        <br></br>
        <!-- 폼에서 받은 정보들을  action="Ex02_01.jsp" 로 넘겨줘라 라는 뜻 ==> 서블릿임 -->
        <form method="get" action="Ex02_01.jsp">
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
                    <td colspan="2" align="center">
                        <input type="submit" value="로그인">&nbsp;&nbsp;&nbsp;
                        <input type="reset" value="취소">
                    </td>
                </tr>
            </table>
        </form>
    </div>

</body>
</html>
