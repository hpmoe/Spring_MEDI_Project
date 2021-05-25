<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>
<%@include file="../includes/css.jsp"%>

<form id="selector" action="/medi/pselect" method="get">
	<input type="hidden" name="patid"
		value='<c:out value="${patient.patid}"/>'> <input
		type="hidden" name="patpw" value='<c:out value="${patient.patpw}"/>'>
	<input type="hidden" name="patname"
		value='<c:out value="${patient.patname}"/>'> <input
		type="hidden" name="age" value=<c:out value="${patient.age}"/>>
	<input type="hidden" name="weight"
		value=<c:out value="${patient.weight}"/>> <input
		type="hidden" name="height" value=<c:out value="${patient.height}"/>>
	<input type="hidden" name="temper"
		value=<c:out value="${patient.temper}"/>> <input
		type="hidden" name="rash" value='<c:out value="${patient.rash}"/>'>
	<input type="hidden" name="sex" value='<c:out value="${patient.sex}"/>'>
	<input type="hidden" name="mcheck"
		value='<c:out value="${patient.mcheck}"/>'>

	<div class="button_area">
		<button id="modp"><span>정보 수정</span></button>
	</div>
	<br>
	<div class="button_area">
	<button id="che"><span>진료내역 확인</span></button>
	</div>

</form>
<script type="text/javascript">
	$(document).ready(function() {
		var formobj = $("form");

		$("#modp").on("click", function() {
			formobj.attr("action", "/medi/dlist").attr("method", "get");
			formobj.submit();
		});
		$("#che").on("click", function() {
			formobj.attr("action", "/medi/dlist2").attr("method", "get");
			formobj.submit();
		});

	});
</script>
</body>
</html>