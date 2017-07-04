<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>

<head>
<jsp:include page="../layout/bootstrapCdn&ExternalCSS&JavaScript.jsp"  />
</head>

<body>
	<jsp:include page="../layout/navbar-header.jsp"  />
	
	<div class="container">
	   <div class="row">
	    <div class="col-lg-8">
	        
	   </div>
		<div class="col-lg-4 register-form">
			<div class="jumbotron" style="margin-top: 30%">
				<form:form action="processLogin" modelAttribute="user">
					<h3>Please Login</h3>
					<div class="form-group">
					 UserType <form:select path="serial">
					      <form:option value="1" label="Admin"></form:option>
					      <form:option value="0" label="Employee"></form:option>
					      <form:option value="2" label="Others"></form:option>
					  </form:select>
					</div>
					<div class="form-group">
						<form:input path="userName" cssClass="form-control"
							placeholder="Enter UserName" />
					</div>
					
					<div class="form-group">
						<form:input path="password" cssClass="form-control"
							placeholder="Enter password" />
					</div>
					<button type="submit" class="btn btn-primary form-control">Login</button>
				</form:form>
			</div>
		</div>
	</div>
	</div>
	<jsp:include page="../layout/footer.jsp" />
	
</body>

</html>












