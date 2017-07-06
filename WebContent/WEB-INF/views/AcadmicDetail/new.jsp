<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <jsp:include page="../layout/bootstrapCdn&ExternalCSS&JavaScript.jsp" />
<title>Employee Acadmic Detail Form</title>
</head>
<body>
   
    <jsp:include page="../layout/navbar-header.jsp" />
  <div class="container">
  <div class="panel panel-info">
      <div class="panel-heading" >
  <h3>Employee Acadmic Detail</h3></div>
  <div class="panel-body">
  <form:form cssClass="form-horizontal" action="save" modelAttribute="acadmicDetail" method="POST">
  <form:hidden path="acadmicId" />
      <div class="form-group">
      <form:label path="empPerDetail.empId" class="control-label col-sm-2 col-sm-offset-2"  >EmpId</form:label>
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
     <label class="control-label col-sm-2 col-sm-offset-2"  >Serial</label>
      <div class="col-sm-4 col-sm-offset-1" id="serial">
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
      <label class="control-label col-sm-2 col-sm-offset-2"  >Certified Degree</label>
      <div class="col-sm-4 col-sm-offset-1">          
        <form:input path="certifiedDegree" cssClass="form-control"  placeholder="Enter Certified Degree " />
         <form:errors path="certifiedDegree" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" >Discipline</label>
      <div class="col-sm-4 col-sm-offset-1">          
        <form:input path="discipline" cssClass="form-control"  placeholder="Enter Discipline" />
        <form:errors path="discipline" /> 
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2"  >BoardUniversity</label>
      <div class="col-sm-4 col-sm-offset-1">
        <form:input path="boardUniversity" cssClass="form-control"  placeholder="Enter BoardUniversity" />
        <form:errors path="boardUniversity" /> 
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2"  >Passing Year</label>
      <div class="col-sm-4 col-sm-offset-1">
        <form:input path="passingYear" class="date form-control"  />
         <form:errors path="passingYear" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2"  >MarksObtained</label>
      <div class="col-sm-4 col-sm-offset-1">
        <form:input path="marksObtained" cssClass="form-control"  placeholder="Enter MarksObtained" />
         <form:errors path="marksObtained" /> 
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" >Total Marks</label>
      <div class="col-sm-4 col-sm-offset-1">
        <form:input path="totalMarks" cssClass="form-control"  placeholder="Enter Total Marks" />
         <form:errors path="totalMarks" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" >(CGPA/%)</label>
      <div class="col-sm-4 col-sm-offset-1">
        <form:input path="cgpaOrPercentange" cssClass="form-control"  placeholder="Enter (CGPA/%)"  />
         <form:errors path="cgpaOrPercentange" /> 
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-success">Submit</button>
      </div>
    </div>
  </form:form>
      <ul class="pager">
       <li class="previous"><a href="${pageContext.request.contextPath}/empExpDetail/new">Previous</a></li>
      <li class="next"><a href="${pageContext.request.contextPath}/childDetail/new">Next</a></li>
      </ul>
</div>
</div>
</div>
   
    <jsp:include page="../layout/footer.jsp" /> 
</body>
</html>