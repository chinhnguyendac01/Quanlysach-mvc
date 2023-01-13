<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<table border="1">
      	<%for(int i=1;i<=10;i++){%>
             <tr style="border:1px solid">
             	<%for(int j=1;j<=10; j++) {%>
             		<td><%=j%>x<%=i%>=<%=j*i %></td>
             	<%} %>
             </tr>
      	<%}%>
    </table>
</body>
</html>
