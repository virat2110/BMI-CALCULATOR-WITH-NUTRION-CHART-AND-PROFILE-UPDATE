<%@page import="com.controller.LoginData"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.entity.Calorie" %>
<%@ page import="java.util.*" %>
<%@ page import="com.model.*" %>

<%
boolean t = LoginData.redir;
session.setAttribute("res", BmiModel.res);

if(!t) {
	
	response.sendRedirect(request.getContextPath() + "/login.jsp");
}
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calorie data</title>

<style>
body{
  font-family: 'Open Sans', sans-serif;
  background: rgb(19,91,176);
  background: linear-gradient(90deg, rgba(19,91,176,1) 0%, rgba(33,141,175,1) 55%, rgba(0,212,255,1) 100%);
  margin: 0 auto 0 auto;  
  width:100%; 
  text-align:center;
  
}
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 50%;
  margin-left: 400px;
  margin-top: 30px;
  
}

#customers td, #customers th {
  border: 2px solid gray;
  padding: 8px;

  
}

#customers tr:nth-child(even){background-color: white;}
#customers tr:nth-child(odd){background-color: pink;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}

</style>


</head>
<body>
<%@include file="navb.jsp" %>

  <%
  CalorieModel cm = new CalorieModel();
  List<Calorie> l = cm.details();
  %>
  <table  border="1" id="customers">
    <tr>
      <th> ID</th>
      <th> Item</th>
      <th> Quantity</th>
      <th> Calorie</th>
    </tr>
    
    <% for(Calorie c:l) { %>
      <tr>
        <td><%=c.getId() %></td>
        <td><%=c.getItem() %></td>
        <td><%=c.getQuantity() %></td>
        <td><%=c.getCalorie()  %></td>
      </tr>
      <% } %>
    
  </table>
</body>
</html>