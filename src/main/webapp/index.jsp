<%@ page import="com.example.QuizMVC.model.QuestionAnswer" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>QuizMVC</title>
    </head>
    <body>
        <h1>The Number Quiz</h1>

        <p> Your current score is: ${sessionScope.quiz.score}   </p>
        <p>Guess the next number in the sequence ${sessionScope.quiz.questions} </p>

        <form action='hello-servlet' method='get'>
            <div>Your answer: <input type='text' name='answer'> </div>
            <br><input type='submit'>
        </form>

    </body>
</html>