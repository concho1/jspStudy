package org.example.studyjsp.servlet01;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name="AdderServlet", value = "/adder")
public class AdderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("utf-8");

        int num1 = Integer.valueOf(request.getParameter("num1"));
        int num2 = Integer.valueOf(request.getParameter("num2"));


        PrintWriter out = response.getWriter();
        String outStr = String.format("""
                <html>
                <head>
                    <title>Title</title>
                </head>
                <body>
                    <div align="center">
                        <h2>두 수의 합은 >>> %s</h2>
                    </div>
                </body>
                </html>
                        """, num1 + num2);
        out.println(outStr);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
