<%--
  Created by IntelliJ IDEA.
  User: chldm
  Date: 2024-03-13
  Time: 오후 12:36
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
        <h2>회원 정보 입력 폼 페이지</h2>
    <hr width="30%" color="red">
    <form method="post" action="join">
        <table border="1">
            <tr>
                <th>회원 아이디</th>
                <td>
                    <label>
                        <input type="text" name="id">
                    </label>
                </td>
            </tr>
            <tr>
                <th>회원 비밀번호</th>
                <td>
                    <label>
                        <input type="text" name="pw">
                    </label>
                </td>
            </tr>
            <tr>
                <th>회원 연락처</th>
                <td>
                    <label>
                        <input type="text" name="ph">
                    </label>
                </td>
            </tr>
            <tr>
                <th>회원 주소</th>
                <td>
                    <label>
                        <input type="text" name="addr">
                    </label>
                </td>
            </tr>
            <tr>
                <th>회원 취미</th>
                <td>
                    <label>
                        <span><input type="checkbox" name="hobby" value="여행">여행</span>
                    </label>
                    <label>
                        <span><input type="checkbox" name="hobby" value="독서">독서</span>
                    </label>
                    <label>
                        <span><input type="checkbox" name="hobby" value="운동">운동</span><br>
                    </label>
                    <label>
                        <span><input type="checkbox" name="hobby" value="게임">게임</span>
                    </label>
                    <label>
                        <span><input type="checkbox" name="hobby" value="코딩">코딩</span>
                    </label>
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        <span><input type="submit" value="회원가입"></span>&nbsp;&nbsp;&nbsp;
                    </label>
                    <label>
                        <span><input type="reset" value="다시작성"></span>
                    </label>
                </td>
            </tr>
        </table>
    </form>
</div>

</body>
</html>
