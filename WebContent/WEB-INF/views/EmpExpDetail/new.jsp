
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <jsp:include page="../layout/bootstrapCdn&ExternalCSS&JavaScript.jsp" />
<title>Employee Experience Detail Form</title>
</head>
<body>
   
    <jsp:include page="../layout/navbar-header.jsp" />
    <div>
       <form:errors path="serial" />
       <form:errors path="jobType" />
       <form:errors path="designation" />
       <form:errors path="compName" />
       <form:errors path="compDetail" />
       <form:errors path="empStartingScalePay" />
       <form:errors path="empStartingGrossPay" />
       <form:errors path="empHighestScalePay" />
       <form:errors path="empHighestGrossPay" />
       <form:errors path="jobJoiningDate"></form:errors>
       <form:errors path="jobQuitDate"></form:errors>
       
       
    
    </div>
  <div class="container">
  <h2>Employee Experience Detail</h2>
  <form:form cssClass="form-horizontal" action="save" modelAttribute="empExpDetail" method="POST">
  <form:hidden path="jobId" />
    <div class="form-group">
      <label class="control-label col-sm-2" >Serial</label>
      <div class="col-sm-10">
        <form:input path="serial" placeholder="Enter Serial Number "/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Job Type</label>
      <div class="col-sm-10">          
        <form:input path="jobType" cssClass="form-control"  placeholder="Enter Job Type" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Designation</label>
      <div class="col-sm-10">          
        <form:input path="designation" cssClass="form-control"  placeholder="Enter Designation" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Company Name</label>
      <div class="col-sm-10">
        <form:input path="compName" cssClass="form-control"  placeholder="Enter Comapny Name" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Comapany Detail</label>
      <div class="col-sm-10">
        <form:textarea path="compDetail" cssClass="form-control"  placeholder="Enter Comapany Detail" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Starting ScalePay</label>
      <div class="col-sm-10">
        <form:input path="empStartingScalePay" cssClass="form-control"  placeholder="Enter Starting ScalePay" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Starting GrossPay</label>
      <div class="col-sm-10">
        <form:input path="empStartingGrossPay" cssClass="form-control"  placeholder="Enter Starting GrossPay" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Highest ScalePay</label>
      <div class="col-sm-10">
        <form:input path="empHighestScalePay" cssClass="form-control"  placeholder="Enter Highest ScalePay"  />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Highest GrossPay</label>
      <div class="col-sm-10">
        <form:input path="empHighestGrossPay" cssClass="form-control"  placeholder="Enter Highest GrossPay" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Job JoinigDate</label>
      <div class="col-sm-10">          
        <form:input path="jobJoiningDate" class="date" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Job QuitDate</label>
      <div class="col-sm-10">          
        <form:input path="jobQuitDate"  class="date"  />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Profession</label>
      <div class="col-sm-10">
        <form:input path="profession" cssClass="form-control"  placeholder="Enter Profession" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2">Specialization</label>
      <div class="col-sm-10">          
        <form:input path="specialization" cssClass="form-control"  placeholder="Enter Specialization" />
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