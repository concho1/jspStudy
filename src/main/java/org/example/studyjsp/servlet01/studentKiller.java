package org.example.studyjsp.servlet01;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.PriorityQueue;

@WebServlet(name="studentKiller", value = "/student-killer")
public class studentKiller extends HttpServlet {
    static String scoreToValue(int acgScore){
        if(acgScore >= 90){
            return "A+";
        } else if (acgScore >= 80) {
            return "B+";
        } else if (acgScore >= 70) {
            return "C+";
        } else if (acgScore >= 60) {
            return "D+";
        } else if (acgScore >= 50) {
            return "D-";
        } else{
            return "F";
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("utf-8");

        String name = request.getParameter("name");
        String korean =request.getParameter("korean");
        String english =request.getParameter("english");
        String math =request.getParameter("math");
        int totalScore = Integer.parseInt(korean) + Integer.parseInt(english) + Integer.parseInt(math);
        int avgScore = totalScore/3;
        String ScoreValue = scoreToValue(avgScore);
        // 우선순위가 높은 숫자가 먼저 나옴 (큰 숫자)
        PriorityQueue<Integer> pQ = new PriorityQueue<>(Collections.reverseOrder());

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
                        <th>학생 이름: </th>
                        <td>%s</td>
                    </tr>
                    <tr>
                        <th>%s의 국어점수 : </th>
                        <td>%s</td>
                    </tr>
                    <tr>
                        <th>%s의 영어점수 : </th>
                        <td>%s</td>
                    </tr>
                    <tr>
                        <th>%s의 수학점수 : </th>
                        <td>%s</td>
                    </tr>
                    <tr>
                        <th>총   점 : </th>
                        <td>%s</td>
                    </tr>
                    <tr>
                        <th>평   균 : </th>
                        <td>%s</td>
                    </tr>
                    <tr>
                        <th>학   점 : </th>
                        <td>%s</td>
                    </tr>
                </table>
            </div>
        </body>
        </html>
        """, name, name, korean, name, english, name, math, totalScore, avgScore, ScoreValue);
        out.println(outStr);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
