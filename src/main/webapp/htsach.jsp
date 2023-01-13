<%@page import="bo.giohangbo"%>
<%@page import="bean.khachhangbean"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<title>Quản lý sách</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<link rel="stylesheet" href="css/htsach.css">
<style>
.Loai-sach
{
background: #fff;
    border-radius: 7px;
    width: 174px;
    text-align: center;
  position: fixed;
    left: 70px;
    top: 74px;
    border: 1px solid #aaa; border-radius: 5px;
    height: 200px;
}

.Loai-sach a
{
color:black;
}
.Loai-sach a:hover
{
text-decoration: none
}


.Loai-sach::-webkit-scrollbar-track
{
	-webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
	border-radius: 10px;
	background-color: #F5F5F5;
}

.Loai-sach::-webkit-scrollbar
{
	width: 12px;
	background-color: #F5F5F5;
}

.Loai-sach::-webkit-scrollbar-thumb
{
	border-radius: 10px;
	-webkit-box-shadow: inset 0 0 6px rgba(0,0,0,.3);
	background-color: #555;
}
.Loai-sach tbody tr:nth-child(2n) {
    background-color: #dddddd;
}

</style>
</head>
<body>
<% giohangbo gh = (giohangbo) session.getAttribute("gio");
	ArrayList<sachbean> dssach = (ArrayList<sachbean>)request.getAttribute("dssach");
	int nn=dssach.size();
	int st = (nn/10 == 0) ? 1 : nn/10;
	
	if(nn/10 != 0) st++;
	khachhangbean kh = (khachhangbean) session.getAttribute("kh");
	%>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid" style="padding-left:0px">

			<ul class="nav navbar-nav" >
			<li style="background:#fff"><a><img style= "height:20px" alt="bookshop.org" src="https://rails-assets-us.bookshop.org/assets/logo-a52621fe944d907a0a91448f35b41eca07947302711d35c3322a99144928f1aa.svg"></a></li>
				<li class="active"><a href="htsach">Trang chủ</a></li>
				 <li class="<% if (gh != null && gh.countBook() != 0) out.print("active"); %>"><a href="htgioController">
			      <% if (gh != null){
			    	  if (gh.countBook() == 0)
				    		out.print("Giỏ Hàng");
				    	else{
				    		out.print("Giỏ Hàng (" + gh.countBook() + ")");
				    	} 
			      }
			      else{
			    	  out.print("Giỏ Hàng");
			      }
			      
			      %>

				<li><a href="thanhtoan.jsp">Thanh toán</a></li>
				<li><a href="lichsumuahangController">Lịch sử mua hàng: <%=session.getAttribute("ss")%></a></li>
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
	
	<!-- slideshow -->
	

  
   
	<table width="1000" align="center">
		<tr>
			<td width="100" valign="top" >
			
				<table class="table table-hover Loai-sach">
						<tr><th style="color:">
						LOẠI SÁCH
						</th>
						</tr>	
				        <%
				         ArrayList<loaibean> dsloai=(ArrayList<loaibean>)request.getAttribute("dsloai");
				         int n=dsloai.size();
				         for(int i=0;i<n;i++){ %>
				        
				         <tr><td style="padding:4px">
				         	
				           <a href="htsach?ml=<%=dsloai.get(i).getMaloai()%>">
				               <%=dsloai.get(i).getTenloai() %>
				            </a>
				           
				           </td>
				           </tr>
				          
				           <%} %>
				    
      	 		</table>
 				
			</td>
			<td width="600" valign="top">
				<table class="table table-hover">
					<%
					
					for (int i = 0; i < dssach.size(); i++) {
						sachbean s = dssach.get(i);
					%>
					<tr>
						<td style="width:255px; text-align: center"><img src="<%=s.getAnh()%>" style="width:auto;height: 200px;display: block; margin-left: auto; margin-right: auto;"><br>	<strong><%=s.getTensach()%></strong>
							<br> <%=s.getTacgia()%> <br ><strong style="color: #d0021c;font-size: 18px;
    margin-bottom: 8px"> <%=s.getGia()%> ₫</strong><br>
							<a
							href="giohangController?ms=<%=s.getMasach()%>&ts=<%=s.getTensach()%>&gia=<%=s.getGia()%>">
								<button>Add to cart</button>
						</a></td>
					
						<%
						i++;
						if (i < dssach.size()) {
							s = dssach.get(i);
						%>
					
						<td style="width:255px; text-align: center"><img src="<%=s.getAnh()%>" style="width:auto;height: 200px;display: block; margin-left: auto; margin-right: auto;"><br><strong><%=s.getTensach()%></strong> 
							<br> <%=s.getTacgia()%> <br><strong style="color: #d0021c;font-size: 18px;
    margin-bottom: 8px"> <%=s.getGia()%> ₫</strong><br>
							<a
							href="giohangController?ms=<%=s.getMasach()%>&ts=<%=s.getTensach()%>&gia=<%=s.getGia()%>">
								<button>Add to cart</button>
						</a></td>
						<%
						}
						%>

					</tr>
					<%
					}
					%>
				</table>
			</td>
			<td width="200" valign="top">
				<form action="htsach" method="post">
					<input class="form-control" name="txttk" type="text" value=""
						placeholder="Nhap tt"> <br> <input
						class="btn-primary" name="butt" type="submit" value="Search">
				</form>
			</td>
		</tr>
	</table>
</body>
</html>
