<%@page import="java.util.LinkedList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.dao.all_fac1"%>
<%@ page import="com.dao.fac_list"%>
<%@ page import="java.util.LinkedList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>M.I.T. DATABASE</title>
<link rel="icon" type="image/x-icon" href="../img/mit_logo.png" />
<%@ include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<%@ include file="navbar.jsp"%>
	<%
 
 response.setHeader("Cache-Control", "no-cache,no-store,must-validate");
 
 if(session.getAttribute("adminObj")==null)
	 response.sendRedirect("../admin.jsp");
 %>
	<div class="container-fluid p-3">
		<div class="row">

			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center text-primary">FACULTY ID</p>

						<form action="../see_fac" method="post">
							<div class="mb-3">
								<p class="text-center">
									<label for="formGroupExampleInput"
										class="form-label text-dark text-center fs-2"
										style="font-family: 'Concert One', cursive;">Enter id</label>
								</p>
								<input type="text" required name="id" class="form-control">
							</div>
							<div class="mb-3">
								<p class="text-center">
									<label for="formGroupExampleInput"
										class="form-label text-danger text-center fs-2"
										style="font-family: 'Concert One', cursive;">:: Kindly
										fill id for view full information ::</label>
								</p>
							</div>

							<p class="text-center"><button type="submit" class="btn btn-primary">Submit</button></p>
						</form>
					</div>
				</div>
			</div>


			<div class="col-md-8">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center text-primary">FACULTY SUGGESTION</p>
						<table class="table">
							<thread>
							<tr>
								<th scope="col">Faculty ID</th>
								<th scope="col">NAME</th>
								<th scope="col">CONTACT</th>
							</tr>
							</thread>
							<tbody>
								<%
								all_fac1 af = new all_fac1();
								LinkedList<fac_list> list = af.all_fac();
								for (fac_list i : list) {
								%>
								<tr>
									<td><%=i.getId()%></td>
									<td><%=i.getName()%></td>
									<td><%=i.getContact()%></td>
								</tr>
								<%
								}
								%>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>


	</div>

</body>
<%@ include file="../component/footer.jsp"%>
</html>