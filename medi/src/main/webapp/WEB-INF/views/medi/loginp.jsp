<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>
<%@include file="../includes/css.jsp" %>
<form id='loginForm' action="/medi/loginp" method="post">
<div id="content">
	<div>
		<h3>
			<label for="id">아이디</label>
		</h3>
		<span class="box int_id"> <input type="text" id="patid"
			name="pid" maxlength="20">
		</span> <span class="error_next_box"></span>
	</div>
</div>

<div id="content1">
	<div>
		<h3>
			<label for="id">비밀번호</label>
		</h3>
		<span class="box int_id"> <input type="text" id="patpw"
			name="pwd" maxlength="20">
		</span> <span class="error_next_box"></span>
	</div>
</div>

<div class="button_area" >
	<button id ="login" type="submit">
		<span>로그인</span>
	</button>
</div>
</form>

<script type="text/javascript">
	$(document).ready(function(){
		$("form").each(function() {
			this.reset();
		});
	});
</script>
<%@include file="../includes/footer.jsp"%>