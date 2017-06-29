<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>

<html>

<head>
<jsp:include page="../layout/bootstrapCdn&ExternalCSS&JavaScript.jsp"  />
</head>

<body>
	<jsp:include page="../layout/adminheader-navbar.jsp"  />
	<form:errors path="email"></form:errors>
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="margin-top: 30%">
			<h3>Please SignUp</h3>
				<form:form action="submit" modelAttribute="user">
					<div class="form-group">
						Admin :<form:radiobutton path="serial" value="1" />
					</div>
					<div class="form-group">
						<form:input path="email" cssClass="form-control"
							placeholder="Enter email" />
					</div>
					<div class="form-group">
						<form:password path="password" cssClass="form-control"
							placeholder="Enter password" id="confirm_password" />
					</div>
					<div class="form-group">
						<input  type="text" Class="form-control"
							placeholder="Confirm password" id="password" />
					</div>
					
					<button type="submit" class="btn btn-primary form-control"  onclick="passwordvalidate()">Register</button>
				</form:form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	function passwordvalidate()
	{
		var password = document.getElementById("password")
		  , confirm_password = document.getElementById("confirm_password");

		function validatePassword(){
		  if(password.value != confirm_password.value) {
		    confirm_password.setCustomValidity("Passwords Don't Match");
		  } else {
		    confirm_password.setCustomValidity('');
		  }
		}

		password.onchange = validatePassword;
		confirm_password.onkeyup = validatePassword;
	}

	
	</script>
	<jsp:include page="../layout/footer.jsp" />
	
</body>

</html>












