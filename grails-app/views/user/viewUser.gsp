<%--
  Created by IntelliJ IDEA.
  User: dhiraj
  Date: 8/23/2018
  Time: 9:32 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="container">
            <!--<div class="navbar-header">-->
            <!--<a class="navbar-brand" href="#">Dhiraj</a>-->
            <!--</div>-->
            <ul class="nav navbar-nav">
                <li class="active"><g:link action="home" controller="user">Home</g:link></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Contact</a></li>
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">My Profile <span class="caret"></span></a>

                    <ul class="dropdown-menu">
                        <li><a href="#">friends</a></li>
                        <li><a href="#">photos</a></li>
                        <li><a href="#">settings</a></li>
                    </ul>

                </li>

                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Database Operations <span class="caret"></span></a>

                    <ul class="dropdown-menu">
                        <li><g:link action="addUser" controller="user">Add User</g:link></li>
                        <li><g:link action="viewUser" controller="user">View User</g:link></li>
                        <li><g:link action="deleteUser" controller="user">Delete User</g:link></li>
                        %{--<li><a href="#">settings</a></li>--}%
                    </ul>

                </li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <li><g:link action="logout" controller="user">Logout</g:link></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <p>
    <fieldset>
    <legend>View Users</legend>

    ${message}

    <g:each in="${userList}" var="user">
        <li>${user.userName}</li>
        <li>${user.password}</li>
        <li>${user.role}</li>
        <li>${user.emailAddress}</li>
    </g:each>
    </fieldset>
</p>
</div>

</body>
</html>