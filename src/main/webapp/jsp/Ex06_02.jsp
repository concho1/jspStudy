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

            // 페이지 이동 (정보 없이 이동)
            response.sendRedirect("Ex08.jsp");
        }else{
            // 비밀번호가 틀린 경우
            System.out.println("비밀번호가 틀립니다.~~~");
        }
    }else{
        //일치하는 아이디가 없음
        System.out.println("아이디가 틀리거나 회원이 아닙니다.~~~");
    }

%>
<html>
<head>
    <title>Title</title>
</head>
<body>
</body>
</html>
