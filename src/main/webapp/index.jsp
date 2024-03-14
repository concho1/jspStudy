<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <style>
        .container {
            display: flex;
        }

        .left, .right {
            flex: 1; /* 두 요소가 동일한 너비를 가지도록 설정 */
            padding: 20px; /* 내용과 테두리 사이의 여백 */
        }

        .left {
            background-color: #ffffff;
        }

        .right {
            background-color: #ffffff;
        }
    </style>
    <title>JSP - Hello World</title>
    <style>
        tr{
            width: 50%;
        }
        table{
            width: 60%;
        }
    </style>
</head>
<body>
    <h1><%= "Hello World!" %></h1>
    <a href="hello-servlet">Hello Servlet</a><br>
    <div class="container">
        <div align="center" class="left">

            <h2> servlet 포멧 </h2>
            <hr>
            <table border='1'>
                <tr>
                    <th>Ex01.jsp</th>
                    <td><a href="servlet/Ex01.jsp">Ex01.jsp</a></td>
                </tr>
                <tr>
                    <th>Ex02.jsp</th>
                    <td><a href="servlet/Ex02.jsp">Ex02.jsp</a></td>
                </tr>
                <tr>
                    <th>Ex03.jsp</th>
                    <td><a href="servlet/Ex03.jsp">Ex03.jsp</a></td>
                </tr>
                <tr>
                    <th>Ex04.jsp</th>
                    <td><a href="servlet/Ex04.jsp">Ex04.jsp</a></td>
                </tr>
                <tr>
                    <th>Ex05.jsp</th>
                    <td><a href="servlet/Ex05.jsp">Ex05.jsp</a></td>
                </tr>
                <tr>
                    <th>Ex06.jsp</th>
                    <td><a href="servlet/Ex06.jsp">Ex06.jsp</a></td>
                </tr>
                <tr>
                    <th>Ex07.jsp</th>
                    <td><a href="servlet/Ex07.jsp">Ex07.jsp</a></td>
                </tr>
                <tr>
                    <th>Ex08.jsp</th>
                    <td><a href="servlet/Ex08.jsp">Ex08.jsp</a></td>
                </tr>
            </table>
        </div>

        <div align="center" class="right">

            <h2> jsp 포멧 </h2>
            <hr>
            <table border='1'>
                <tr>
                    <th>test.jsp</th>
                    <td><a href="jsp/test.jsp">test.jsp</a></td>
                </tr>
                <tr>
                    <th>Ex01.jsp</th>
                    <td><a href="jsp/Ex01.jsp">Ex01.jsp</a></td>
                </tr>
                <tr>
                    <th>Ex02.jsp</th>
                    <td><a href="jsp/Ex02.jsp">Ex02.jsp</a></td>
                </tr>
                <tr>
                    <th>Ex03.jsp</th>
                    <td><a href="jsp/Ex03.jsp">Ex03.jsp</a></td>
                </tr>
                <tr>
                    <th>Ex04.jsp</th>
                    <td><a href="jsp/Ex04.jsp">Ex04.jsp</a></td>
                </tr>
                <tr>
                    <th>Ex05.jsp</th>
                    <td><a href="jsp/Ex05.jsp">Ex05.jsp</a></td>
                </tr>
                <tr>
                    <th>Ex06.jsp</th>
                    <td><a href="jsp/Ex06.jsp">Ex06.jsp</a></td>
                </tr>
                <tr>
                    <th>Ex07.jsp</th>
                    <td><a href="jsp/Ex07.jsp">Ex07.jsp</a></td>
                </tr>
            </table>
        </div>
    </div>
</body>
</html>