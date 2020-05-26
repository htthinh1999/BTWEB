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
	
	<%
		Object logged = request.getAttribute("logged");
	System.out.print(logged);
		if(logged==null || !(boolean)logged){
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	%>
	
</head>
<body>
	<header>
		<ul class="nav nav-pills">
		  <li class="nav-item">
		    <a class="nav-link active" href="index.jsp">Trang chủ</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="lichhoc.jsp">Lịch học</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link disabled" href="Logout">Logout</a>
		  </li>
		</ul>
	</header>
	<br><br><br>
	
	</nav>
	
	<!-- CONTENT -->
	
	<h1>TRANG CHỦ</h1>
</body>
</html>