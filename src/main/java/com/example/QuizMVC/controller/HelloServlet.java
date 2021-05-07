package com.example.QuizMVC.controller;

import com.example.QuizMVC.model.QuestionAnswer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {

    public void init() {

    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String ans = request.getParameter("answer");
        QuestionAnswer questionAnswer = (QuestionAnswer) request.getSession().getAttribute("quiz");
        questionAnswer.setUserAns(ans);
        questionAnswer.checkAns();
        questionAnswer.setIndex(questionAnswer.getIndex()+1); //set index to classes
        request.getSession().setAttribute("quiz",questionAnswer);
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }

    public void destroy() {
    }
}