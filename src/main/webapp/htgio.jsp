<%@page import="bean.khachhangbean"%>
<%@page import="bean.giohangbean"%>
<%@page import="bo.giohangbo"%>
<%@page import="bean.sachbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.loaibean"%>
<%@page import="bo.sachbo"%>
<%@page import="bo.loaibo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Giỏ hàng</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<style>
label
{ 
padding-right:10px;
}
</style>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid" style="padding-left:0px">
    
    <ul class="nav navbar-nav" >
    <li style="background:#fff"><a><img style= "height:20px" alt="bookshop.org" src="https://rails-assets-us.bookshop.org/assets/logo-a52621fe944d907a0a91448f35b41eca07947302711d35c3322a99144928f1aa.svg"></a></li>
      <li class="active"><a href="htsach">Trang chủ</a></li>
      <li><a href="htgioController">Giỏ hàng</a></li>
        <li><a href="thanhtoan.jsp">Thanh toán</a></li>
          <li><a href="lichsumuahangController">Lịch sử mua hàng: <%=session.getAttribute("ss") %></a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      
      <%if(session.getAttribute("dn")==null){ %>
      <li><a href="ktdn">
      <span class="glyphicon glyphicon-log-in"></span> 
      		Login
      </a></li>
      <%}else{ %>
      <li><a href="#">
      <span class="glyphicon glyphicon-user"></span>
      		Hi: <%  khachhangbean uid = (khachhangbean)session.getAttribute("dn");
						if(uid != null)
						{							
							out.println("<b>"+ uid.getHoten() +"</b>");
						
						}
						
						%>
      </a></li>
      <%} %>
      <li><a href="ThoatController"> <span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>
</nav>
 
<table width ="1400" align="center">
   <tr>
     <td width ="150" valign="top">
       <table class="table table-hover">
         <% ArrayList<loaibean> dsloai = (ArrayList<loaibean>)request.getAttribute("dsloai");
          int n = dsloai.size();
          for(int i = 0;i<n;i++ ){%>
         <tr><td>
           <a href="htsach?ml=<%=dsloai.get(i).getMaloai()%>">
               <%=dsloai.get(i).getTenloai() %>
            </a>
           </td>
           </tr>
           <%} %>
       </table>
     </td>
      <td width ="1000" valign="top">
      <form action="XuLyGioHangController" method="post">
      <table class="table table-hover">
	    <%
	   giohangbo gh=(giohangbo)session.getAttribute("gio");
	   if(gh!=null){
		   for(giohangbean h: gh.ds){%>
		   
		   	<tr>
		   	<td>
		   	<input type="checkbox" name="check" value="<%=h.getMasach() %>">
		   	</td>
		   
		   	<td> <label>Tên sách:  </label>  <%=h.getTensach() %> 	</td>
		   	<td> <label>Giá:  </label><%=h.getGia() %> ₫ 	</td>
		   	<td> <label>Số lượng:  </label><%=h.getSoluong() %> 	</td>
		   	<td>
		   	
		   	   <input type="number" min="1"  value="1" name="txt<%=h.getMasach()%>">
		   	    <button type="submit" name="butsua" value="<%=h.getMasach()%>">
		   	     Cập nhật</button>
		   	  <%--   <button type="submit" name="butxoa" value="<%=h.getMasach()%>"> 
		   	    Delete</button> --%>
		   	
		   	</td>
		   	<td>  <label>Thành tiền:  </label><%=h.getThanhtien() %> ₫	</td>
		   	<td>  <a href="giohangController?msxoa=<%=h.getMasach()%>">
                  <img width="30" height="30" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUnGQ0hFVLPjusTGBAm0Q3k7-XaTCm9mUYaw&usqp=CAU">
             </a>
			</td>
		   	</tr>
			    	
		<%   }
	   }
	   
		%>
		<%=gh.ds %>
		<% if(gh!=null){%>
 			<tr>
              <td width="200" ><h2 style="font-size: 25; font-weight: bold">Tổng Tiền:</h2></td>
              <td> <h2><%=gh.Tongtien() %> ₫</h2></td>
           </tr>
           <%} %>

     </table>
     <button type="submit" name="butcheck"> 
		   	   <a>Delete check</a></button>
	<button><a href="giohangController?xoaall=1">Trả lại tất cả</a></button>
     </form>
     
      <form action="dathangController" method="post">
         <button type="submit" name="but1"> 
		   	    Đặt mua
		  </button>
     </form>


   
     
     
     </td>
      <td width ="200" valign="top">
      <form action="htsach" method="post">
 		 <input  class="form-control"  name="txttk" type="text" value="" placeholder="Nhap tt"> <br>
  		 <input class="btn-primary"  name="butt" type="submit" value="Search">
  		  
		</form>
     </td>
     
     
          
       
     
   </tr>
</table>
</body>
</html>
