<%@ page import="com.example.QuizMVC.model.QuestionAnswer" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>QuizMVC</title>
    </head>
    <body>
        <h1>The Number Quiz</h1

        <%
            if (request.getSession().getAttribute("quiz") != null) {
                QuestionAnswer questionAnswer = (QuestionAnswer) request.getSession().getAttribute("quiz");

        %>
        <p> Your current score is: <%= questionAnswer.getScore() %>
        </p>
        <p>Guess the next number in the sequence</p>
        <p><%= questionAnswer.getQuestions()%>
        </p>


        <% } else {
            QuestionAnswer questionAnswer = new QuestionAnswer();
            request.getSession().setAttribute("quiz", questionAnswer);
        %>

        <p> Your current score is: <%= questionAnswer.getScore() %>
        </p>
        <p>Guess the next number in the sequence</p>
        <p><%= questionAnswer.getQuestions()%>
        </p>


        <%
            }
        %>
        <form action='hello-servlet' method='get'>
            <div>Your answer: <input type='text' name='answer'></div>
            <br><input type='submit'></form>

    </body>
</html>