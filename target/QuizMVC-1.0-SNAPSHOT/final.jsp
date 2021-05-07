<%--
  Created by IntelliJ IDEA.
  User: sebastiangil
  Date: 7/05/21
  Time: 4:57 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>QuizMVC</title>
    </head>
    <body>
        <h1>The Number Quiz</h1>
        <p> Your current score is: ${sessionScope.quiz.score}
        <p> You have completed the Number Quiz, with a score of  ${sessionScope.quiz.score} out of 5 </p>
    </body>
</html>
