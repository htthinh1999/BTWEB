<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bài tập 2</title>
</head>
<body>
	<%
		String s[][] = {
				{"1", "Nguyễn Văn Bình", "02-02-1990", "Vĩnh Long","8","7"},
				{"2", "Cao Văn Thắng", "02-02-1990", "Trà Vinh","9","6"},
				{"3", "Đinh Thu Lợi", "02-02-1990", "Cần Thơ","7","6"},
				{"4", "Vũ Trung Hán", "02-02-1990", "Hậu Giang","6","8"}
		};
		
		for(int i=0; i<s.length; i++){
			for(int j=0; j<s[i].length; j++){
				out.print(s[i][j] + " ");
			}
			float firstScore = Integer.parseInt(s[i][s[i].length-1]);
			float secondScore = Integer.parseInt(s[i][s[i].length-2]);
			out.print((firstScore + secondScore)/2 + "<br>");
		}
	%>
</body>
</html>