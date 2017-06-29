
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <jsp:include page="../layout/bootstrapCdn&ExternalCSS&JavaScript.jsp" />
<title>Employee Form</title>
</head>
<body>
   
    <jsp:include page="../layout/empIndexheader.jsp" />
  <div class="container">
  <h2>Employee Personal Detail</h2>
  <form:form cssClass="form-horizontal" action="save" modelAttribute="empPerDetail" method="POST">
  <form:hidden path="empId" />
    <div class="form-group">
      <label class="control-label col-sm-2" >Employee Name</label>
      <div class="col-sm-10">
        <form:input path="empName" placeholder="Enter Employee Name"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Gender</label>
      <div class="col-sm-10">          
        <form:input path="gender" cssClass="form-control"  placeholder="Enter Gender" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Father Name</label>
      <div class="col-sm-10">          
        <form:input path="fatherName" cssClass="form-control"  placeholder="Enter Father Name" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Mother Name</label>
      <div class="col-sm-10">
        <form:input path="motherName" cssClass="form-control"  placeholder="Enter Mother Name" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Martial Status</label>
      <div class="col-sm-10">
        <form:input path="martialStatus" cssClass="form-control"  placeholder="Martial Status" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Spouse Name</label>
      <div class="col-sm-10">
        <form:input path="spouseName" cssClass="form-control"  placeholder="Enter Spouse Name" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Children</label>
      <div class="col-sm-10">
        <form:input path="children" cssClass="form-control"  placeholder="Enter Children Number" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Date Of Birth</label>
      <div class="col-sm-10">
        <form:input path="DOB" class="date"  />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Religion</label>
      <div class="col-sm-10">
        <form:input path="religion" cssClass="form-control"  placeholder="Enter Religion" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Identification</label>
      <div class="col-sm-10">          
        <form:textarea path="identification" cssClass="form-control"  placeholder="Enter Identification" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">HighestQualification</label>
      <div class="col-sm-10">          
        <form:input path="highestQualification" cssClass="form-control"  placeholder="Enter Highest Qualification" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Designation</label>
      <div class="col-sm-10">
        <form:input path="designation" cssClass="form-control"  placeholder="Enter Designation" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Joining Date</label>
      <div class="col-sm-10">
        <form:input path="joiningDate" class="date"  />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2">TotalWorkExp</label>
      <div class="col-sm-10">          
        <form:input path="totWorkExp" cssClass="form-control"  placeholder="Enter Total Work Experience" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">StartingScale Pay</label>
      <div class="col-sm-10">          
        <form:input path="startingScalePay" cssClass="form-control"  placeholder="Enter StartingScale Pay" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >StartingGross Pay</label>
      <div class="col-sm-10">
        <form:input path="startingGrossPay" cssClass="form-control"  placeholder="Enter Starting Gross Pay" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">CurrentScale Pay</label>
      <div class="col-sm-10">
        <form:input path="currentScalePay" cssClass="form-control"  placeholder="Enter Current Scale Pay" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">CurrentGross Pay</label>
      <div class="col-sm-10">          
        <form:input path="currentGrossPay" cssClass="form-control"  placeholder="Enter Current Gross Pay" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">BankDetails</label>
      <div class="col-sm-10">          
        <form:textarea path="bankDetail" cssClass="form-control"  placeholder="Enter Bank Details" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">MobileNumber</label>
      <div class="col-sm-10">
        <form:input path="contactNumber" cssClass="form-control"  placeholder="Enter Mobile Number" />
      </div>
    </div>

    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Address</label>
      <div class="col-sm-10">          
        <form:textarea path="address" cssClass="form-control"  placeholder="Enter Address Details" />
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