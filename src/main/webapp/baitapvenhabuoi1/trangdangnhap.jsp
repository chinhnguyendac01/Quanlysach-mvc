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
	String kt = request.getParameter("kt");
	if(kt!= null && kt.equals("false"))
	{
		out.print("dangnhapsai");
		
	}
	%>
	<form action="htkq2.jsp" method = "post">
		UP <input name="txtun" type="text" value=""> <br>
		pass <input name="txtpass" type="text" value=""> <br>
		<input name="but1" type="submit" value="Login">
	</form>

</body>
</html>