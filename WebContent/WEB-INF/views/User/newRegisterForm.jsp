<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>

<head>
<jsp:include page="../layout/bootstrapCdn&ExternalCSS&JavaScript.jsp"  />
</head>

<body>
	<jsp:include page="../layout/navbar-header.jsp"  />
	
	  <div class="container" >
	   <div class="row">
	   <div class="col-lg-8">
	        <p>Hello</p>
	   </div>
		<div class="col-lg-4 register-form" >
			<div class="jumbotron" >
			 <c:if test="${sessionScope.serial !=1 }">
			<h3>Please SignUp</h3>
			</c:if>
			 <c:if test="${sessionScope.serial ==1 }">
			 <h3>Add Employee</h3>
			 </c:if>
				<form:form action="submit" modelAttribute="user" id="registration_form">
					<div class="form-group">
					   <c:if test="${sessionScope.serial !=1 }">
						Admin :<form:radiobutton path="serial" value="1" />
						</c:if>
						 <c:if test="${sessionScope.serial ==1 }">
						 Employee :<form:radiobutton path="serial" value="0" />
						 </c:if>
						   <p> <form:errors path="serial" /></p>
					</div>
					<div class="form-group">
						<form:input path="userName" cssClass="form-control"
							placeholder="Enter UserName" />
							   <p> <form:errors path="userName" /></p>
						<span class="error_form" id="username_error_message"></span>
					</div>
					<div class="form-group">
						<form:input path="email" cssClass="form-control"
							placeholder="Enter email" id="form_email" />
							<span class="error_form" id="email_error_message"></span>
							<p><form:errors path="email" /></p>
					</div>
					<div class="form-group">
						<input type="password"  Class="form-control"
							placeholder="Enter password"  id="form_password" />
							<span class="error_form" id="password_error_message"></span>
					</div>
					<div class="form-group">
						<form:input path="password" cssClass="form-control"
							placeholder="Confirm password" id="form_retype_password" />
                           <span class="error_form" id="retype_password_error_message"></span>
                            <p> <form:errors path="password" /></p>
					</div>
					<c:choose>
					       <c:when test="${sessionScope.serial== 1}">
					          <button type="submit" class="btn btn-primary form-control"  onclick="passwordvalidate()">Submit</button>
					             
					       </c:when>
					       <c:otherwise>
					           <button type="submit" class="btn btn-primary form-control"  onclick="passwordvalidate()">Register</button>
					       </c:otherwise>
					</c:choose>
					
				</form:form>
			</div>
	 	   </div>
	 	</div>
	</div>

	<jsp:include page="../layout/footer.jsp" />
	
</body>

</html>












