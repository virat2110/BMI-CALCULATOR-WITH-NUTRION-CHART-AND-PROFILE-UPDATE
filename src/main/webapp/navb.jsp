<%@page import="com.model.LoginModel"%>
<%@page import="com.model.UserModel"%>
<%@page import="com.model.BmiModel"%>
<%@page import="com.controller.LoginData"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
    <%
boolean t1 = LoginData.redir;

if(!t1) {
	
	response.sendRedirect(request.getContextPath() + "/login.jsp");
}
%>

<!DOCTYPE html>
<html lang="en">
<head>

	<script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>



    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>We Heal</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fredoka&family=Lato&display=swap" rel="stylesheet">
</head>


<body>
            <div class="navbar">
             <div class="header">
            <div class="title">
            <a href="index1.jsp">WE HEAL</a>
           </div>
                <ul>
                    <li><a class="text1" href="https://github.com/virat2110" target="_blank" rel="noopener noreferrer">Git hub</a></li>
                    <li><a class="text1" href="viewData.jsp">Calorie/food</a></li>
                    <li><a class="text1" href="bmi.jsp">BMI</a></li>
                     <li>
                     
                     <div class="dropdown">
                      <button class="dropbtn">Profile
                        <i class="fa fa-caret-down"></i>
                      </button>
                      <div class="dropdown-content">
                        <a href="profile.jsp">View profile</a>
                    <a href="insertUser.jsp">Update</a>
                        <a href="updateUser.jsp">Update BMI</a>
                      </div>
                    </div>
                     
                     </li>
                     <%
         session.setAttribute("ack", LoginData.user);
         %>
         <li>
                     
                     <div class="dropdown">
                      <button class="dropbtn">${ack}
                        <i class="fa fa-caret-down"></i>
                      </button>
                      <div class="dropdown-content">
                        <a href="logout.jsp">Logout</a>
                    
                      </div>
                    </div>
                     
                     </li>
                     
                   
                </ul>
            </div>
            </div>
           
       
</body>


<style>
.text1 {
	font-weight: bolder;
    font-size: 22px;
    font-family: inherit;
}



.navbar ul{
    display: flex;
    margin-right: 40px;
    cursor: pointer;
}
.navbar li:hover{
    color: black;
}
.navbar li {
    padding: 10px 30px 10px 20px;
    list-style: none;
    color: white;
    
}

a {
    text-decoration: none;
    color:white;
    
    
}
a:hover{
color: black;
}
.header {
    display: flex;
    justify-content: space-between;
    font-size: 20px;
    color: #ffff;
}
.title {
    padding: 30px;
}


.dropdown {
	float: left;
	overflow: hidden;
	margin-left: 15px;
	margin-right: 15px;
	margin-top: 3px;
	display: block;
	font-size: bolder;
	
	
  }
  
  .dropdown .dropbtn {
	font-size: 22px;
	border: none;
	outline: none;
	/*padding: 14px 16px; */
	background-color: inherit;
	font-family: inherit;
	margin: 0; 
	font-weight: bolder;
    padding: 10px 0;
    color: rgba(255, 255, 255, 0.911);
    text-transform: capitalize;
    transition: all 0.5s ease;
    font-weight: bolder;
    margin-top: -50px;
  }
  
  .navbar a:hover, .dropdown:hover .dropbtn {
	color: #000000;
  }
  
  /* Dropdown content (hidden by default) */
  .dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	z-index: 1;
  }
  
  /* Links inside the dropdown */
  .dropdown-content a {
	float: none;
	color: black;
	padding: 8px 8px;
	text-decoration: none;
	display: block;
	text-align: left;
	font-weight: bolder;
	font-size: large;
  }
  
  /* Add a grey background color to dropdown links on hover */
  .dropdown-content a:hover {
	background-color: rgb(17, 169, 207);
  }
  
  /* Show the dropdown menu on hover */
  .dropdown:hover .dropdown-content {
	display: block;
  }



</style>



</html>