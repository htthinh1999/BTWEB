<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<title>QUẢN LÝ</title>
</head>
<body>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	  <ul class="navbar-nav">
	    <li class="nav-item active">
	      <a class="nav-link" href="Home">Home</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="manageSV.jsp">Thao tác với Sinh Viên</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="manageMH.jsp">Thao tác với Môn Học</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="manageTKB.jsp">Thao tác với Thời Khóa Biểu</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="manageKQ.jsp">Thao tác với Kết Quả</a>
	    </li>
	  </ul>
	</nav>
	<br>
	<h1>THÊM SINH VIÊN</h1>
	<form action="ThemSV">
		<table>
			<tr>
				<td>
					<label for="txtMaSV">Mã sinh viên</label>
				</td>
				<td>
			    	<input type="text" id="txtMaSV" name="txtMaSV">
				</td>
			</tr>
			<tr>
				<td>
					<label for="txtTenSV">Tên sinh viên</label>
				</td>
				<td>
			    	<input type="text" id="txtTenSV" name="txtTenSV">
				</td>
			</tr>
			<tr>
				<td>
					<label for="txtLop" >Lớp</label>
				</td>
				<td>
			    	<input type="text" id="txtLop" name="txtLop">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<center><button type="submit">THÊM</button></center>
				</td>
			</tr>
		</table>
	</form>
	<br>
	<h1>SỬA THÔNG TIN SINH VIÊN</h1>
	<form action="SuaSV">
		<table>
			<tr>
				<td>
					<label for="txtMaSV">Mã sinh viên</label>
				</td>
				<td>
			    	<input type="text" id="txtMaSV" name="txtMaSV">
				</td>
			</tr>
			<tr>
				<td>
					<label for="txtTenSV">Tên sinh viên</label>
				</td>
				<td>
			    	<input type="text" id="txtTenSV" name="txtTenSV">
				</td>
			</tr>
			<tr>
				<td>
					<label for="txtLop" >Lớp</label>
				</td>
				<td>
			    	<input type="text" id="txtLop" name="txtLop">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<center><button type="submit">SỬA</button></center>
				</td>
			</tr>
		</table>
	</form>
	<br>
	<h1>XÓA THÔNG TIN SINH VIÊN</h1>
	<form action="XoaSV">
		<table>
			<tr>
				<td>
					<label for="txtMaSV">Mã sinh viên</label>
				</td>
				<td>
			    	<input type="text" id="txtMaSV" name="txtMaSV">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<center><button type="submit">XÓA</button></center>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>