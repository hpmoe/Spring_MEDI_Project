<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>

<form id="dli" action="/medi/dlist2" method="post">
	<input type="hidden" name="patid"
		value='<c:out value="${patient.patid}"/>'> <input
		type="hidden" name="patpw" value='<c:out value="${patient.patpw}"/>'>
	<input type="hidden" name="patname"
		value='<c:out value="${patient.patname}"/>'> <input
		type="hidden" name="age" value='<c:out value="${patient.age}"/>'>
	<input type="hidden" name="weight"
		value='<c:out value="${patient.weight}"/>'> <input
		type="hidden" name="height" value='<c:out value="${patient.height}"/>'>
	<input type="hidden" name="temper"
		value='<c:out value="${patient.temper}"/>'> <input
		type="hidden" name="rash" value='<c:out value="${patient.rash}"/>'>
	<input type="hidden" name="sex" value='<c:out value="${patient.sex}"/>'>
	<input type="hidden" name="mcheck"
		value='<c:out value="${patient.mcheck}"/>'>

	<table id="doctable">
		<thead>
			<tr>
				<th>number</th>
				<th>name</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${doctors}" var="doc">
				<tr>
					<td><c:out value="${doc.docid}" /></td>
					<td><a id="sdsd" href='<c:out value="${doc.docid}"/>'><c:out value="${doc.docname}"/></a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</form>

<script type="text/javascript">
$(document).ready(function(){
	$("#sdsd").on("click", funcction(e){
		e.preventDefault();
		
	});
});
</script>


<%@include file="../includes/footer.jsp"%>