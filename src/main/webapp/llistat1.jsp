<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: xavi
  Date: 24/05/19
  Time: 17:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%!
    Connection connection = null;
%>

<%

    try {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
    } catch (InstantiationException e) {
        e.printStackTrace();
    } catch (IllegalAccessException e) {
        e.printStackTrace();
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }

    try {

        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sakila?user=root&password=test");
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
<html>
<head>
    <title>Llistat de personatges</title>
</head>
<body>

<%
try {
    if (connection.isValid(5)) {
%>
 <p> Connexió establerta!</p>

<%
    } else {
%>
<p> Connexió erronia!</p>
<% }
} catch (Exception ex) {
    ex.printStackTrace();
}%>
</body>
</html>
