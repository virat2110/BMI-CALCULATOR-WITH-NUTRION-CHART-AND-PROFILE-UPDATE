<%@page import="com.model.UserModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%
boolean t = LoginData.redir;

if(!t) {
	
	response.sendRedirect(request.getContextPath() + "/login.jsp");
}
%>   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fredoka&family=Lato&display=swap" rel="stylesheet">
     
</head>
<body>
		<%@include file="navb.jsp" %>
		<div class="cont">




    <form  action="InsertUser" method="get">
    
    <%
         session.setAttribute("ack", UserModel.ack);
         %>
        
         <h5 style="text-align: left;margin-left:40px;margin-bottom:-60px; font-size:18px; color:white;">${ack}</h5>
          <%
        UserModel.ack = null;
        %>
    
    
        <div class="box">
        <h1>Profile</h1>
        
        <input type="number" name="t1"  class="email" placeholder="mobile" required/>
         <input type="number" name="t2"  class="email" placeholder="age" required/>
          <input type="text" name="t3"  class="email" placeholder="gender" required/>
          <input type="number" step="any"  name="t4"  class="email" placeholder="height(foot)" required/>
          <input type="number" step="any" name="t5"  class="email" placeholder="weight(kg)" required/>
          
        
        <input type = "submit" value="Save" class="btn"/>
          
          
        </div>
          
        </form>
         <div class="image">
                <img src="2.png" alt="image" />
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
  text-align:center;
  margin: 20px 0px 20px 0px; 
}

.cont{
display: flex;
margin-left:250px;
}
.image {
    width: 50%;
    margin-top: 50px;
    margin-left: 300px;
   
}

p{
  font-size:12px;
  text-decoration: none;
  color:#ffffff;
}

h1{
  font-size:1.5em;
  color:#525252;
}

.box{
  background:white;
  width:300px;
  border-radius:6px;
  margin-top: 100px;
  margin-left: 50px;
  padding:20px 0px 100px 0px;
  border: #3A5743 4px solid; 
}

.email{
  background:#ecf0f1;
  border: #ccc 1px solid;
  border-bottom: #ccc 2px solid;
  padding: 8px;
  width:250px;
  color:#AAAAAA;
  margin-top:10px;
  font-size:1em;
  border-radius:4px;
}

.password{
  border-radius:4px;
  background:#ecf0f1;
  border: #ccc 1px solid;
  padding: 8px;
  width:250px;
  font-size:1em;
}

.btn{
  background:#2ecc71;
  width:125px;
  padding-top:5px;
  padding-bottom:5px;
  color:white;
  border-radius:4px;
  border: #27ae60 1px solid;
  
  margin-top:20px;
  margin-bottom:20px;
  float:left;
  margin-left:80px;
  font-weight:800;
  font-size:0.8em;
}

.btn:hover{
  background:#2CC06B; 
}

#btn2{
  float:left;
  background:#3498db;
  width:125px;  padding-top:5px;
  padding-bottom:5px;
  color:white;
  border-radius:4px;
  border: #2980b9 1px solid;
  
  margin-top:20px;
  margin-bottom:20px;
  margin-left:10px;
  font-weight:800;
  font-size:0.8em;
}

#btn2:hover{ 
background:#3594D2; 
}
</style>
</html>