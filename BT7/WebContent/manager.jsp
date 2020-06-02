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
<title>QUẢN LÝ</title>
</head>
<body>
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
</body>
</html>