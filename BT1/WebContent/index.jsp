<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bài tập 1</title>
</head>
<body>
	<form action="#" method="post">
		<table>
			<tr>
				<td colspan="2">
					<h1>Nhập vào 2 số</h1>
				</td>
			</tr>
			
			<tr>
				<td>
					Số thứ 1
				</td>
				<td>
					<input type="text" name="n1">
				</td>
			</tr>
			
			<tr>
				<td>
					Số thứ 2
				</td>
				<td>
					<input type="text" name="n2">
				</td>
			</tr>
			
			<tr>
				<td colspan="2">
					<input type="radio" id="add" name="oper" value="+"><label for="add">Cộng</label>
					<input type="radio" id="sub" name="oper" value="-"><label for="sub">Trừ</label>
					<input type="radio" id="mul" name="oper" value="x"><label for="mul">Nhân</label>
					<input type="radio" id="div" name="oper" value="/"><label for="div">Chia</label><br>
					<button>Tính</button>
				</td>
			</tr>
		</table>
	</form>
	
<%
	if(request.getParameter("n1")!=null && request.getParameter("n2")!=null){
		int result=0;
		int a=Integer.parseInt(request.getParameter("n1"));
		int b=Integer.parseInt(request.getParameter("n2"));
		String oper=request.getParameter("oper");
		switch(oper){
			case "+":
				result = a+b;
				break;

			case "-":
				result = a-b;
				break;

			case "x":
				result = a*b;
				break;

			case "/":
				result = a/b;
				break;
		}
		out.println("Kết quả: " + a + " " + oper + " " + b + " = " + result);
	}
%>
	
</body>
</html>