<%@page import ="jsp.*,java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<html>
<body>

<%
	Connection c = MySQL.connect();
	out.println(c);
	MySQL.close(c);
%>
</body>
</html>