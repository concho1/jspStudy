<%--
  Created by IntelliJ IDEA.
  User: chldm
  Date: 2024-03-14
  Time: 오후 12:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String id = request.getParameter("id").replaceAll("\\s+", "");
    String pw = request.getParameter("pw").replaceAll("\\s+", "");

    String db_id = "hong";
    String db_pw = "1234";

    if(id.equals(db_id)){
        if(pw.equals(db_pw)){
            // 회원인 경우
            // 특정한 정보를 넘겨주고 싶은 경우
            request.setAttribute("name", "홍길동");
            request.setAttribute("ph", "010-3785-3890");

            // 정보 넘겨줄 경로 설정
            RequestDispatcher re = request.getRequestDispatcher("Ex07.jsp");

            // 실제 페이지 이동은 포워드로
            re.forward(request, response);
        }else{
            // 비밀번호가 틀린 경우

        }
    }else{
        //일치하는 아이디가 없음
    }

%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1 style="color: red"> 뭔가 틀림 </h1>
</body>
</html>
