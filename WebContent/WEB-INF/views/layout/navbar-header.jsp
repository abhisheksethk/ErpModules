<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="header">
     <h3 class="font">Society for Natural Language Technology Research</h3>
     <div id="header-bottomLine">
         <p >( A Registered Society Under Department of Information Technology and Electronics, Government of West Bengal )</p>
     </div>
      
     <div style="margin-top:20px">
         <img src="http://www.nltr.org/images/logo.png" alt="image" class="logo">
     </div>
</div>
<nav class="navbar navbar-inverse" style="margin-bottom:0px">
	<div class="container-fluid">
	 
	    <c:if test="${((sessionScope.serial !=0)&&((sessionScope.serial !=1)&&(sessionScope.serial !=2))) }">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">1
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${pageContext.request.contextPath}/">SNLTR</a>
		</div>
		</c:if>
		
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
			 
	       <c:if test="${((sessionScope.serial !=1)&&((sessionScope.serial !=0)&&(sessionScope.serial !=2))) }">
			   <li class="active"><a href="${pageContext.request.contextPath}/">Home</a></li>
			</c:if>
			 <c:if test="${(sessionScope.serial ==1)}">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Employee <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="${pageContext.request.contextPath}/empPerDetail/index">Add</a></li>
						<li><a href="${pageContext.request.contextPath}/empExpDetail/index">Employees</a></li>
					</ul>
				</li>
				<li><a href="#">Asset</a></li>
			</c:if>
			<c:if test="${(sessionScope.serial ==0)||(sessionScope.serial ==2) }">
			   <li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">EmpPersonalDetail <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="${pageContext.request.contextPath}/empPerDetail/new">Add EmpPersonalDetail</a></li>
						<li><a href="${pageContext.request.contextPath}/empPerDetail/show">Show EmpPersonalDetail</a></li>
					</ul>
				</li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">EmpExpDetail <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="${pageContext.request.contextPath}/empExpDetail/new">Add EmpExpDetail</a></li>
						<li><a href="${pageContext.request.contextPath}/empExpDetail/show">Show EmpExpDetail</a></li>
					</ul>
				</li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">EmpChildDetail<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="${pageContext.request.contextPath}/childDetail/new">Add EmpChildDetail</a></li>
						<li><a href="${pageContext.request.contextPath}/childDetail/show">Show EmpChildDetail</a></li>
					</ul>
				</li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">EmpAcadmicDetail<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="${pageContext.request.contextPath}/acadmicDetail/new">Add EmpAcadmicDetail</a></li>
						<li><a href="${pageContext.request.contextPath}/acadmicDetail/show">Show EmpAcadmicDetail</a></li>
					</ul>
				</li>
				</c:if>
				<c:if test="${sessionScope.serial==1 }">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">User <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="${pageContext.request.contextPath}/user/signUp">Add User</a></li>
					</ul>
				</li>
				</c:if>
			</ul>
			 <c:choose>
			<c:when test="${((sessionScope.serial !=0)&&(sessionScope.serial !=1)&&(sessionScope.serial !=2)) }">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="${pageContext.request.contextPath}/user/signIn"><span
						class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</ul>
		    </c:when>
		    <c:otherwise>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="${pageContext.request.contextPath}/user/signIn"><span
						class="glyphicon glyphicon-log-in"></span> Logout</a></li>
			</ul>
			</c:otherwise>
		</c:choose>
		</div>
	</div>
</nav>