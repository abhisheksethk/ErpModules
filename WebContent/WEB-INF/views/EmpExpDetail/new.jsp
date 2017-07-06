<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <jsp:include page="../layout/bootstrapCdn&ExternalCSS&JavaScript.jsp" />
<title>Employee Experience Detail Form</title>
</head>
<body>
   
    <jsp:include page="../layout/navbar-header.jsp" />
  <div class="container">
  <div class="panel panel-info">
      <div class="panel-heading" >
      <h3>Employee Experience Detail</h3></div>
  <div class="panel-body">
  <form:form cssClass="form-horizontal" action="save" modelAttribute="empExpDetail" method="POST">
  <form:hidden path="jobId" />
     <div class="form-group">
      <form:label path="empPerDetail.empId" class="control-label col-sm-2 col-sm-offset-2" >EmpId</form:label>
      <div class="col-sm-4 col-sm-offset-1">
       <form:select path="empPerDetail.empId" cssClass="form-control">
       <option value="-1">Select EmpId</option>
         <c:forEach items="${empPerDetails}" var="temp" >
               <form:option value="${temp.empId}">${temp.empId} ${temp.empName}</form:option>
         </c:forEach>
       </form:select>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" for="serial">Serial</label>
      <div class="col-sm-4 col-sm-offset-1">
         <form:select  path="serial"  class="form-control" id="serial">
         <option>0</option>
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
        <option>5</option>
        <option>6</option>
        <option>7</option>
        <option>8</option>
        <option>9</option>
        <option>10</option>
        <option>11</option>
        <option>12</option>
      </form:select> 
        <form:errors path="serial" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" id="job">Job Type</label>
      <div class="col-sm-4 col-sm-offset-1">          
          <form:select  path="jobType"  class="form-control" id="job">
         <option>Full-Time</option>
        <option>Part-Time</option>
        <form:errors path="jobType" />
        </form:select>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" >Designation</label>
      <div class="col-sm-4 col-sm-offset-1">          
        <form:input path="designation" cssClass="form-control"  placeholder="Enter Designation" />
        <form:errors path="designation" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" >Company Name</label>
      <div class="col-sm-4 col-sm-offset-1">
        <form:input path="compName" cssClass="form-control"  placeholder="Enter Comapny Name" />
        <form:errors path="compName" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2">Comapany Detail</label>
      <div class="col-sm-4 col-sm-offset-1">
        <form:textarea path="compDetail" cssClass="form-control"  placeholder="Enter Comapany Detail" />
          <form:errors path="compDetail" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" >Starting ScalePay</label>
      <div class="col-sm-4 col-sm-offset-1">
        <form:input path="empStartingScalePay" cssClass="form-control"  placeholder="Enter Starting ScalePay" />
        <form:errors path="empStartingScalePay" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2">Starting GrossPay</label>
      <div class="col-sm-4 col-sm-offset-1">
        <form:input path="empStartingGrossPay" cssClass="form-control"  placeholder="Enter Starting GrossPay" />
          <form:errors path="empStartingGrossPay" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" >Highest ScalePay</label>
      <div class="col-sm-4 col-sm-offset-1">
        <form:input path="empHighestScalePay" cssClass="form-control"  placeholder="Enter Highest ScalePay"  />
           <form:errors path="empHighestScalePay" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2"for="email">Highest GrossPay</label>
      <div class="col-sm-4 col-sm-offset-1">
        <form:input path="empHighestGrossPay" cssClass="form-control"  placeholder="Enter Highest GrossPay" />
         <form:errors path="empHighestGrossPay" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2">Job JoinigDate</label>
      <div class="col-sm-4 col-sm-offset-1">          
        <form:input path="jobJoiningDate" class="form-control date" />
         <form:errors path="jobJoiningDate"></form:errors>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2">Job QuitDate</label>
      <div class="col-sm-4 col-sm-offset-1">          
        <form:input path="jobQuitDate"  class="form-control date"  />
        <form:errors path="jobQuitDate"></form:errors>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2">Profession</label>
      <div class="col-sm-4 col-sm-offset-1">
        <form:input path="profession" cssClass="form-control"  placeholder="Enter Profession" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2">Specialization</label>
      <div class="col-sm-4 col-sm-offset-1">          
        <form:input path="specialization" cssClass="form-control"  placeholder="Enter Specialization" />
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-success">Submit</button>
      </div>
    </div>
  </form:form>
    <ul class="pager">
       <li class="previous"><a href="${pageContext.request.contextPath}/empPerDetail/new">Previous</a></li>
      <li class="next"><a href="${pageContext.request.contextPath}/acadmicDetail/new">Next</a></li>
      </ul> 
</div>
</div>
</div>
    <jsp:include page="../layout/footer.jsp" /> 
</body>
</html>