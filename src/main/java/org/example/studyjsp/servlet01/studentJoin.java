package org.example.studyjsp.servlet01;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name="studentJoin", value = "/studentJoin")
public class studentJoin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("utf-8");

        String id = request.getParameter("id");
        String name =request.getParameter("name");
        String age =request.getParameter("age");
        String ph =request.getParameter("ph");
        String[] subjects = request.getParameterValues("subject");

        PrintWriter out = response.getWriter();
        String outStr = String.format("""
                        <html>
                        <head>
                            <title>Title</title>
                        </head>
                        <body>
                            <div align='center'>
                                <h2> 학생 성적 </h2>
                                    <table border='1'>
                                        <tr>
                                            <th>학생 이름</th>
                                            <td>%s</td>
                                        </tr>
                                        <tr>
                                            <th>학생 국어점수</th>
                                            <td>%s</td>
                                        </tr>
                                        <tr>
                                            <th>학생 나이</th>
                                            <td>%s</td>
                                        </tr>
                                        <tr>
                                            <th>학생 연락처</th>
                                            <td>%s</td>
                                        </tr>
                                        <tr>
                                            <th>전공 과목</th>
                                            <td>
                        
                        """, id, name, age, ph);
        int i = 0;
        for(String str : subjects){
            i++;
            outStr += ("<span> "+i+". "+str+" </span>&nbsp;");
            if(i%2 == 0){
                outStr += "<br>";
            }
        }

        outStr += """           
                                </td>
                            </tr>
                        </table>
                    </div>
                    </body>
                    </html>
                    """;
        out.println(outStr);
    }
}
