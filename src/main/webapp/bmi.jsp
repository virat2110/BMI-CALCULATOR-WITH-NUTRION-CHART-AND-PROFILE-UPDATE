<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.controller.LoginData" %>
<%@page import="com.model.BmiModel" %>


<%
boolean t = LoginData.redir;
session.setAttribute("res", BmiModel.res);

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
    <title>We Heal</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fredoka&family=Lato&display=swap" rel="stylesheet">
</head>


<body>
<%@include file="navb.jsp" %>

    <div class="bmi-container">
        
        <div class="content">
            <div class="textarea">
                <h1 style="color: aliceblue; margin-left: -180px;">BMI CALCULATOR</h1>
            <form class="form" action="BmiData" method="get">
                <div class="row-one">
                  <input type="text" name="t1" class="text-input" id="age" autocomplete="off" required/><p class="text">Age</p>
                  <label class="container">
                  <input type="radio" name="radio" id="f"><p class="text">Female</p>
                    <span class="checkmark"></span>
                  </label>
                  <label class="container">
                  <input type="radio" name="radio" id="m"><p class="text">Male</p>
                    <span class="checkmark"></span>
                  </label>
                  </div>
                
                <div class="row-two">
                  <input type="text" name="t3" class="text-input" id="height" autocomplete="off" required><p class="text">Height (foot)</p>
                  <input type="text" name="t2" class="text-input" id="weight" autocomplete="off" required><p class="text">Weight (kg)</p>
                </div>
                
                <input type="submit" value="check" id="submit" />
                
                <h5 style="text-align: center; font-size:18px; color:black;">${res}</h5>
                
            </form>
            </div>
            <div class="image">
                <img src="2.png" alt="image" />
            </div>
        </div>
    </div>
</body>


<style>
body {
    background: rgb(19,91,176);
  background: linear-gradient(90deg, rgba(19,91,176,1) 0%, rgba(33,141,175,1) 55%, rgba(0,212,255,1) 100%);
    font-family: 'Fredoka', sans-serif;
    font-family: 'Lato', sans-serif;
    padding: 0;
    
}
p{
    color: black;
}

.login {
    background-color: #ADE25D;
    border-radius: 10px;
}
.content {
    display: flex;
    margin-top: -80px;
}
.textarea{
    width: 50%;
    padding: 60px;
    margin-top: 80px;
    font-size: 20px;
    align-items: center;
    justify-content: center;
    display: flex;
    flex-direction: column;
    color: white;
}
.image {
    width: 50%;
    margin-top: 180px;
    margin-left: 100px;
}
.bmi-body {
    margin-top: 0px;
}


.form {
  background-color: #fff;
  height: 240px;
  width: 450px;
  border-radius: 20px;
  margin: 20px 200px 20px auto;
  display: block;
  border: solid 1px #289df6;
  padding: 40px;
  
  box-shadow: 0 0 40px 0 black;
}

.form:hover {
  box-shadow: 0 0 60px 0 black;
  transition: .4s;
  transform: scale(1.02);
}

.row-one {
  padding: 20px;
}

.row-two {
  padding: 20px;
}

.text-input {
  width: 60px;
  height: 30px;
  border-radius: 10px;
  background-color: #dbeffe;
  border: none;
  outline: none;
  padding: 5px 10px;
  cursor: pointer;
}

.text-input:last-child {
  margin-bottom: 35px;
}

.text-input:hover {
  background-color: #cbe7fd;
}

#submit {
  border: none;
  border-radius: 10px;
  height: 40px;
  width: 140px;
  background-color: #289df6;
  color: #fff;
  margin: auto;
  display: block;
  outline: none;
  cursor: pointer;
}

#submit:hover{
  background-color: #0a8ef2;
}

.text {
  display: inline-block;
  margin: 5px 20px 5px 8px;;
}

.row-one {
  padding: 30px 20px 15px 20px;
}
.row-two {
  padding: 15px 20px 30px 20px;
  font-size: smaller;
}

.container {
  display: inline-block;
  position: relative;
  padding-left: 30px;
  cursor: pointer;
  user-select: none;
}

.container input {
  position: absolute;
  opacity: 0;
}

.checkmark {
  position: absolute;
  top: 0;
  left: 0;
  height: 25px;
  width: 25px;
  background-color: #dbeffe;
  border-radius: 50%;
}

.container:hover input ~ .checkmark {
  background-color: #cbe7fd;
}

.container input:checked ~ .checkmark {
  background-color: #289df6;
}

h1 {
  font-size: 30px;
  font-weight: 300;
  text-align: center;
  color: #289df6;
  padding-top: 15px;
  display: block;
}

h2 {
  font-size: 22px;
  font-weight: 300;
  text-align: center;
}

h3 {
  font-size: 24px;
  font-weight: 300;
  padding: 15px;
  margin-left: 900px;
}

h3 b {
  font-size: 32px;
  font-weight: 300;
  color: #289df6;
}

.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

.container input:checked ~ .checkmark:after {
  display: block;
}

.container .checkmark:after {
  left: 9px;
  top: 5px;
  width: 5px;
  height: 10px;
  border: solid white;
  border-width: 0 2px 2px 0;
  transform: rotate(45deg);
}
</style>
</html>