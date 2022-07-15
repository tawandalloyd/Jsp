package com.example.demohello;

import java.io.*;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;


    public void init() {
        message = "Hello World!";

    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("</body></html>");



        HttpSession session = request.getSession();
        session.setAttribute("MyAttribute", "test value");

        // response.sendRedirect("session.jsp");
        RequestDispatcher dispatcher = request.getRequestDispatcher("/session.jsp");
        dispatcher.forward(request, response);



    }

    public void destroy() {
    }
}