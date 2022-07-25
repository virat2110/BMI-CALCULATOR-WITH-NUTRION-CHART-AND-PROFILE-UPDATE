<%@page import="com.model.UserModel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
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
<title>Profile</title>
</head>
<body>

<%
UserModel um = new UserModel();
List<String> list = um.view();
%>
<%
if(list.get(1).equals(" ")) {
	UserModel.ack = "Message: First update your profile";
	response.sendRedirect("insertUser.jsp");
}
%>
<%@include file="navb.jsp" %>
<div class="container">
<div class="vc-columns">

</div>
<div class="data-container">
<div class="vc-columns">
<h3><%=list.get(0) %></h3>
<h3>Gender: <%=list.get(2) %></h3>
<h3>Mobile: <%=list.get(3) %></h3>
<h3>Height: <%=list.get(4) %> Foot</h3>
<h3>Weight: <%=list.get(5) %> Kg</h3>
<h3>Age: <%=list.get(1) %> Years</h3>
<h3>BMI: <%=list.get(6) %></h3>
</div>
<div class="image">
<img alt="no-image" src="profile.png" />
</div>
</div>

</div>


</body>

<style>
body{
  font-family: 'Open Sans', sans-serif;
  background: rgb(19,91,176);
  background: linear-gradient(90deg, rgba(19,91,176,1) 0%, rgba(33,141,175,1) 55%, rgba(0,212,255,1) 100%);
  margin: 0 auto 0 auto;  
  width:100%; 

  
}
.data-container{
	display: flex;
}
.container {
    background-color: #8093f1;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: 0 0;
	color: black;
	position: relative;
    border-radius: 15px;
	border-style: solid;
	border-color: #8093f1;
	box-shadow: 15px 15px 15px rgba(0, 0, 0, 0.7);
    display: flex;
    max-width: 600px;
    margin-left: 450px;
    max-height: 300px;
    margin-top: 100px;
    padding: 50px;
    padding-top: 0px;
    font-style: bolder;
    
}
.vc-columns {
    padding: 10px;
    bacground-color: red;
}
.image{
margin-top: -40px;
width: 40%;
}
  

</style>


</html>