
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <jsp:include page="../layout/bootstrapCdn&ExternalCSS&JavaScript.jsp" />
<title>Employee Child Detail Form</title>
</head>
<body>
   
    <jsp:include page="../layout/navbar-header.jsp" />
  <div class="container">
  <h2>Employee Child Detail</h2>
  <form:form cssClass="form-horizontal" action="save" modelAttribute="childDetail" method="POST">
  <form:hidden path="childId" />
    <div class="form-group">
      <label class="control-label col-sm-2" >Serial</label>
      <div class="col-sm-10">
        <form:input path="serial" cssClass="form-control"  placeholder="Enter Serial Number "/>
         <form:errors path="serial" /> 
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Child Name</label>
      <div class="col-sm-10">          
        <form:input path="childName" cssClass="form-control"  placeholder="Enter Child Name" />
         <form:errors path="childName" />  
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Gender</label>
       <div class="form-group">
              <div class="select-option">
					  <form:select path="gender"  >
					      <form:option value="Male" label="Male"></form:option>
					      <form:option value="Female" label="Female"></form:option>
					      <form:option value="TransGender" label="TransGender"></form:option>
					 </form:select>
					  <form:errors path="gender" /> 
			  </div>
	   </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >DateOf Birth</label>
      <div class="col-sm-10">
        <form:input path="DOB" class="date"   />
            <form:errors path="DOB" /> 
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-success">Submit</button>
      </div>
    </div>
  </form:form>
</div>
    <jsp:include page="../layout/footer.jsp" /> 
</body>
</html>