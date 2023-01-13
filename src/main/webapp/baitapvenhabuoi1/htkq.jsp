<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
   String ngay=request.getParameter("sngay");
   String thang=request.getParameter("sthang");
   String nam=request.getParameter("snam");
   Random r = new Random();
   if(ngay!=null && thang !=null && nam!=null){
%>
	Ket qua xo so ngay: <%=ngay %>/<%=thang %>/<%=nam %> <br>
	<%=r.nextInt(100) %>
	<%} %>
</body>
</html>
