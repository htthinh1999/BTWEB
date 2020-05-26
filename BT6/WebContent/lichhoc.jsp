<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>THỜI KHÓA BIỂU</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
	
</head>
<body>
	<header>
		<ul class="nav nav-pills">
		  <li class="nav-item">
		    <a class="nav-link" href="index.jsp">Trang chủ</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link active" href="lichhoc.jsp">Lịch học</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link disabled" href="Logout">Logout</a>
		  </li>
		</ul>
	</header>
	<br><br><br>
	
	</nav>
	
	<!-- CONTENT -->
	
	<table>
		<tr>
			<td rowspan="2">
				<h3>MÔN HỌC</h3>
			</td>
			<td colspan="5">
				<h3>THỜI GIAN</h3>
			</td>
		</tr>
		<tr>
			<td>
				<h5>
					Thứ 2
				</h5>
			</td>
			<td>
				<h5>
					Thứ 3
				</h5>
			</td>
			<td>
				<h5>
					Thứ 4
				</h5>
			</td>
			<td>
				<h5>
					Thứ 5
				</h5>
			</td>
			<td>
				<h5>
					Thứ 6
				</h5>
			</td>
		</tr>
		
		<tr>
			<td>
				Công nghệ phần mềm
			</td>
			<td><center>x</center></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>
				Xử lý ảnh
			</td>
			<td></td>
			<td><center>x</center></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>
				Lập trình WEB
			</td>
			<td></td>
			<td></td>
			<td><center>x</center></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>
				Phát triển hệ thống thương mại điện tử
			</td>
			<td></td>
			<td><center>x</center></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>
				Phân tích thiết kế hệ thống
			</td>
			<td></td>
			<td></td>
			<td></td>
			<td><center>x</center></td>
			<td></td>
		</tr>
		<tr>
			<td>
				An toàn và bảo mật hệ thống thông tin
			</td>
			<td></td>
			<td></td>
			<td></td>
			<td><center>x</center></td>
			<td></td>
		</tr>
		<tr>
			<td>
				Lập trình Windows(C#)
			</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td><center>x</center></td>
		</tr>
	</table>
	<br><br><br>
	
	<!-- FOOTER -->
	<footer>
		<h3>Sinh viên: Huỳnh Tấn Thịnh Lớp ĐHCN4A</h3>
		<form action="Logout" style="">
			<button>Logout</button>
		</form>
	</footer>
</body>
</html>