<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
boolean t = LoginData.redir;

if(!t) {
	
	response.sendRedirect(request.getContextPath() + "/login.jsp");
}
%>    
    
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
</head>
<body>



<%@include file="navb.jsp" %>


<div class="home-page">
        <div class="home-desc">This is a simple Bmi Calculator app<br /> you can
                    check your BMI and details regarding your bmi<br /> You can see your 
                    nutrition chart also with respect to your bmi.<br /><br/>
                    This was created as a part of our<br /> ENTERPRISE PROGRAMMING-1.
        </div>
        <div class="home-grid">
          <div class="home-card">
            <div class="home-title">Create</div>
            <div class="home-description">Add the basic details about yourself and create your account.</div>
          </div>
          <div class="home-card">
            <div class="home-title">BMI Calculate</div>
            <div class="home-description">User friendly bmi calculator to check your bmi.</div>
          </div>
          <div class="home-card">
            <div class="home-title">Nutrition chart</div>
            <div class="home-description">Personalized nutrition chart for your bmi score.</div>
          </div>
          
        </div>
      </div>
      
      
      

</body>


<style>
        body{
 background: rgb(19,91,176);
  background: linear-gradient(90deg, rgba(19,91,176,1) 0%, rgba(33,141,175,1) 55%, rgba(0,212,255,1) 100%);
background-attachment: fixed;
background-repeat: no-repeat;
background-position: top left;
}

 
  
  .home-page{
    display: flex;
  }
  .home-desc{
    padding: 25px;
    color: aliceblue;
    font-size: 18px;
    font-weight: bolder;
    min-width: 40%;
    margin-top: 200px;
    font-family: Arial, Helvetica, sans-serif;
    color: white;
    text-shadow: 15px 15px 15px rgba(0, 0, 0, 0.6);
  }
  .home-grid{
    display: flex;
    max-width: 50%;
    margin-top: 180px;
  }
  .home-card{
    margin: 25px;
    padding: 20px;
    width: 500px;
    min-height: 200px;
    grid-template-rows: 20px 50px 1fr 50px;
    border-radius: 10px;
    box-shadow: 15px 15px 15px rgba(0, 0, 0, 0.7);
    transition: all 0.2s;
    background-color: aliceblue;
  }
  .home-title{
    margin-bottom: 20px;
    font-size: larger;
    font-weight: bold;
  }

      </style>



</html>