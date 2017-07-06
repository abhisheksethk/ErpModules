<%@page import="org.apache.taglibs.standard.lang.jstl.test.PageContextImpl"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.text.* ,java.util.*"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
     <jsp:include page="../layout/bootstrapCdn&ExternalCSS&JavaScript.jsp" />
     <title>Employee Children Detail</title>
  </head>
  <body>
     <jsp:include page="../layout/navbar-header.jsp" />
 <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header" >
      <a  class="btn btn-success buttom-middle" href="new" role="button">AddChildDetail</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="#">View</a></li>
    </ul>
    <form class="navbar-form navbar-right">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
      </div>
      <button type="submit" class="btn btn-default">Submit</button>
    </form>
  </div>
</nav>
 
 <div class="container"> 
 <h2 class="text-center">Employee Child Details</h2>
 
  <table class="table table-hover table-bordered " id="footer-margin1">
     <thead class="thead-inverse">
      <tr>   
        <th>Child ID</th>
        <th>Serial</th>
        <th>ChildName</th>
        <th>Gender</th>
        <th>Date Of Birth</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
      
        <c:forEach var="temp" items="${childDetails}">
        <tr>
             <!-- construct an "update" link with childDetail id -->
				<c:url var="updateLink" value="/childDetail/update">
					<c:param name="childDetailId" value="${temp.childId}" />
				</c:url>
				<c:set var="DOB" value="${temp.DOB}" />
         <td>${temp.childId}</td>
		 <td>${temp.serial}</td>
		  <td>${temp.childName}</td>
		 <td>${temp.gender}</td>
		  <td><fmt:formatDate type="date" pattern="dd-MM-YYYY" value="${DOB}" /></td>
	     <td>
			<!-- display the update link --> <a href="${updateLink}">Update</a>
		</td>	
		</tr>  
        </c:forEach>
      
    </tbody>
  </table>
     <ul class="pager">
     <li ><a href="${pageContext.request.contextPath}/acadmicDetail/index">Previous</a></li>
      <li ><a href="${pageContext.request.contextPath}/user/index">Next</a></li>
      
      </ul> 
</div>
    <jsp:include page="../layout/footer.jsp" />
  </body>
  </html>