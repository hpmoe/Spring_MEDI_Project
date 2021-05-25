<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<button id="logind" type="button">Doctor</button>
<button id="loginp" type="button">Patient</button>
<button id="regd" type="button">RegisterD</button>
<button id="regp" type="button">RegisterP</button>


<script type="text/javascript">
$(document).ready(function(){
$("#logind").on("click",function(){
	self.location="/medi/logind"
})
$("#loginp").on("click",function(){
	self.location="/medi/loginp"
})
$("#regd").on("click",function(){
	self.location="/medi/registerd"
})
$("#regp").on("click",function(){
	self.location="/medi/registerp"
})
})
</script>
</body>
</html>
