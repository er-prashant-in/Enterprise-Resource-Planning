<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="com.admin.servlet.see_fac" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="../component/allcss.jsp"%>
<title>M.I.T. DATABASE</title>
<link rel="icon" type="image/x-icon" href="../img/mit_logo.png" />
<link
	href="https://fonts.googleapis.com/css2?family=Great+Vibes&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@1,500&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Concert+One&display=swap"
	rel="stylesheet">
</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<%@ include file="navbar.jsp"%>
	<%
 
 response.setHeader("Cache-Control", "no-cache,no-store,must-validate");
 
 if(session.getAttribute("adminObj")==null)
	 response.sendRedirect("../admin.jsp");
 %>
 <% see_fac sf= new see_fac(); %>
	<div class="container-fluid p-3">
		<div class="row">

			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center text-primary">IMAGE</p>
						<img src="../sender/me.jpg" class="rounded mx-auto d-block"
							alt="..." style="width: 376px; height: 392px;">
						<p class="fs-3 text-center text-dark"
							style="font-family: 'Great Vibes', cursive;"><%=sf.getName() %></p>
						<p class="fs-3 text-center text-dark"><label
								class="text-dark "
								style="font-family: 'Poppins', sans-serif;">Department:</label>
							<label for="formGroupExampleInput"
								class="text-danger"
								style="font-family: 'Concert One', cursive;"><%=sf.getDept() %></label></p>	
					</div>
				</div>
			</div>


			<div class="col-md-8">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center text-primary">FACULTY INFORMATION</p>
						<div class="mb-3">
							<label for="formGroupExampleInput"
								class="form-label text-dark fs-2"
								style="font-family: 'Poppins', sans-serif;">Faculty Id:</label>
							<label for="formGroupExampleInput"
								class="form-label text-danger fs-2"
								style="font-family: 'Concert One', cursive;"><%=sf.getId() %></label>
						</div>
						<div class="mb-3">
							<label for="formGroupExampleInput"
								class="form-label text-dark fs-2"
								style="font-family: 'Poppins', sans-serif;">Name:</label> <label
								for="formGroupExampleInput" class="form-label text-danger fs-2"
								style="font-family: 'Concert One', cursive;"><%=sf.getName() %></label>
						</div>
						<div class="mb-3">
							<label for="formGroupExampleInput"
								class="form-label text-dark fs-2"
								style="font-family: 'Poppins', sans-serif;">Contact No:</label>
							<label for="formGroupExampleInput"
								class="form-label text-danger fs-2"
								style="font-family: 'Concert One', cursive;"><%=sf.getContact() %></label>
						</div>
						<div class="mb-3">
							<label for="formGroupExampleInput"
								class="form-label text-dark fs-2"
								style="font-family: 'Poppins', sans-serif;">E-mail:</label> <label
								for="formGroupExampleInput" class="form-label text-danger fs-2"
								style="font-family: 'Concert One', cursive;"><%=sf.getMail() %></label>
						</div>
						<div class="row gx-0">
							<div class="col">
								<label for="formGroupExampleInput"
								class="form-label text-dark fs-2"
								style="font-family: 'Poppins', sans-serif;">Achievement:</label> <label
								for="formGroupExampleInput" class="form-label text-danger fs-2"
								style="font-family: 'Concert One', cursive;"><%=sf.getAchieve() %></label>
							</div>
							<div class="col">
								<label for="formGroupExampleInput"
								class="form-label text-dark fs-2"
								style="font-family: 'Poppins', sans-serif;">Joining Date:</label> <label
								for="formGroupExampleInput" class="form-label text-danger fs-2"
								style="font-family: 'Concert One', cursive;"><%=sf.getDate() %></label>
							</div>
						</div>
						<div class="mb-3">
							<label for="formGroupExampleInput"
								class="form-label text-dark fs-2"
								style="font-family: 'Poppins', sans-serif;">Highest Qualification:</label> <label
								for="formGroupExampleInput" class="form-label text-danger fs-2"
								style="font-family: 'Concert One', cursive;"><%=sf.getQual() %></label>
						</div>
						<div class="mb-3">
							<label for="formGroupExampleInput"
								class="form-label text-dark fs-2"
								style="font-family: 'Poppins', sans-serif;">Specific Subject:</label> <label
								for="formGroupExampleInput" class="form-label text-danger fs-2"
								style="font-family: 'Concert One', cursive;"><%=sf.getSub() %></label>
						</div>
						
					</div>
				</div>
			</div>


		</div>

		<%@ include file="../component/footer.jsp"%>
</body>
</html>