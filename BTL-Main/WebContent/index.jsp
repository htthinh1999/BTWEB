<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	
	<%@page import="java.util.*"%>
	<%
		if(request.getAttribute("words")==null){%>
			<jsp:forward page='/home' />
		<%}
	%>

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
	<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.95.1/js/materialize.min.js"></script>
	<script src="<%=request.getContextPath()%>/javascript/main.js"></script>
	
	<script>
		$(function () {
			// Override autocomplete filter to search only from the beginning of the string 
			$.ui.autocomplete.filter = function (array, term){
	        	var matcher = new RegExp( "^" + $.ui.autocomplete.escapeRegex(term), "i" );
	        	return $.grep(array, function(value){
	        		return matcher.test(value.label||value.value||value);
	        	});
            };

			var words = ${words};
		    $("#txtInput").blur(function(){
		         var keyEvent = $.Event("keydown");
		         keyEvent.keyCode = $.ui.keyCode.ENTER;
		         $(this).trigger(keyEvent);
		         return false; 
		     }).autocomplete({	// Return 10 results
		        source: function(request, response){
		            var results = $.ui.autocomplete.filter(words, request.term);
		        	response(results.slice(0, 10));
		        },
		        messages:{	// Hide result message found
		        	noResults:'',
		        	results: function(){}
		        },
		        select: function(event, ui){	// Make form submit when select
		        	$(this).val(ui.item.value);
		        	document.getElementById("search-form").submit();
		        },
		        autoFocus: true
		    });
		    
		});
	</script>
	
</head>
<body>
	<!-- Header -->
	<div class="jumbotron">
		<h1>
			<a href="/BTL-Main/index.jsp">TỪ ĐIỂN ANH - VIỆT</a>
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
										<input type="search" class="input" id="txtInput" name="txtInput" value="<% 
												String txtInputed = (String) request.getAttribute("word");
												if(txtInputed!=null){
													out.println(txtInputed);
												}
											%>">
										<button type="submit" id="btnSubmit" class="ui-state-default ui-corner-all"><b>Tra từ</b></button>
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
										out.println("<b>" + word + " </b>");
										out.println("<a href='#' id='speak' class='btn'><img class='audio' src='"+ request.getContextPath() +"/images/audio-icon.png'></a><br>");
										out.print(wordTranslated);
									}else{ %>
										<b>Không thể dịch từ bạn đã nhập!</b><br>
										Nếu đây là từ có nghĩa, bạn có thể thêm nghĩa vào mẫu bên dưới!
										<form action="add-new-word">
											<label for="txtNewWord"><b>Từ mới</b></label><br>
											<input type="text" class="input" id="txtNewWord" name="txtNewWord"><br>
											<label for="txtNewWordType"><b>Loại từ (Danh từ, tính từ,..., viết tắt)</b></label><br>
											<input type="text" class="input" id="txtNewWordType" name="txtNewWordType"><br>
											<label for="txtNewWordTranslated"><b>Nghĩa của từ</b></label><br>
											<textarea class="new-word-translated" id="txtNewWordTranslated" name="txtNewWordTranslated"></textarea><br>
											<button type="submit" id="btnAddWord" class="ui-state-default ui-corner-all"><b>Thêm từ mới</b></button>
										</form>
									<%}
								}else{
									out.println("Từ bạn nhập sẽ được dịch tại đây!");
								}
							%>
						</p>
					</div>
					<!-- Translated -->
				</td>
			</tr>
			
			<tr>
				<td>
					<form action="#" name="list">
						<!-- Array Character -->
						<div>
							<input type="hidden" id="buttonNameClicked" name="buttonNameClicked"">
							<%
								for(char i='A'; i<='Z'; i++){
									out.println("<button id='" + i + "' class='character' onClick=\"getWord('" + i + "')\">" + i + "</button>");
								}
							%>
						</div>
						<!-- Array Character -->
						
						<!-- ListBox -->
						<div>
							<select class="list-box" name="list first character" size="25" onChange="chooseWord(this)">
								<%
									char character = 'A';
									if(request.getParameter("buttonNameClicked")!=null){
										character = request.getParameter("buttonNameClicked").charAt(0);
									}
									Hashtable<Character, ArrayList<String>> wordsFirstCharacter = (Hashtable<Character, ArrayList<String>>) request.getAttribute("wordsFirstCharacter");
									for(int i=0; i<wordsFirstCharacter.get(character).size(); i++){
										out.println("<option>" + wordsFirstCharacter.get(character).get(i) + "</option>");
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