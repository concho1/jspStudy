package org.example.studyjsp.servlet01;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;


// signinServlet이라는 이름의 서블릿을 정의하고, /signin-servlet이라는 경로로 들어오는 요청을 이 서블릿이 처리하도록 지정합니다.
@WebServlet(name="signinServlet", value = "/signin-servlet")
public class SigninServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //  입력된 정보 중에 한글 깨짐 현상을 방지하기 위해선 아래와 같이 해야 함
        //  request.setCharacterEncoding("utf-8");  요즘은 안써도 ㄱㅊ함 대신 응답은 써줘야 함
        response.setContentType("text/html; charset=UTF-8");

        String member_id = request.getParameter("id");
        String member_pw = request.getParameter("pw");
        String member_name = request.getParameter("name");
        String member_ph = request.getParameter("ph");
        String member_addr= request.getParameter("addr");

        System.out.println(member_id);
        System.out.println(member_pw);
        System.out.println(member_name);
        System.out.println(member_ph);
        System.out.println(member_addr);

        PrintWriter out = response.getWriter();
        String outStr = String.format("""
                        <html>
                        <head>
                            <title>Title</title>
                        </head>
                        <body>
                            <div align='center'>
                        <h2> 회원 정보 </h2>
                            <table border='1'>
                                <tr>
                                    <th>회원 아이디</th>
                                    <td>%s</td>
                                </tr>
                                <tr>
                                    <th>회원 이름</th>
                                    <td>%s</td>
                                </tr>
                                <tr>
                                    <th>회원 연락처</th>
                                    <td>%s</td>
                                </tr>
                                <tr>
                                    <th>회원 주소</th>
                                    <td>%s</td>
                                </tr>
                            </table>
                        </div>
                        </body>
                        </html>
                        """, member_id, member_name, member_ph, member_addr);

        out.println(outStr);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
