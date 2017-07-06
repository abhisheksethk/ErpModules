<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
  <div class="row">
      <div class="col-sm-12">
      <div class="panel panel-info">
      <div class="panel-heading" >
  <h2>Employee Child Detail</h2></div>
    <div class="panel-body">
  <form:form cssClass="form-horizontal" action="save" modelAttribute="childDetail" method="POST">
  <form:hidden path="childId" />
     <div class="form-group">
      <form:label path="empPerDetail.empId" class="control-label col-sm-3 col-sm-offset-1"  >EmpId</form:label>
      <div class="col-sm-6 ">
       <form:select path="empPerDetail.empId" cssClass="form-control">
       <option value="-1">Select EmpId</option>
         <c:forEach items="${empPerDetails}" var="temp" >
               <form:option value="${temp.empId}">${temp.empId} ${temp.empName}</form:option>
         </c:forEach>
       </form:select>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-3  col-sm-offset-1" >Serial</label>
       <div class="col-sm-6 ">
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
      <label class="control-label col-sm-3  col-sm-offset-1"  >Child Name</label>
      <div class="col-sm-6">          
        <form:input path="childName" cssClass="form-control"  placeholder="Enter Child Name" />
         <form:errors path="childName" />  
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-3  col-sm-offset-1" >Gender</label>
       <div class="col-sm-6">
					  <form:select path="gender" cssClass="form-control" >
					      <form:option value="Male" label="Male"></form:option>
					      <form:option value="Female" label="Female"></form:option>
					      <form:option value="TransGender" label="TransGender"></form:option>
					 </form:select>
					  <form:errors path="gender" /> 
	   </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-3  col-sm-offset-1"  >DateOf Birth</label>
      <div class="col-sm-6">
        <form:input path="DOB" class="date form-control"    />
            <form:errors path="DOB" /> 
      </div>
    </div>
      <div class="form-group">        
         <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-success">Submit</button>
         </div>
        </div>
      </form:form>
       <ul class="pager">
     <li class="previous"><a href="${pageContext.request.contextPath}/acadmicDetail/new">Previous</a></li>
      <li class="next"><a href="${pageContext.request.contextPath}/user/signUp">Next</a></li>
      
      </ul> 
     </div>
   </div>
   </div>
   
</div>
</div>
    
    <jsp:include page="../layout/footer.jsp" /> 
</body>
</html>