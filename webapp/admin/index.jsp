<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>M.I.T. DATABASE</title>
<link rel="icon" type="image/x-icon" href="../img/mit_logo.png" />
<%@ include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card{
box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
} 
</style>

</head>
<body>
<%@ include file="navbar.jsp"%>


 <%
 
 response.setHeader("Cache-Control", "no-cache,no-store,must-validate");
 
 if(session.getAttribute("adminObj")==null)
	 response.sendRedirect("../admin.jsp");
 %>
 
 
				<div class="container p-5">
				<p class="text-center fs-3">Admin Dashboard</p>
				<div class="row">
					<div class="col-md-4">
						<div class="card paint-card">
							<div class="card-body text-center text-primary">
							<i class="fa-solid fa-database fa-3x"></i><br>
								<p class="fs-4 text-center">View Faculty Data</p>
								<a class="btn btn-primary" href="data_base.jsp" role="button">Go  <i class="fa-solid fa-location-arrow"></i></a>
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="card paint-card">
							<div class="card-body text-center text-primary">
							<i class="fa-solid fa-user-plus fa-3x"></i><br>
								<p class="fs-4 text-center">Add Faculty Data</p>
								<a class="btn btn-primary" href="faculty.jsp" role="button">Go  <i class="fa-solid fa-location-arrow"></i></a>
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<div class="card paint-card">
							<div class="card-body text-center text-primary">
							<i class="fa-solid fa-person-booth fa-3x"></i><br>
								<p class="fs-4 text-center">Change Admin</p>
								<a class="btn btn-primary" href="#" role="button">Go  <i class="fa-solid fa-location-arrow"></i></a>
							</div>
						</div>
					</div>
					
					<div class="col-md-4 mt-4">
						<div class="card paint-card">
							<div class="card-body text-center text-primary">
							<i class="fa-solid fa-user-minus fa-3x"></i><br>
								<p class="fs-4 text-center">Remove Faculty</p>
								<a class="btn btn-primary" href="#" role="button">Go  <i class="fa-solid fa-location-arrow"></i></a>
							</div>
						</div>
					</div>
					
					</div>
					
					</div>
					
					
					
</body>
<%@ include file="../component/footer.jsp"%>
</html>