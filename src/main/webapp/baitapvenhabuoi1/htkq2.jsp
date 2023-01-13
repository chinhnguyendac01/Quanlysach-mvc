<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	<%
 	String Username = request.getParameter("txtun");
 	String Pass = request.getParameter("txtpass");
 	if(Username.equals("abc")&&Pass.equals("123"))
 	{
 		response.sendRedirect("https://www.facebook.com");
 		
 	}else{
 		
 		response.sendRedirect("trangdangnhap.jsp?kt=false");
 		
 	}
 	%>
</body>
</html>