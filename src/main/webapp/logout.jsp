<%@page import="java.util.ServiceLoader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@page import="com.controller.LoginData" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout</title>

</head>
<%
boolean t = LoginData.redir;



if(t) {
	LoginData.setRedir(false);
	response.sendRedirect(request.getContextPath() + "/index.html");
}
%>
<body>


</body>
</html>