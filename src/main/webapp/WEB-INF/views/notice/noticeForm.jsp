<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='${path}/resources/css/noticeForm.css' rel='stylesheet' />
<link href="<%=request.getContextPath()%>/resources/css/header.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/css/footer.css"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
<script
	src="<%=request.getContextPath()%>/resources/ckeditor/ckeditor.js"></script>
	<script src="https://kit.fontawesome.com/94aab5b4e0.js"
	crossorigin="anonymous"></script>
<title>밥풀</title>
<%
	request.setCharacterEncoding("UTF-8");
%>
</head>
<body>

	<%@include file="/WEB-INF/inc/header.jsp"%>
<div id="wrap">

		<div class="content">
			<div class="head">
				<div class="title">NOTICE</div>
				<div class="title-under"></div>
				<div class="head-nav">
					<div class="faq"><a href="${path }/marketList.do">MARKET</a></div>
					<div class="faq"><a href="${path }/freeBoardList.do">COMMUNITY</a></div>
					<div class="notice"><a href="#" style="color: black; text-decoration: underline;">NOTICE</a></div>
					<div class="faq"><a href="${path }/faq.do">FAQ</a></div>
				</div>
			</div>
         </div>
         			<div class="content_title"></div>


		<form action="noticeRegist.do" id="editor_form" method="post">
			<div id="div_table">
				<table>
					<colgroup>
						<col width="200">
						<col width="550">
					</colgroup>
					<tr>
						<td class="td_left">제목</td>
						<td class="td_right"><input type="text" id="notice_title"
							maxlength="30" name="noticeTitle" value="" required="required"></td>
					</tr>
					<tr>
						<td class="td_left">작성자</td>
						<td class="td_right"><input type="text" name="noticeWriter"
							value="밥풀 관리자" required="required" readonly></td>
					</tr>
					<tr>
						<td class="td_left">내용</td>
						<td class="td_right">
							<!-- textAread 공백 주의 --> <textarea id="notice_content"
								name="noticeContent" cols="30" rows="10" required="required"></textarea>
						</td>
					</tr>

				</table>
			</div>
			<!-- 버튼 -->
			<div id="div_button">
				<button class="attach-button" type="submit"
					formaction="noticeRegist.do">
					<i>등록</i>
				</button>
				<a class="attach-button" href="noticeList.do"><i>목록</i></a>
			</div>
		</form>
	</div>

	<%@include file="/WEB-INF/inc/footer.jsp"%>
</body>

<script>
	CKEDITOR.replace('noticeContent', {//해당 이름으로 된 textarea에 에디터를 적용
		width : '100%',
		height : '400px',
		filebrowserUploadUrl : "<c:url value='/free/fileupload.do'/>"
	});
</script>
</html>