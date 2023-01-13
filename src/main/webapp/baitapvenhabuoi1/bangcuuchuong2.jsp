<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String nn=request.getParameter("txtn");
  
%>
<form method="post" action="bangcuuchuong2.jsp">
	 n: <input name="txtn" type="number" value="<%=(nn==null?0:nn)%>"> <br>
	 <input name="but1" type="submit" value="Hien thi"> <br>
 </form>
 <%
    if(nn!=null){
    	int n=Integer.parseInt(nn);
    	for(int i=1;i<=9;i++){
    		out.print(n+"x"+i+"="+(n*i)+"<hr>");
    	}
    }
 %>
</body>
</html>
