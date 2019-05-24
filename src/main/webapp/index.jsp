
<%!
    String[] messages = {"Hello World!","Hello Joan!", "Hello Xavi!"};
%>

<html>
    <body>
    <%
        for (int i = 0; i < messages.length; i++){
            if (messages[i].contains("Xavi")) {
    %>

        <h2>
            <%
                    out.print(messages[i]);
            %>
        </h2>
    <%      }
        } %>
    </body>
</html>
