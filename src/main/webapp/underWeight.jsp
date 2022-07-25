
<%@page import="com.entity.UnderWeight"%>
<%@page import="com.entity.Healthy"%>
<%@page import="com.controller.LoginData"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.entity.Calorie" %>
<%@ page import="java.util.*" %>
<%@ page import="com.model.*" %>





<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nutrition chart</title>

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
  margin-top: 30px;
  margin-left: 60px;
  margin-right: 60px;
  
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
  text-align: center;
  background-color: #aa0477;
  color: white;
}

.cap{
	font-weight: bolder;
	font-size: bolder;
	color: black;
	font-family: 'Poppins',sans-serif;
	background-color: #64d6cb;
	height: 30px;
	
}

.cap h4{
margin-top:5px;
font-size: 20px;
}

</style>


</head>
<body>
<%@include file="navb.jsp" %>

<%
String res = BmiModel.res;
NutritionModel nr = new NutritionModel();
List<UnderWeight> list;
    list = nr.detailsunderWeight();
    
%>

 
  <table  border="1" id="customers">
  <caption class="cap"><h4>${res}</h4></caption>
    <tr>
      <th> DAY</th>
      <th> BREAKFAST</th>
      <th> MID-MEAL</th>
      <th> LUNCH</th>
      <th> EVENING</th>
      <th> DINNER</th>
    </tr>
    
   
    
     <% for(UnderWeight h: list)  { %>
    
    
      <tr>
        <td><%=h.getDay() %></td>
        <td><%=h.getBreakfast() %></td>
        <td><%=h.getMidMeal() %></td>
        <td><%=h.getLunch()  %></td>
        <td><%=h.getEvening() %></td>
        <td><%=h.getDinner() %></td>
      </tr>
      <% } %>
    
  </table>
  <input type="submit" value="print" onClick="window.print()"/>
</body>
</html>