<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>TỪ ĐIỂN ANH - VIỆT</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/style.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/javascript/main.js"></script>
</head>
<body>
	<!-- Header -->
	<div class="jumbotron">
		<h1>
			<a href="/BTL-Main/home">TỪ ĐIỂN ANH - VIỆT</a>
		</h1>
		<h6>Tra cứu từ điển Anh - Việt trực tuyến miễn phí</h6>
	</div>
	<!-- Header -->
	
	<!-- Body -->
	<div class="mid">
		<table width="100%">
			<tr>
				<td>
					<div>
						<form id="search-form" action="dictionary-look-up" method="post" style="display: inline-block;">
							<table>
								<tr>
									<th colspan="2" style="text-align: left">
										<label for="txtInput">Nhập từ cần tra</label>
									</th>
								</tr>
								<tr>
									<th class="ui-widget">
										<input type="search" id="txtInput" name="txtInput">
										<button type="submit" class="ui-state-default ui-corner-all"><b>Tra từ</b></button>
									</th>
								</tr>
							</table>
						</form>
					</div>
				</td>
				
				<td rowspan="2">
					<!-- Translated -->
					<div class="translated">
						<p>
							<%
								String word = (String) request.getAttribute("word");
								String wordTranslated = (String) request.getAttribute("wordTranslated");
								if(word!=null){
									if(wordTranslated!=null){
										out.println("<b>" + word + "</b><br>");
										out.print(wordTranslated);
									}else{
										out.println("Không thể dịch từ bạn đã nhập!");
									}
								}else{
									out.println("Từ bạn đã nhập sẽ được dịch tại đây!");
								}
							%>
						</p>
					</div>
					<!-- Translated -->
				</td>
			</tr>
			
			<tr>
				<td>
					<form action="#">
						<!-- Array Character -->
						<div>
							<input type="hidden" id="buttonNameClicked" name="buttonNameClicked">
							<%
								for(char i='A'; i<='Z'; i++){
									out.println("<button id='" + i + "' class='character' onClick=\"getWord('" + i + "')\">" + i + "</button>");
									if(i=='M'){
										out.println("<br>");
									}
								}
							%>
						</div>
						<!-- Array Character -->
						
						
						<!-- ListBox -->
						<%@page import="java.util.*"%>
						<div>
							<select class="list-box" name="list first character" size="25">
								<%
									char character = 'A';
									if(request.getParameter("buttonNameClicked")!=null){
										character = request.getParameter("buttonNameClicked").charAt(0);
									}
									List<String> words = (List<String>) request.getAttribute("words");
									for(int i=0; i<words.size(); i++){
										if(words.get(i).charAt(0) == character || words.get(i).charAt(0) == character + 32){
											out.println("<option>" + words.get(i) + "</option>");
										}
									}
								%>
							</select>
						</div>
						<!-- ListBox -->
					</form>	
				</td>
			</tr>
			
		</table>
	</div>
	<!-- Body -->

	<!-- Footer -->
	<footer class="footer">
		<span><strong>TỪ ĐIỂN ANH - VIỆT</strong><br>
		Đề tài được thực hiện bởi sinh viên <strong>Huỳnh Tấn Thịnh</strong> lớp <strong>ĐHCN4A</strong> trường <strong>ĐH Thông tin Liên Lạc</strong></span>
	</footer>
	<!-- Footer -->
</body>
</html>