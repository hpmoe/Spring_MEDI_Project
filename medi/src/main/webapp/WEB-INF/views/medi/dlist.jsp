<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>
<%@include file="../includes/css.jsp" %>

<form id="pstate" action="/medi/dlist" method="post">
<input type="hidden" name="patid" value='<c:out value="${patient.patid}"/>'>
<input type="hidden" name="patpw" value='<c:out value="${patient.patpw}"/>'>
<div id="content">
	<div>
		<h3>
			<label for="id">이름</label>
		</h3>
		<span class="box int_id"> <input type="text" id="patname"
			name="patname" maxlength="20" value='<c:out value="${patient.patname}"/>'>
		</span> 
	</div>
</div>
<div id="content1">
	<div>
		<h3>
			<label for="id">나이</label>
		</h3>
		<span class="box int_id"> <input type="number" id="age"
			name="age" maxlength="20" >
		</span> 
	</div>
</div>
<div id="content1">
	<div>
		<h3>
			<label for="id">몸무게</label>
		</h3>
		<span class="box int_id"> <input type="number" id="weight"
			name="weight" maxlength="20">
		</span> 
	</div>
</div>

<div id="content1">
	<div>
		<h3>
			<label for="id">키</label>
		</h3>
		<span class="box int_id"> <input type="number" id="height"
			name="height" maxlength="20" >
		</span> 
	</div>
</div>

<div id="content1">
	<div>
		<h3>
			<label for="id">체온</label>
		</h3>
		<span class="box int_id"> <input type="number" id="temper"
			name="temper" maxlength="20">
		</span>
	</div>
</div>
<div id="content1">
	<div>
		<h3>
			<label for="id">발진여부</label>
		</h3>
		<label><input type="radio" name="rash" value="check">O</label>
		<label><input type="radio" name="rash" value="uncheck">X</label>
		<!-- <span class="box int_id"><input type="text" id="rash" name="rash" maxlength="20"> -->
		 </span>
	</div>
</div>
<!-- <input type="hidden" name="rash" value="cc"> -->
<div id="content1">
	<div>
		<h3>
			<label for="id">성별</label>
		</h3>
		 <label><input type="radio" name="sex" value="male">남자</label>
		<label><input type="radio" name="sex" value="female">여자</label>
		<!-- <span class="box int_id"><input type="text" id="sex" name="sex" maxlength="20"> -->
		 </span>
	</div>
</div>
<!-- <input type="hidden" name="sex" value="mm"> -->
<input type="hidden" name="mcheck" value="asdf">

<br>
<div id="ssuu" class="button_area">
	<button type="submit">
		<span>제출하기</span>
	</button>

</div>
<br>
<div id="getout" class="button_area">
	<button type="submit">
		<span>탈퇴하기</span>
	</button>

</div>
</form>

<script type="text/javascript">
	$(document).ready(function(){
		var rash = $("input[name=rash]").val();
		var sexy = $("input[name=sex]").val();
		var formobj = $("form");
		$("form").each(function() {
			this.reset();
		});
		$("#ssuu").on("click",function(e){
			e.preventDefault();
			var ras = $("input[name=rash]").val();
			var se = $("input[name=sex]").val();
			console.log(ras);
			console.log(se);
			
			ras=rash;
			se=sexy;
			formobj.submit();
		});
		$("#getout").on("click",function(e){
			e.preventDefault();
			formobj.attr("action","/medi/deldel").attr("method","get");
			$("input[name=age]").val(1);
			$("input[name=weight]").val(1);
			$("input[name=height]").val(1);
			$("input[name=rash]").val("asdf");
			$("input[name=sex]").val("asdf");
			$("input[name=mcheck]").val("asdf");
			$("input[name=temper]").val(1.0);
			formobj.submit();
		});
		
	});
</script>
<%@include file="../includes/footer.jsp"%>