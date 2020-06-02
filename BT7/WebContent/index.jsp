<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thời khóa biểu</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
	<h2>Thông tin sinh viên</h2>
	<table>
		<tr style="font-weight: bold;">
			<td>Mã sinh viên</td>
			<td>Tên sinh viên</td>
			<td>Lớp</td>
		</tr>
		<%@ page language="java" import="java.util.*,java.lang.*" %>
		<%
			List<List<String>> sinhVien = (List<List<String>>) request.getAttribute("sinhVien");
			if(sinhVien!=null){
				for(int i=0; i<sinhVien.size(); i++){
					out.println("<tr>");
					for(int j=0; j<sinhVien.get(i).size(); j++){
						out.println("<td>" + sinhVien.get(i).get(j) + "</td>");
					}
					out.println("</tr>");
				}
			}
		%>
	</table>
	<br>
	<h2>Thời khóa biểu</h2>
	<table>
		<tr style="font-weight: bold;">
			<td>Tên môn học</td>
			<td>Thời gian</td>
			<td>Số tín chỉ</td>
			<td>Giảng viên</td>
		</tr>
		<%@ page language="java" import="java.util.*,java.lang.*" %>
		<%
			List<List<String>> thoiKhoaBieu = (List<List<String>>) request.getAttribute("thoiKhoaBieu");
			if(thoiKhoaBieu!=null){
				for(int i=0; i<thoiKhoaBieu.size(); i++){
					out.println("<tr>");
					for(int j=0; j<thoiKhoaBieu.get(i).size(); j++){
						out.println("<td>" + thoiKhoaBieu.get(i).get(j) + "</td>");
					}
					out.println("</tr>");
				}
			}
		%>
	</table>
		<br>
	<h2>Kết quả</h2>
	<table>
		<tr style="font-weight: bold;">
			<td>Tên sinh viên</td>
			<td>Lớp</td>
			<td>Tên môn học</td>
			<td>Điểm</td>
		</tr>
		<%@ page language="java" import="java.util.*,java.lang.*" %>
		<%
			List<List<String>> ketQua = (List<List<String>>) request.getAttribute("ketQua");
			if(ketQua!=null){
				for(int i=0; i<ketQua.size(); i++){
					out.println("<tr>");
					for(int j=0; j<ketQua.get(i).size(); j++){
						out.println("<td>" + ketQua.get(i).get(j) + "</td>");
					}
					out.println("</tr>");
				}
			}
		%>
	</table>
</body>
</html>