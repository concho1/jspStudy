package org.example.studyjsp;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

/*
 * - 서블릿은 자바로 만들어 졌으므로 당연히 클래스들 간의 계층 구조를
 *   가짐.
 *
 *      Servlet              ServletConfig
 *         ↑                      ↑
 *         |                      |
 *         --- GenericServlet  ---
 *                   ↑
 *                   |
 *                HttpServlet
 *
 * - 서블릿 API는 Servlet과 ServletConfig 인터페이스를 구현해
 *   제공함. GenericServlet 추상 클래스가 이 두 인터페이스의
 *   추상 메서드를 구현.
 *   그리고 이 GenericServlet을 다시 HttpServlet 클래스가
 *   상속을 받음.
 *
 * - 서블릿 API 를 구성하는 각 객체들의 특징.
 *   1. Servlet 인터페이스
 *      - javax.servlet 패키지에 선언이 되어 있음.
 *      - Servlet 관련 추상 메서드를 제공함.
 *      - init(), service(), destroy(),
 *        getServletInfo(), getServletConfig()
 *        추상 메서드가 선언되어 있음.
 *
 *   2. ServletConfig 인터페이스
 *      - javax.servlet 패키지에 선언이 되어 있음.
 *      - Servlet 관련 추상 메서드를 제공함.
 *      - getInitParameter(), getInitParameterNames(),
 *        getServletContext(), getServletName()
 *        추상 메서드가 선언되어 있음.
 *
 *   3. GenericServlet 추상 클래스.
 *      - javax.servlet 패키지에 선언이 되어 있음.
 *      - 상위 두 인터페이스를 구현하여 일반적인 서블릿 기능을 구현한
 *        클래스.
 *      - GenericServlet을 상속을 받아 구현한 사용자 서블릿은
 *        사용되는 프로토콜에 따라 service() 메서드를 오버라이딩
 *        하여 구현함.
 *
 *   4. HttpServlet 클래스
 *      - javax.servlet 패키지에 선언이 되어 있음.
 *      - GenericServlet 을 상속받아 HTTP 프로토콜을 사용하는
 *        웹 브라우저에서 서블릿 기능을 수행함.
 *      - 웹 브라우저 기반 서비스를 제공하는 서블릿을 만들 때 상속받아
 *        사용함.
 *      - 요청 시 service() 가 호출되면 요청 방식에 따라
 *        doGet()나 doPost() 메서드가 차례로 호출이 됨.
 */

/*
 * 서블릿 구동 절차
 * 1. 클라이언트의 요청이 들어오면 서블릿 컨테이너는 해당 서블릿을 찾음.
 *
 * 2. 만약 서블릿이 없다면, 서블릿 클래스를 로딩하고, 인스터스를 준비 후에
 *    해당 서블릿의 생성자를 호출하여 인스턴스를 생성하고, 서블릿 초기화
 *    메서드인 init() 메서드를 호출함.
 *
 * 3. 그 후에 클라이언트 요청을 처리하는 service() 메서드를 호출함.
 *    메서드의 이름을 보면 용도를 알 수 있듯이 클라이언트의 요청에 대해
 *    서비스를 제공하겠다는 의미를 가지고 있음.
 *
 * 4. service() 메서드에서 만든 결과를 HTTP 프로토콜에 맞추어 클라이언트에
 *    응답하는 것으로 요청 처리를 완료함.
 *
 * 5. 만약 시스템 운영자가 서블릿 컨테이너를 종료하거나, 웹 애플리케이션을
 *    종료한다면
 *
 * 6. 서블릿 컨테이너는 종료되기 전에 마무리 작업을 할 수 있도록
 *    생성된 모든 서블릿에 대해 destroy() 메서드를 호출함.
 *
 * 서블릿의 생명주기(Life Cycle)
 * 1. init()
 *    - 서블릿 컨테이너가 서블릿을 생성한 후 초기화 작업을 수행하기 위해서
 *      호출되는 메서드임. 서블릿이 클라이언트의 요청을 처리하기 전에 준비할
 *      작업이 있다면 이 메서드에 작성을 하면 됨.
 *
 * 2. service()
 *    - 클라이언트가 요청할 때 마다 호출되는 메서드임. 실질적으로 서비스 작업을
 *      수행하는 메서드임. 바로 이 메서드에 해야 할 일을 작성하면 됨.
 *      요청에서 method 방식에 따라서 doGet() 메서드나 doPost() 메서드를
 *      호출하여 비지니스 로직을 수행함.
 *
 * 4. destroy()
 *    - 서블릿 컨테이너가 종료되거나 웹 애플리케이션이 종료될 때 호출이 되는
 *      메서드임. 따라서 이 메서드에는 서비스 수행을 위해 확보되었던 자원을
 *      해제한다거나 데이터를 저장하는 등의 마무리 작업을 진행함.
 */

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("</body></html>");
    }

    public void destroy() {
    }
}