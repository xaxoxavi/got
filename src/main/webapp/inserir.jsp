<%--
  Created by IntelliJ IDEA.
  User: xavi
  Date: 24/05/19
  Time: 18:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%!
    String name = "";
%>

<%
    name = request.getParameter("name");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1><%=name%></h1>
</body>
</html>
