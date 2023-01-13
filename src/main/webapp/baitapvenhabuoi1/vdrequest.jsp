<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
   <tr>
      <td>
         <a href="vdrequest.jsp?mm=jnc"> Java nang cao</a> <hr>
         <a href="vdrequest.jsp?mm=csdl"> Co so du lieu</a> <hr>
         <a href="vdrequest.jsp?mm=ltc"> Lap trinh c</a> <hr>
      </td>
      <td>
         <%String mamon=request.getParameter("mm");
         if(mamon==null)
        	 out.print("Chao mung da chay dau tien");
         else
   			out.print("Thong tin cua hoc phan co ma:"+ mamon);
			%>
      </td>
   </tr>
</table>
