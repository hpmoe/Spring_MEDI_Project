<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>
<%@include file="../includes/css.jsp" %>

<form action="/medi/registerp" method="post">
	<div id="content">
		<div>
			<h3>
				<label for="id">아이디</label>
			</h3>
			<span class="box int_id"> <input type="text" id="patid"
				maxlength="20" name="patid">
			</span> <span class="error_next_box"></span>
		</div>
	</div>

	<div id="content1">
		<div>
			<h3>
				<label for="id">비밀번호</label>
			</h3>
			<span class="box int_id"> <input type="text" id="patpw"
				maxlength="20" name="patpw">
			</span> <span class="error_next_box"></span>
		</div>
	</div>

	<div id="content1">
		<div>
			<h3>
				<label for="id">이름</label>
			</h3>
			<span class="box int_id"> <input type="text" id="patname"
				maxlength="10" name="patname">
			</span> <span class="error_next_box"></span>
		</div>
	</div>
	<br>
	<div class="button_area">
		<button type="submit">
			<span>회원가입</span>
		</button>
	</div>

	<input type="hidden" name="age" value=1>
	<input type="hidden" name="weight" value=1>
	<input type="hidden" name="height" value=1>
	<input type="hidden" name="temper" value=1>
	<input type="hidden" name="rash" value="asdf">
	<input type="hidden" name="sex" value="asdf">
	<input type="hidden" name="mcheck" value="asdf">
</form>

<script type="text/javascript">
	$(document).ready(function() {
		$("form").each(function() {
			this.reset();
		});
	});
</script>

<%@include file="../includes/footer.jsp"%>