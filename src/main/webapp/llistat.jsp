<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: xavi
  Date: 24/05/19
  Time: 17:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%!
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
%>

<%

    try {
        Class.forName("org.neo4j.jdbc.bolt.BoltDriver").newInstance();
    } catch (InstantiationException e) {
        e.printStackTrace();
    } catch (IllegalAccessException e) {
        e.printStackTrace();
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }

    try {
        connection = DriverManager.getConnection("jdbc:neo4j:bolt://localhost","neo4j", "neo4j");

        statement  = connection.createStatement();

        resultSet = statement.executeQuery("MATCH (c:Character) return c.name, c.id");

    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
<html>
<head>
    <title>Llistat de personatges</title>
</head>
<body>

<ul>
    <%
        while(resultSet.next()){
    %>
    <li>
    <%=resultSet.getString("c.name")%>
    </li>
    <%
        }
    %>
</ul>



</body>
</html>
