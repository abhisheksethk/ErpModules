<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <jsp:include page="../layout/bootstrapCdn&ExternalCSS&JavaScript.jsp" />
<title>Employee Form</title>
</head>
<body>
   
    <jsp:include page="../layout/navbar-header.jsp" />
  <div class="container">
    <div class="panel panel-info">
  <div class="panel-heading" ><h3>Employee Personal Detail</h3></div>
  <div class="panel-body">
      <form:form cssClass="form-horizontal" action="save" modelAttribute="empPerDetail" method="POST">
     <form:hidden path="empId" />
  
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2 " >Employee Name</label>
      <div class="col-sm-4 col-sm-offset-1">
        <form:input path="empName" class="form-control" placeholder=" Employee Name"/>
        <form:errors path="empName" />
      </div>
    </div>
    <div class="form-group">
     <label class="control-label col-sm-2 col-sm-offset-2"  for="gender">Gender :</label>
      <div class="col-sm-4 col-sm-offset-1">
      <form:select  path="gender" class="form-control" id="gender">
        <option>Male</option>
        <option>Female</option>
        <option>Transgender</option>
      </form:select>
       <form:errors path="gender" />
        </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" >Father Name</label>
      <div class="col-sm-4 col-sm-offset-1">          
        <form:input path="fatherName" cssClass="form-control"  placeholder=" Father Name" />
        
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" >Mother Name</label>
      <div class="col-sm-4 col-sm-offset-1">
        <form:input path="motherName" cssClass="form-control"  placeholder=" Mother Name" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" for="martial" >Martial Status</label>
      <div class="col-sm-4 col-sm-offset-1">
         <form:select  path="martialStatus" class="form-control" id="martial">
        <option>Married</option>
        <option>Unmarried</option>
        </form:select>
         <form:errors path="martialStatus" />  
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" >Spouse Name</label>
      <div class="col-sm-4 col-sm-offset-1">
        <form:input path="spouseName" cssClass="form-control"  placeholder=" Spouse Name" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" for="children" >Children</label>
      <div class="col-sm-4 col-sm-offset-1">
      <form:select  path="children" class="form-control" id="children">
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
         <form:errors path="children" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" >Date Of Birth</label>
      <div class="col-sm-4 col-sm-offset-1">
        <form:input path="DOB" class="form-control date" placehoder="Date Of Birth" />
        <form:errors path="DOB" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" >Religion</label>
      <div class="col-sm-4 col-sm-offset-1">
        <form:input path="religion" cssClass="form-control"  placeholder="Religion" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" >Identification</label>
      <div class="col-sm-4 col-sm-offset-1">          
        <form:textarea path="identification" cssClass="form-control"  placeholder="Identification" />
        <form:errors path="identification" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" for="pwd">HighestQualification</label>
      <div class="col-sm-4 col-sm-offset-1">          
        <form:input path="highestQualification" cssClass="form-control"  placeholder="Highest Qualification" />
        <form:errors psth="highestQualification"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" >Designation</label>
      <div class="col-sm-4 col-sm-offset-1">
        <form:input path="designation" cssClass="form-control"  placeholder=" Designation" />
        <form:errors psth="designation"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" >Joining Date</label>
      <div class="col-sm-4 col-sm-offset-1">
        <form:input path="joiningDate" class="form-control date"  />
        <form:errors psth="joiningDate"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2">TotalWorkExp</label>
      <div class="col-sm-4 col-sm-offset-1">          
        <form:input path="totWorkExp" cssClass="form-control"  placeholder="Total Work Experience" />
         <form:errors psth="totWorkExp"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" for="pwd">StartingScale Pay</label>
      <div class="col-sm-4 col-sm-offset-1">          
        <form:input path="startingScalePay" cssClass="form-control"  placeholder=" StartingScale Pay" />
        <form:errors psth="startingScalePay"/>  
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" >StartingGross Pay</label>
      <div class="col-sm-4 col-sm-offset-1">
        <form:input path="startingGrossPay" cssClass="form-control"  placeholder=" Starting GrossPay" />
        <form:errors psth="startingGrossPay"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" for="email">CurrentScale Pay</label>
      <div class="col-sm-4 col-sm-offset-1">
        <form:input path="currentScalePay" cssClass="form-control"  placeholder=" Current ScalePay" />
        <form:errors psth="currentScalePay"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" for="pwd">CurrentGross Pay</label>
      <div class="col-sm-4 col-sm-offset-1">          
        <form:input path="currentGrossPay" cssClass="form-control"  placeholder="Current GrossPay" />
        <form:errors psth="currentGrossPay"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" for="pwd">BankDetails</label>
      <div class="col-sm-4 col-sm-offset-1">          
        <form:textarea path="bankDetail" cssClass="form-control"  placeholder=" Bank Details" />
        <form:errors psth="bankDetail"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" for="email">MobileNumber</label>
      <div class="col-sm-4 col-sm-offset-1">
        <form:input path="contactNumber" cssClass="form-control"  placeholder="Mobile Number" />
         <form:errors psth="contactNumber"/>
      </div>
    </div>

    <div class="form-group">
      <label class="control-label col-sm-2 col-sm-offset-2" for="pwd">Address</label>
      <div class="col-sm-4 col-sm-offset-1">          
        <form:textarea path="address" cssClass="form-control"  placeholder="Enter Address Details" />
        <form:errors psth="address"/>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-success">Submit</button>
      </div>
    </div>
    <ul class="pager">
      <li ><a href="${pageContext.request.contextPath}/empExpDetail/new">Next</a></li>
      </ul>
  </form:form>
   </div>
</div>
</div>
    
    <jsp:include page="../layout/footer.jsp" /> 
</body>
</html>