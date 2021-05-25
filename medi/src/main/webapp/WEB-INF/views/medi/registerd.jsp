<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>
<%@include file="../includes/css.jsp" %>
<div id="content">
	<div>
		<h3>
			<label for="id">아이디</label>
		</h3>
		<span class="box int_id"> <input type="text" id="docid"
			class="int" maxlength="20">
		</span> <span class="error_next_box"></span>
	</div>
</div>


<div id="content1">
	<div>
		<h3>
			<label for="id">비밀번호</label>
		</h3>
		<span class="box int_id"> <input type="text" id="docpw"
			class="int" maxlength="20">
		</span> <span class="error_next_box"></span>
	</div>
</div>

<div id="content1">
	<div>
		<h3>
			<label for="id">이름</label>
		</h3>
		<span class="box int_id"> <input type="text" id="docname"
			class="int" maxlength="10">
		</span> <span class="error_next_box"></span>
	</div>
</div>


<div class="button_area">
	<button type="button">
		<span>회원가입</span>
	</button>

</div>
<%@include file="../includes/footer.jsp"%>