<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"  %>
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

			<div class="col-md-5 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center text-primary">ADD A NEW FACULTY</p>

						<form action="../new_fac" method="post" enctype="multipart/form-data">
							<div class="col-md-4">
								<label for="validationServer01" class="form-label">Faculty
									I.D.</label> <input type="text" maxlength="20" pattern="^[0-9]*$"
									class="form-control" id="validationServer01" name="fac_id" required>
							</div>

							<div class="mb-3">
								<label class="form-label">Full Name</label> <input type="text"
									required name="fac_name" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Mob No</label> <input type="text"
									pattern="^\d{10}$" required name="fac_mob" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Email</label><span
									class="input-group-text" id="inputGroupPrepend">Example@xyz.com(Required Format)</span><input
									type="text" pattern="[a-zA-Z0-9.-_]{1,}@[a-zA-Z.-]{2,}[.]{1}[a-zA-Z]{2,}" required name="fac_mail"
									class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Date Of Joining</label> <input type="date"
									required name="fac_join" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Highest Qualification</label> <input required
									name="fac_qual" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Department</label> <select name="fac_dep"
									required class="form-control">
									<option>--select--</option>
									<option>Computer Science and Engineering</option>
									<option>Mechanical</option>
									<option>Electronics</option>
									<option>Electrical</option>
								</select>
							</div>
							
							<div class="mb-3">
								<label class="form-label">Subjects</label> <input required
									name="fac_sub" type="text" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input required
									name="fac_pass" type="password" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Upload Image</label> <input
									type="file" class="form-control" aria-label="file example"
									name="photo" id="photo" required>
								<div class="invalid-feedback">Example invalid form file
									feedback</div>
							</div>
							<div class="text-center">
								<img src="#" class="rounded" id="img_pre" alt="..."  style="width:120px;height:150px;">
							</div>

							<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
            $(document).ready(() => {
                $("#photo").change(function () {
                    const file = this.files[0];
                    if (file) {
                        let reader = new FileReader();
                        reader.onload = function (event) {
                            $("#img_pre")
                              .attr("src", event.target.result);
                        };
                        reader.readAsDataURL(file);
                    }
                });
            });
        </script>
<%@ include file="../component/footer.jsp"%>
</body>
</html>