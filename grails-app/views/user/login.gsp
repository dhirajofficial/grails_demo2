<%--
  Created by IntelliJ IDEA.
  User: dhiraj
  Date: 8/22/2018
  Time: 7:52 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>

<g:form action="check" controller="user">
    Name: <input type="text" name="userName"><br><br>
    Password: <input type="text" name="password"><br><br>
    %{--<g:link controller="user" action="check">login</g:link>--}%
    <g:submitButton name="login"></g:submitButton>
</g:form>

</body>
</html>