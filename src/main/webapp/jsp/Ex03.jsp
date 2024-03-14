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
    <script>
        function my_check_email(f){
            if(f.email.value === ""){
                alert("이메일을 입력해주세요.");
                return false;
            }
        }
    </script>
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
                <form action="Ex03_01.jsp" method="get" class="form-group form-line">
                    <div class="inputset inputset-line inputset-lg inputset-label">

                        <label>
                            <h6 class="inputset-tit">이메일(아이디)<span>* </span></h6>
                            <button onclick="my_check_email(this.form)" class="btnset btnset-icon icon-right btnset-text">&nbsp;&nbsp;중복 확인하기</button>
                            <input type="text" name="email" class="inputset-input form-control" placeholder="이메일을 입력해주세요." aria-label="이메일" required="">
                        </label>
                    </div>
                    <div class="inputset inputset-line inputset-lg inputset-label">
                        <label>
                            <h6 class="inputset-tit">비밀번호<span>*</span>
                            </h6>
                            <input type="text" name="pw" class="inputset-input form-control" placeholder="비밀번호(5자이상 20자 이하)를 입력해주세요." aria-label="내용" required="">
                        </label>
                    </div>
                    <div class="inputset inputset-line inputset-lg inputset-label">
                        <label>
                            <h6 class="inputset-tit">이름<span>*</span>
                            </h6>
                            <input type="text" name="name" class="inputset-input form-control" placeholder="이름을 입력해주세요." aria-label="내용" required="">
                        </label>
                    </div>
                    <div class="inputset inputset-line inputset-lg inputset-label">
                        <label>
                            <div class="inputset inputset-line inputset-lg inputset-label">
                                <label>
                                    <h6 class="inputset-tit">연락처<span>*</span>
                                    </h6>
                                    <input type="text" name="ph" class="inputset-input form-control" placeholder="연락처를 입력해주세요." aria-label="내용" required="">
                                </label>
                            </div>
                        </label>
                    </div>
                    <div class="inputset inputset-line inputset-lg inputset-label">
                        <label>
                            <div class="inputset inputset-line inputset-lg inputset-label">
                                <label>
                                    <h6 class="inputset-tit">주소<span>*</span>
                                    </h6>
                                    <input type="text" name="addr1" class="inputset-input form-control" placeholder="주소를 입력해주세요." aria-label="내용" required="">
                                </label>
                            </div>
                        </label>
                    </div>
                    <div class="inputset inputset-line inputset-lg inputset-label">
                        <label>
                            <h6 class="inputset-tit">거주지<span>*</span></h6>
                        </label>
                        <div class="checkset-wrap">
                            <div class="checkset1" style="width: 70px">
                                <input id="s" class="checkset-input input-fill input-round" type="radio" name="addr2" value="s" checked>
                                <label class="checkset-label" for="s"></label>
                                <span class="checkset-text">서울</span>
                            </div>
                            <div class="checkset1" style="width: 70px">
                                <input id="g" class="checkset-input input-fill input-round" type="radio"  name="addr2" value="g">
                                <label class="checkset-label" for="g"></label>
                                <span class="checkset-text">경기도</span>
                            </div>
                            <div class="checkset1" style="width: 70px">
                                <input id="b" class="checkset-input input-fill input-round" type="radio" name="addr2" value="b" checked>
                                <label class="checkset-label" for="b"></label>
                                <span class="checkset-text">부산</span>
                            </div>
                        </div>
                    </div>
                    <div class="form-btn">
                        <input class="btnset" type="submit" value="회원가입"></input>
                    </div>
                </form>
                <!--</div>-->

            </div>
        </div>
    </div>
    <!-- [E]basic-N37 -->
</main>
<!-- [S]thpart-GRlSYbSXNM -->

</body>
</html>
