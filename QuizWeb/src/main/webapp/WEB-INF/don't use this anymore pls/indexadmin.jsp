<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>indexAdmin</title>
</head>
<body>
    <div class = "container">
        <div class="header">

        </div>

        <div class="mainbody">
            <form:form class="login" action="connexion" method="post" modelAttribute="connexion">
                <div>
                    <label>ADRESS ENAMIL</label>
                    <form:input path="mail" type="text"/>
                </div>
                <div>
                    <label>MOT DE PASSE</label>
                    <form:input path="mdp" type="password"/>
                </div>
                <input type="submit" value="CONNEXION">
            </form:form>
         
        </div>

        <div class="footer">

        </div>
    </div>
</body>
</html>