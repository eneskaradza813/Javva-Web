<%-- 
    Document   : index
    Created on : Jun 26, 2020, 9:46:52 PM
    Author     : mesa
--%>

<%@page import="java.time.LocalDate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
           class User{
       public int id;
       public String fName;
       public String lName;
        public User(int id, String fName, String lName){
      this.id = id;
      this.fName = fName;
      this.lName = lName;
  }
}
       User[] users ={
       new User(1, "Peter", "Jones") ,
        new User(2, "Sarah", "Simmons") ,
        new User(3, "Ruth", "Davis"),};
        %>
   <table border="1">
 <tr><td>id</td><td>First name</td><td>Last name</td></tr>
 <%
  for(int i=0;i<users.length;i++)
  {
   %>
    <tr><td><%= users[i].id %></td><td><%= users[i].fName %></td><td><%= 
users[i].lName %></td></tr>
   <%
  }
 %>
</table>     
       
    </body>
</html>
