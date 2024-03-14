<%--
  Created by IntelliJ IDEA.
  User: chldm
  Date: 2024-03-13
  Time: 오후 3:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <!--
        문제 : 서블릿을 이용하여 성적을 처리해 보세요.
        입력 받을 내용 : 이름. 국어점수, 영어점수, 수학점수

        출력화면
        이름 :
        국어점수 : 점
        영어점수 : 점
        수학점수 : 점
        총    점 : 점
        평    균 : 점
        학    점 : 학점
    -->
    <div align="center">
        <hr width="30%" color=blue">
        <h2>학생 학점 계산기</h2>
        <hr width="30%" color="blue">
        <br><br>
        <form method="get" action="student-killer">
            <table border="1">
                <tr>
                    <th>학생 이름</th>
                    <td>
                        <label>
                            <input type="text" name="name">
                        </label>
                    </td>
                </tr>
                <tr>
                    <th>학생 국어점수</th>
                    <td>
                        <label>
                            <input type="text" name="korean">
                        </label>
                    </td>
                </tr>
                <tr>
                    <th>학생 영어점수</th>
                    <td>
                        <label>
                            <input type="text" name="english">
                        </label>
                    </td>
                </tr>
                <tr>
                    <th>학생 수학점수</th>
                    <td>
                        <label>
                            <input type="text" name="math">
                        </label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="계산">
                        <input type="reset" value="취소">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
