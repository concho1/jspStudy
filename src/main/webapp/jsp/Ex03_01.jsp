<%--
  Created by IntelliJ IDEA.
  User: chldm
  Date: 2024-03-14
  Time: 오전 11:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--
  Created by IntelliJ IDEA.
  User: chldm
  Date: 2024-03-14
  Time: 오전 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/setting.js"></script>
    <script src="js/plugin.js"></script>
    <script src="js/template.js"></script>
    <script src="js/common.js"></script>
    <script src="js/script.js"></script>
    <script src="js/signUp.js"></script>
    <link rel="stylesheet" href="css/setting.css">
    <link rel="stylesheet" href="css/plugin.css">
    <link rel="stylesheet" href="css/template.css">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<%
    /*
        회원 가입 폼 페이지를 만들고, jsp 페이지에서 데이터를 받아서 화면에 출력해 보세요.
        회원가입 정보 : 아이디, 비밀번호, 이름, 연락처
     */
%>

<%
    response.setContentType("text/html; charset=UTF-8");
    request.setCharacterEncoding("utf-8");
    /*
        회원 가입 폼 페이지를 만들고, jsp 페이지에서 데이터를 받아서 화면에 출력해 보세요.
        회원가입 정보 : 아이디, 비밀번호, 이름, 연락처, 주소, 거주지
     */
    String email = request.getParameter("email").replaceAll("\\s+", "");;
    String pw = request.getParameter("pw").replaceAll("\\s+", "");;
    String name = request.getParameter("name").replaceAll("\\s+", "");;
    String ph = request.getParameter("ph").replaceAll("\\s+", "");;
    String addr1 = request.getParameter("addr1").replaceAll("\\s+", "");;
    String addr2 = request.getParameter("addr2").replaceAll("\\s+", "");;

%>
<!-- [E]thpart-kPLSyBsWWK -->
<main class="th-layout-main ">
    <!-- [S]basic-N37 -->
    <div class="basic-N37" data-bid="HjLT3x37VR" id="asds">
        <div class="contents-inner">
            <div class="contents-container container-md">
                <div class="imageset">
                    <img class="imageset-img" src="https://images.unsplash.com/photo-1682685797208-c741d58c2eff?crop=entropy&amp;cs=tinysrgb&amp;fit=max&amp;fm=jpg&amp;ixid=M3w0OTE2MDd8MXwxfGFsbHwxNnx8fHx8fDJ8fDE3MDkwMTIwMTF8&amp;ixlib=rb-4.0.3&amp;q=80&amp;w=1080" alt="">
                </div>
                <!-- <div class="form-group form-line"> -->
                <div class="form-group form-line">
                    <h1>회원 가입을 축하합니다 !!</h1>
                    <div class="inputset inputset-line inputset-lg inputset-label">
                        <h3><%=email%></h3>
                    </div>
                    <div class="inputset inputset-line inputset-lg inputset-label">
                        <h3><%=pw%></h3>
                    </div>
                    <div class="inputset inputset-line inputset-lg inputset-label">
                        <h3><%=name%></h3>
                    </div>
                    <div class="inputset inputset-line inputset-lg inputset-label">
                        <h3><%=ph%></h3>
                    </div>
                    <div class="inputset inputset-line inputset-lg inputset-label">
                        <h3><%=addr1%></h3>
                    </div>
                    <div class="inputset inputset-line inputset-lg inputset-label">
                        <h3><%=addr2%></h3>
                    </div>
                </div>
                <!--</div>-->

            </div>
        </div>
    </div>
    <!-- [E]basic-N37 -->
</main>
<!-- [S]thpart-GRlSYbSXNM -->

</body>
</html>

</html>
