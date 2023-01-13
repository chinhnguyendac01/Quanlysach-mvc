<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<% Calendar c=Calendar.getInstance();
   int ngay=c.get(Calendar.DAY_OF_MONTH);
   int thang=c.get(Calendar.MONTH)+1;
   int nam=c.get(Calendar.YEAR);
%>
<div align="right">
  Hôm nay, ngày <%=ngay %> tháng <%=thang %> năm <%=nam %> <hr>
</div>
 
   <form action="htkq.jsp">
     Chọn ngày:
     <select name="sngay">
     <%for(int i=1;i<=31;i++){ %>
         <option <%=(i==ngay?"selected":"") %>> <%=i %> </option>
         <%} %>
     </select>
      Chọn tháng:
     <select name="sthang">
     <%for(int i=1;i<=12;i++){ %>
         <option <%=(i==thang?"selected":"") %>> <%=i %> </option>
         <%} %>
     </select>
     Chọn năm:
     <select name="snam">
     <%for(int i=nam-10;i<=nam;i++){ %>
         <option <%=(i==nam?"selected":"") %>> <%=i %> </option>
         <%} %>
         
     </select>
     <input type="submit" name="but1" value="Xem kq">
   </form>
   
</body>
</html>


