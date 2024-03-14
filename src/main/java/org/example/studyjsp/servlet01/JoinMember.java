package org.example.studyjsp.servlet01;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "join", value = "/join")
public class JoinMember extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String id = request.getParameter("id");
        String pw = request.getParameter("pw");
        String ph = request.getParameter("ph");
        String addr = request.getParameter("addr");
        String[] hobbyArr = request.getParameterValues("hobby");

        System.out.println(id);
        for(String str : hobbyArr){
            System.out.println(str);
        }

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
                                        <tr>
                                            <th>회원 취미</th>
                        
                        """, id, pw, ph, addr);
        for(String str : hobbyArr){
            outStr += ("<td>"+str+"</td>");
        }

        outStr += """
                            </tr>
                        </table>
                    </div>
                    </body>
                    </html>
                    """;
        out.println(outStr);

    }
}
