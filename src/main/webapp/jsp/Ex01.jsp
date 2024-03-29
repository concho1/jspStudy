<%@ page import="java.util.Calendar" %><%--
  Created by IntelliJ IDEA.
  User: chldm
  Date: 2024-03-14
  Time: 오전 10:11
  To change this template use File | Settings | File Templates.
  ===============================================================================================================================

	    지시어(디렉티브) : jsp 페이지에 대한 설정 정보를 지정하는 공간.
	    1. <% page %>
	       - jsp 페이지에 지원되는 속성들을 정의하는 공간.
	       - jsp 페이지에 대한 정보를 지정하는 공간.
	       - 어떻게 처리해야 하는지, 전달하기 위한 내용도
	         담고 있는 공간.
	       - 클라이언트 요청에 JSP 페이지가 실행될 때
	         필요한 정보를 JSP 컨테이너(톰캣)에게 알려주는
	         역할을 함.

	    2. <% include %>
	       - 현재 페이지에 다른 문서(JSP, HTML)를 가져와서
	         내용을 컴파일 할 때 사용되는 디렉티브.
	         형식) <% include file="포함할 파일의 url 경로" %>
	       - 여러 jsp 페이지에서 공통적으로 포함하는 내용이 있을 때
	         이러한 내용을 매번 입력하지 않고 별도의 파일에 저장해
	         두었다가 jsp 파일에 삽입할 수 있음. 이 때 지정한 파일에
	         해당 jsp 파일을 삽입하도록 하는 것이 include 지시자임.
	       - include 지시어를 사용한 jsp 페이지가 컴파일
	         되는 과정에서 include 되는 jsp 페이지의 소스
	         내용을 그대로 포함해서 컴파일을 함.
	       - 즉, 복사 & 붙여넣기 방식으로 두 개의 파일이
	         하나의 파일로 구성이 된 후 같이 컴파일이 됨.

	    3. <% taglib %>
	       - 사용할 태그 라이브러리를 지정하는 디렉티브.
	       - EL / JSTL 언어 사용 시 적용되는 디렉티브.
	         (추후 수업 진행 예정)

	 ==========================================
	 1. 페이지 지시어(디렉티브)
	    <%@ page language="java" contentType="text/html;
	             charset=UTF-8" pageEncoding="UTF-8"%>

	    * language="java" : - 해당 jsp 페이지에서 사용할 언어를 지정하는
	                          속성. 만약 이 속성을 지정하지 않으면
	                          기본값으로 Java가 지정됨.
	                        - 스크립트릿이나 표현식, 선언부를 작성할 때
	                          사용할 프로그래밍 언어를 지정함.
	                          즉, jsp 페이지에 삽입되는 코드의 스크립팅
	                          언어를 지정.
	    * contentType : - jsp 페이지의 내용이 어떤 형태로 출력을 할 것인지
	                      MIME 형식으로 브라우저에게 알려주는 역할을 하는 속성임.
	                    - 지정할 속성 값으로는 tex/html, text/plain,
	                      text/xml, text/gif 등 여러가지 값이 있으며,
	                      기본값은 text/html의 MIME 형식임.
	                      ==> jsp 페이지의 내용을 어떤 형태로 출력할지를
	                          웹 브라우저에게 알려주는 역할.
	    * charset : - 문자(한글) 설정(UTF-8, EUC-KR)
	                  ==> 설정하지 않으면 기본값인 ISO-8859-1 을 사용함.
	    * import : - 다른 패키지에 있는 클래스를 가져다가 사용할 때 지정.
	    * session : - jsp 페이지가 HttpSession 속성의 사용 여부를 지정.
	                - 이 속성 값은 true와 false로 나누어져 있음.
	                - true일 경우에는 현재 페이지가 세션을 유지하고, 세션이
	                  존재하지 않을 경우에는 새로운 세션을 생성하여 연결되며,
	                  false일 경우에는 세션에 연결이 되지 않음.
	                - 이 속성의 기본값은 true임.
	                  형식) <%@ page session="true" %>
	    * isErrorPage : - 현재 jsp 페이지가 에러 처리를 담당하는 페이지인지
	                      아닌지의 여부를 지정할 때 사용되는 속성임.
	                    - 요청된 현재의 페이지가 예외를 발생하여 에러 처리를
	                      위해서 만들어지는 에러 페이지라면 isErrorPage
	                      속성 값을 "true"로 설정해야 함.
	                    - 이 속성의 기본값은 "false"로, 에러를 처리하지
	                      않는 페이지라면 설정할 필요가 없음.
	    * errorPage : - jsp 페이지를 처리하는 도중에 페이지에서 예외가
	                    발생할 경우 자신이 예외를 처리하지 않고, 다른
	                    페이지에서 처리하도록 지정할 수 있는 속성임.
	                  - 속성 값으로는 직접 예외를 처리할 페이지의 로컬
	                    url을 적어주면 됨.
	                  - 즉, 에러가 발생했을 때 보여줄 에러 페이지를 지정.
	    - pageEncoding="UTF-8" : 현재 페이지의 문자(한글) 설정.
	                             출력할 데이터의 문자 집합을 지정함.



     ★★★★★★★★★★★★★★★★★★★★
    JSP 페이지의 구성 요소
    1. 스크립트릿
       - 가장 일반적으로 JSP 페이지에서 많이 쓰이는 스크립트 요소.
       - 주로 프로그래밍의 로직을 기술할 때 많이 사용이 됨.
       - JSP 페이지에서 자바 코드가 작성되는 공간.
         형식)
             <%
                 자바 코드;
             %>
    2. 표현식
       - 일반적으로 JSP 페이지에서 자바의
         System.out.println() 과 유사하게 사용이 됨.
       - 데이터를 출력할 때 사용이 됨.
         형식)  <%=값 또는 변수명 또는 수식 %>

    3. 선언부
       - 일반적으로 JSP 페이지에서 자바의 멤버변수 또는
         멤버 메서드를 선언할 때 사용이 됨.
         형식)
             <%!
                변수 선언 또는 메서드 선언;
             %>
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        int var = 10;

        Calendar cal = Calendar.getInstance();
        int year = cal.get(Calendar.YEAR);
        int month = cal.get(Calendar.MONTH) + 1;
        int day = cal.get(Calendar.DAY_OF_MONTH);
    %>
    <p>변수 값 = <%=var%></p>
    <p>오늘의 날짜 : <%=year %>년 <%=month %>월 <%=day %>일 입니다.</p>

    <h2>1 부터 100 까지 더해보자</h2>
    <%
        int sum = 0;
        for(int i =1; i<=100; i++) {
            sum += i;
        }
    %>
    <p>1 부터 100 까지의 합 = <%=sum%></p>
</body>
</html>
