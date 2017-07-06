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
	        <div class="panel panel-info">
              
			 <c:if test="${sessionScope.serial !=1 }">
			 <div class="panel-heading" >
			<h3>Please SignUp</h3></div>
			</c:if>
			 <c:if test="${sessionScope.serial ==1 }">
			 <div class="panel-heading" >
			 <h3>Add Employee</h3></div>
			 </c:if>
			 <div class="panel-body" >
				<form:form action="submit" modelAttribute="user" id="registration_form" method="POST">
					<form:hidden path="empPerDetail" />
					<div class="form-group">
					   <c:if test="${sessionScope.serial !=1 }">
						Admin :<form:radiobutton path="serial" value="1" />
						</c:if>
						 <c:if test="${sessionScope.serial ==1 }">
						 Employee :<form:radiobutton path="serial" value="0" />
						 </c:if>
						   <p> <form:errors path="serial" /></p>					   
					   </div>
					    <c:if test="${sessionScope.serial ==1 }">
					<div class="form-group">
      
                      
                      <form:select path="empPerDetail.empId" cssClass="form-control">
                       <form:option value="-1">Select EmpId</form:option>
                       <c:forEach items="${empPerDetails}" var="temp" >
                      <form:option value="${temp.empId}">${temp.empId} ${temp.empName}</form:option>
                     </c:forEach>
                    </form:select>
                    
                   </div>
                   </c:if>
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
						<form:password path="password" cssClass="form-control"
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
				   <ul class="pager">
                     <li class="previous"><a href="${pageContext.request.contextPath}/childDetail/new">Previous</a></li>
                 
                     </ul>
				</div>
			</div>
	 	   </div>
	 	

	<jsp:include page="../layout/footer.jsp" />
	
</body>

</html>












