package sit.int202.simplefriday.servlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "FavoriteSubjectServlet", value = "/favoriteSubject")
public class FavoriteSubjectServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String id = request.getParameter("id");
        String subjects[] = request.getParameterValues("subjects");

        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>Your Favorite Subject</h1><hr>");
        out.println("Student Id : " + id + "<br>");
        out.println("Student Name : " + name + "<br>");
        out.println("Favorite Subjects : <br>");
        for (String subject : subjects) {
            out.println("&nbsp; &nbsp; - "+ subject + "<br>");
        }
        out.println("<hr>");
        out.println("<a href='favorite_subject.html'> Back </a>");
        out.println("</body></html>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
