
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <jsp:include page="../layout/bootstrapCdn&ExternalCSS&JavaScript.jsp" />
<title>Employee Acadmic Detail Form</title>
</head>
<body>
   
    <jsp:include page="../layout/navbar-header.jsp" />
    <div>
       <form:errors path="serial" /> 
       <form:errors path="certifiedDegree" /> 
       <form:errors path="discipline" /> 
       <form:errors path="boardUniversity" /> 
       <form:errors path="passingYear" /> 
       <form:errors path="marksObtained" /> 
       <form:errors path="totalMarks" />
       <form:errors path="cgpaOrPercentange" /> 
       
    
    </div>
  <div class="container">
  <h2>Employee Acadmic Detail</h2>
  <form:form cssClass="form-horizontal" action="save" modelAttribute="acadmicDetail" method="POST">
  <form:hidden path="acadmicId" />
    <div class="form-group">
      <label class="control-label col-sm-2" >Serial</label>
      <div class="col-sm-10">
        <form:input path="serial" placeholder="Enter Serial Number "/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Certified Degree</label>
      <div class="col-sm-10">          
        <form:input path="certifiedDegree" cssClass="form-control"  placeholder="Enter Certified Degree " />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Discipline</label>
      <div class="col-sm-10">          
        <form:input path="discipline" cssClass="form-control"  placeholder="Enter Discipline" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >BoardUniversity</label>
      <div class="col-sm-10">
        <form:input path="boardUniversity" cssClass="form-control"  placeholder="Enter BoardUniversity" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Passing Year</label>
      <div class="col-sm-10">
        <form:input path="passingYear" class="date"  />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >MarksObtained</label>
      <div class="col-sm-10">
        <form:input path="marksObtained" cssClass="form-control"  placeholder="Enter MarksObtained" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Total Marks</label>
      <div class="col-sm-10">
        <form:input path="totalMarks" cssClass="form-control"  placeholder="Enter Total Marks" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >(CGPA/%)</label>
      <div class="col-sm-10">
        <form:input path="cgpaOrPercentange" cssClass="form-control"  placeholder="Enter (CGPA/%)"  />
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